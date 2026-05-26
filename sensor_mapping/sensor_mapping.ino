// ============================================================
//  12-bit Sensor → 8-bit PWM  |  Smoothing + Mapping Curves
//  Board: Any Arduino (Uno, Mega, Nano, etc.)
//  Sensor input : A0  (12-bit on Due/Zero; 10-bit boards see note)
//  PWM output   : Pin 9
// ============================================================
//
//  NOTE – 10-bit boards (Uno, Nano, Mega):
//    The ADC natively returns 0-1023.  Shift it left by 2 to
//    simulate 12-bit range:  rawValue = analogRead(A0) << 2;
//    On Due / Zero call analogReadResolution(12) in setup().
// ============================================================

#include <math.h>

// ---------- pin & resolution config ------------------------
const int SENSOR_PIN  = A0;
const int PWM_PIN     = 9;

const int  ADC_BITS   = 12;               // 12-bit input  (0-4095)
const int  PWM_BITS   = 8;                // 8-bit output  (0-255)
const long ADC_MAX    = (1L << ADC_BITS) - 1;   // 4095
const int  PWM_MAX    = (1  << PWM_BITS) - 1;   // 255

// ---------- smoothing config --------------------------------
// Exponential Moving Average  →  alpha ∈ (0,1]
//   high alpha = fast response, less smoothing
//   low  alpha = slow response, heavy smoothing
const float EMA_ALPHA = 0.1f;

// Moving-average window size (for the MA smoother demo)
const int   MA_WINDOW = 16;

// ---------- curve selection ---------------------------------
enum CurveType {
  CURVE_LINEAR = 0,
  CURVE_GAMMA,        // power-law / gamma correction
  CURVE_LOGARITHMIC,
  CURVE_EXPONENTIAL,
  CURVE_S_CURVE,      // cubic sigmoid
  CURVE_SQUARE_ROOT,
  CURVE_COUNT
};

// Change this at compile-time to select the active curve:
CurveType activeCurve = CURVE_GAMMA;

// Gamma value used by CURVE_GAMMA (2.2 = sRGB-like, <1 = inverse)
const float GAMMA = 2.2f;

// ============================================================
//  SMOOTHING ALGORITHMS
// ============================================================

// --- 1. Exponential Moving Average (EMA) --------------------
//  Lightweight, single variable, tunable via alpha.
float emaSmooth(float newSample, float& state) {
  state = EMA_ALPHA * newSample + (1.0f - EMA_ALPHA) * state;
  return state;
}

// --- 2. Simple Moving Average (SMA) -------------------------
//  Circular buffer; equal weight over the last N samples.
float maBuffer[MA_WINDOW] = {0};
int   maIndex = 0;
float maSum   = 0;

float maSmooth(float newSample) {
  maSum -= maBuffer[maIndex];
  maBuffer[maIndex] = newSample;
  maSum += newSample;
  maIndex = (maIndex + 1) % MA_WINDOW;
  return maSum / MA_WINDOW;
}

// --- 3. Median Filter (3-tap) --------------------------------
//  Removes impulse spikes; best for noisy sensors.
float medianFilter3(float newSample) {
  static float buf[3] = {0, 0, 0};
  static int   idx    = 0;
  buf[idx] = newSample;
  idx = (idx + 1) % 3;

  float a = buf[0], b = buf[1], c = buf[2];
  // Sort network for 3 elements
  if (a > b) { float t = a; a = b; b = t; }
  if (b > c) { float t = b; b = c; c = t; }
  if (a > b) { float t = a; a = b; b = t; }
  return b; // middle value
}

// ============================================================
//  MAPPING CURVES   (input: 0.0–1.0 → output: 0.0–1.0)
// ============================================================

// --- 1. Linear ----------------------------------------------
//  Direct 1:1 mapping.  No transformation.
float curveLinear(float x) {
  return x;
}

// --- 2. Gamma (power-law) -----------------------------------
//  GAMMA > 1 : highlights compressed, shadows expanded
//  GAMMA < 1 : inverse – useful for LED perceived brightness
float curveGamma(float x) {
  return powf(x, GAMMA);
}

// --- 3. Logarithmic -----------------------------------------
//  Expands low-end resolution; compresses high end.
//  Human hearing/touch perception is roughly logarithmic.
float curveLogarithmic(float x) {
  // log(1) = 0, scaled so log(1+1) maps to 1
  return logf(1.0f + x * (M_E - 1.0f)) / 1.0f;
}

// --- 4. Exponential -----------------------------------------
//  Compresses low end; expands high end.
//  Good for "snappy" response near max.
float curveExponential(float x) {
  return (expf(x) - 1.0f) / (M_E - 1.0f);
}

// --- 5. S-Curve (smooth-step / cubic sigmoid) ---------------
//  Gentle at both extremes, steep in the middle.
//  Natural-feeling, avoids hard clamping artefacts.
float curveSCurve(float x) {
  // smoothstep: 3x² - 2x³
  return x * x * (3.0f - 2.0f * x);
}

// --- 6. Square-root ------------------------------------------
//  Milder than log; lifts mid-range.
float curveSquareRoot(float x) {
  return sqrtf(x);
}

// ============================================================
//  DISPATCHER
// ============================================================
float applyMappingCurve(float normalised, CurveType curve) {
  switch (curve) {
    case CURVE_LINEAR:      return curveLinear(normalised);
    case CURVE_GAMMA:       return curveGamma(normalised);
    case CURVE_LOGARITHMIC: return curveLogarithmic(normalised);
    case CURVE_EXPONENTIAL: return curveExponential(normalised);
    case CURVE_S_CURVE:     return curveSCurve(normalised);
    case CURVE_SQUARE_ROOT: return curveSquareRoot(normalised);
    default:                return normalised;
  }
}

// ============================================================
//  UTILITY
// ============================================================
// Clamp a float to [0, 1]
inline float clamp01(float v) {
  return v < 0.0f ? 0.0f : (v > 1.0f ? 1.0f : v);
}

// ============================================================
//  SETUP
// ============================================================
void setup() {
  Serial.begin(115200);

  // On Due / Zero uncomment the next line for true 12-bit ADC:
  // analogReadResolution(12);

  pinMode(PWM_PIN, OUTPUT);

  Serial.println(F("=== Sensor Mapping Demo ==="));
  Serial.print(F("Curve: "));
  const char* names[] = {
    "Linear", "Gamma", "Logarithmic",
    "Exponential", "S-Curve", "Square Root"
  };
  Serial.println(names[activeCurve]);
}

// ============================================================
//  MAIN LOOP
// ============================================================
static float emaState = 0.0f;

void loop() {
  // 1. Read raw ADC value
  int rawADC = analogRead(SENSOR_PIN);

  // Simulate 12-bit on 10-bit boards (comment out on Due/Zero):
  rawADC = rawADC << 2;   // 0-1023 → 0-4092

  // 2. Normalise to 0.0 – 1.0
  float normalised = (float)rawADC / (float)ADC_MAX;

  // 3. Apply smoothing  (choose one or chain them)
  float smoothed = emaSmooth(normalised, emaState);
  // float smoothed = maSmooth(normalised);
  // float smoothed = medianFilter3(normalised);

  // 4. Apply mapping curve
  float mapped = applyMappingCurve(clamp01(smoothed), activeCurve);

  // 5. Scale to 8-bit PWM range and output
  int pwmValue = (int)(clamp01(mapped) * PWM_MAX + 0.5f);
  analogWrite(PWM_PIN, pwmValue);

  // 6. Serial monitor (remove or reduce in production)
  Serial.print(F("RAW: "));   Serial.print(rawADC);
  Serial.print(F("  EMA: ")); Serial.print(smoothed, 4);
  Serial.print(F("  MAP: ")); Serial.print(mapped,   4);
  Serial.print(F("  PWM: ")); Serial.println(pwmValue);

  delay(10); // ~100 Hz update rate
}
