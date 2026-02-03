{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 105.0, 1642.0, 973.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 744.5, 666.0, 62.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 744.5, 666.0, 62.0, 20.0 ],
                    "text": "Sensor B"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 611.0, 666.0, 62.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 611.0, 666.0, 62.0, 20.0 ],
                    "text": "Sensor A"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 648.0, 247.0, 55.0, 22.0 ],
                    "text": "r polarity"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1523.5, 10.0, 45.0, 22.0 ],
                    "text": "r b_led"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1477.0, 10.0, 45.0, 22.0 ],
                    "text": "r g_led"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1430.0, 10.0, 43.0, 22.0 ],
                    "text": "r r_led"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.0, 469.0, 103.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 226.5, 70.0, 103.0, 20.0 ],
                    "text": "Invert Sensor B"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 380.0, 467.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 190.5, 68.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 519.0, 81.0, 22.0 ],
                    "text": "prepend /invb"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 680.0, 391.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 680.0, 391.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 680.0, 425.0, 82.0, 22.0 ],
                    "text": "prepend /stop"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 478.0, 387.0, 103.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 67.0, 67.0, 103.0, 20.0 ],
                    "text": "Invert Sensor A"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 442.0, 385.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 33.0, 65.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.5, 430.0, 81.0, 22.0 ],
                    "text": "prepend /inva"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1052.0, 69.0, 49.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1052.0, 69.0, 49.0, 22.0 ],
                    "text": "r pwmA"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 611.0, 726.0, 62.0, 22.0 ],
                    "text": "s sensorA"
                }
            },
            {
                "box": {
                    "id": "obj-223",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1907.0, 500.0, 79.0, 35.0 ],
                    "text": "prepend /store_preset"
                }
            },
            {
                "box": {
                    "id": "obj-224",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1897.0, 333.0, 133.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1897.0, 333.0, 133.0, 20.0 ],
                    "text": "STORE PRESET"
                }
            },
            {
                "box": {
                    "id": "obj-225",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 467.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 467.0, 18.0, 20.0 ],
                    "text": "8"
                }
            },
            {
                "box": {
                    "id": "obj-226",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 453.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 453.0, 18.0, 20.0 ],
                    "text": "7"
                }
            },
            {
                "box": {
                    "id": "obj-227",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 437.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 437.0, 18.0, 20.0 ],
                    "text": "6"
                }
            },
            {
                "box": {
                    "id": "obj-228",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 421.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 421.0, 18.0, 20.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "id": "obj-229",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 405.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 405.0, 18.0, 20.0 ],
                    "text": "4"
                }
            },
            {
                "box": {
                    "id": "obj-230",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 388.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 388.0, 18.0, 20.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "obj-231",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 372.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 372.0, 18.0, 20.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-232",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 357.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 357.0, 18.0, 20.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "disabled": [ 0, 0, 0, 0, 0, 0, 0, 0 ],
                    "id": "obj-233",
                    "itemtype": 0,
                    "maxclass": "radiogroup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1907.0, 357.0, 18.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1907.0, 357.0, 18.0, 130.0 ],
                    "size": 8,
                    "value": 0
                }
            },
            {
                "box": {
                    "id": "obj-222",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1907.0, 219.0, 93.0, 22.0 ],
                    "text": "prepend /preset"
                }
            },
            {
                "box": {
                    "id": "obj-209",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1897.0, 52.0, 133.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1897.0, 52.0, 133.0, 20.0 ],
                    "text": "LOAD PRESET"
                }
            },
            {
                "box": {
                    "id": "obj-210",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 186.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 186.0, 18.0, 20.0 ],
                    "text": "8"
                }
            },
            {
                "box": {
                    "id": "obj-211",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 172.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 172.0, 18.0, 20.0 ],
                    "text": "7"
                }
            },
            {
                "box": {
                    "id": "obj-212",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 156.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 156.0, 18.0, 20.0 ],
                    "text": "6"
                }
            },
            {
                "box": {
                    "id": "obj-213",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 140.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 140.0, 18.0, 20.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "id": "obj-214",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 124.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 124.0, 18.0, 20.0 ],
                    "text": "4"
                }
            },
            {
                "box": {
                    "id": "obj-215",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 107.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 107.0, 18.0, 20.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "obj-216",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 91.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 91.0, 18.0, 20.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-217",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1927.0, 76.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1927.0, 76.0, 18.0, 20.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "disabled": [ 0, 0, 0, 0, 0, 0, 0, 0 ],
                    "id": "obj-218",
                    "itemtype": 0,
                    "maxclass": "radiogroup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1907.0, 76.0, 18.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1907.0, 76.0, 18.0, 130.0 ],
                    "size": 8,
                    "value": 0
                }
            },
            {
                "box": {
                    "fontsize": 64.0,
                    "id": "obj-208",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 825.0, 374.0, 78.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 825.0, 374.0, 78.0 ],
                    "text": "Monitor Side"
                }
            },
            {
                "box": {
                    "fontsize": 64.0,
                    "id": "obj-207",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 369.0, 374.0, 78.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 513.0, 374.0, 78.0 ],
                    "text": "Control Side"
                }
            },
            {
                "box": {
                    "id": "obj-203",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1726.0, 34.0, 103.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1726.0, 34.0, 103.0, 20.0 ],
                    "text": "Enable Knob"
                }
            },
            {
                "box": {
                    "id": "obj-204",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1690.0, 32.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1690.0, 32.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-205",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1690.0, 84.0, 128.0, 22.0 ],
                    "text": "prepend /enable_knob"
                }
            },
            {
                "box": {
                    "id": "obj-202",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 912.0, 184.0, 84.0, 22.0 ],
                    "text": "prepend /level"
                }
            },
            {
                "box": {
                    "id": "obj-191",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 902.0, 28.0, 53.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 902.0, 28.0, 53.0, 20.0 ],
                    "text": "LEVEL"
                }
            },
            {
                "box": {
                    "id": "obj-192",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 932.0, 162.0, 18.0, 20.0 ],
                    "text": "8"
                }
            },
            {
                "box": {
                    "id": "obj-193",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 932.0, 148.0, 18.0, 20.0 ],
                    "text": "7"
                }
            },
            {
                "box": {
                    "id": "obj-194",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 932.0, 132.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 932.0, 132.0, 18.0, 20.0 ],
                    "text": "6"
                }
            },
            {
                "box": {
                    "id": "obj-195",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 932.0, 116.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 932.0, 116.0, 18.0, 20.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "id": "obj-196",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 932.0, 100.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 932.0, 100.0, 18.0, 20.0 ],
                    "text": "4"
                }
            },
            {
                "box": {
                    "id": "obj-197",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 932.0, 83.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 932.0, 83.0, 18.0, 20.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "obj-198",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 932.0, 67.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 932.0, 67.0, 18.0, 20.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-199",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 932.0, 52.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 932.0, 52.0, 18.0, 20.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "disabled": [ 0, 0, 0, 0, 0, 0, 0, 0 ],
                    "id": "obj-200",
                    "itemtype": 0,
                    "maxclass": "radiogroup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 912.0, 52.0, 18.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 912.0, 52.0, 18.0, 130.0 ],
                    "size": 8,
                    "value": 0
                }
            },
            {
                "box": {
                    "id": "obj-190",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1300.0, 727.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1300.0, 727.0, 75.0, 20.0 ],
                    "text": "Max PWM B"
                }
            },
            {
                "box": {
                    "id": "obj-189",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1172.0, 727.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1172.0, 727.0, 75.0, 20.0 ],
                    "text": "Max PWM A"
                }
            },
            {
                "box": {
                    "id": "obj-188",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 937.0, 799.0, 53.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 937.0, 799.0, 53.0, 20.0 ],
                    "text": "LEVEL"
                }
            },
            {
                "box": {
                    "id": "obj-186",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1041.5, 765.0, 61.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1041.5, 765.0, 61.0, 20.0 ],
                    "text": "MODUS"
                }
            },
            {
                "box": {
                    "id": "obj-185",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 779.5, 27.0, 61.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 779.5, 27.0, 61.0, 20.0 ],
                    "text": "MODUS"
                }
            },
            {
                "box": {
                    "id": "obj-183",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 953.0, 883.0, 92.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 953.0, 883.0, 92.0, 20.0 ],
                    "text": "Enable debug"
                }
            },
            {
                "box": {
                    "id": "obj-182",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 751.0, 903.0, 49.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 751.0, 903.0, 49.0, 20.0 ],
                    "text": "PWM B"
                }
            },
            {
                "box": {
                    "id": "obj-181",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 626.0, 903.0, 49.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 626.0, 903.0, 49.0, 20.0 ],
                    "text": "PWM A"
                }
            },
            {
                "box": {
                    "id": "obj-180",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 459.5, 663.0, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 459.5, 663.0, 47.0, 20.0 ],
                    "text": "Filter B"
                }
            },
            {
                "box": {
                    "id": "obj-179",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 351.0, 663.0, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 351.0, 663.0, 47.0, 20.0 ],
                    "text": "Filter A"
                }
            },
            {
                "box": {
                    "id": "obj-178",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 256.0, 765.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 256.0, 765.0, 86.0, 20.0 ],
                    "text": "Min Sensor B"
                }
            },
            {
                "box": {
                    "id": "obj-177",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 109.0, 765.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 109.0, 765.0, 86.0, 20.0 ],
                    "text": "Min Sensor A"
                }
            },
            {
                "box": {
                    "id": "obj-176",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 249.0, 638.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 249.0, 638.0, 86.0, 20.0 ],
                    "text": "Max Sensor B"
                }
            },
            {
                "box": {
                    "id": "obj-175",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 105.0, 638.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 105.0, 638.0, 86.0, 20.0 ],
                    "text": "Max Sensor A"
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 489.0, 37.0, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 236.0, 262.0, 47.0, 20.0 ],
                    "text": "Filter B"
                }
            },
            {
                "box": {
                    "id": "obj-173",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 367.0, 37.0, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 72.0, 262.0, 47.0, 20.0 ],
                    "text": "Filter A"
                }
            },
            {
                "box": {
                    "id": "obj-171",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 229.0, 185.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 235.0, 188.0, 86.0, 20.0 ],
                    "text": "Min Sensor B"
                }
            },
            {
                "box": {
                    "id": "obj-170",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 76.0, 185.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 82.0, 188.0, 86.0, 20.0 ],
                    "text": "Max Sensor B"
                }
            },
            {
                "box": {
                    "id": "obj-169",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 229.0, 34.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 235.0, 113.0, 86.0, 20.0 ],
                    "text": "Min Sensor A"
                }
            },
            {
                "box": {
                    "id": "obj-168",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 70.5, 34.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 76.0, 113.0, 86.0, 20.0 ],
                    "text": "Max Sensor A"
                }
            },
            {
                "box": {
                    "id": "obj-166",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 458.0, 637.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 458.0, 637.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-165",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.5, 637.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 349.5, 637.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 458.0, 583.0, 95.0, 22.0 ],
                    "text": "route /setfilter_b"
                }
            },
            {
                "box": {
                    "id": "obj-162",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 349.5, 583.0, 95.0, 22.0 ],
                    "text": "route /setfilter_a"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 442.0, 77.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 189.0, 297.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-160",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 442.0, 27.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 189.0, 252.0, 40.0, 40.0 ],
                    "size": 100.0
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 442.0, 113.0, 111.0, 22.0 ],
                    "text": "prepend /setfilter_b"
                }
            },
            {
                "box": {
                    "id": "obj-158",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 325.0, 77.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 297.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-156",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 325.0, 27.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 252.0, 40.0, 40.0 ],
                    "size": 100.0
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 325.0, 113.0, 111.0, 22.0 ],
                    "text": "prepend /setfilter_a"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 773.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 966.0, 773.0, 18.0, 20.0 ],
                    "text": "8"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 759.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 966.0, 759.0, 18.0, 20.0 ],
                    "text": "7"
                }
            },
            {
                "box": {
                    "id": "obj-151",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 743.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 966.0, 743.0, 18.0, 20.0 ],
                    "text": "6"
                }
            },
            {
                "box": {
                    "id": "obj-150",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 727.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 966.0, 727.0, 18.0, 20.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 711.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 966.0, 711.0, 18.0, 20.0 ],
                    "text": "4"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 694.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 966.0, 694.0, 18.0, 20.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 678.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 966.0, 678.0, 18.0, 20.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 966.0, 663.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 966.0, 663.0, 18.0, 20.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "disabled": [ 0, 0, 0, 0, 0, 0, 0, 0 ],
                    "id": "obj-144",
                    "itemtype": 0,
                    "maxclass": "radiogroup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 946.0, 663.0, 18.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 946.0, 663.0, 18.0, 130.0 ],
                    "size": 8,
                    "value": 4
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 197.0, 764.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 197.0, 764.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 197.0, 710.0, 118.0, 22.0 ],
                    "text": "route /min_sensor_b"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 53.0, 764.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 53.0, 764.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 53.0, 710.0, 118.0, 22.0 ],
                    "text": "route /min_sensor_a"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 197.0, 637.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 197.0, 637.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 197.0, 583.0, 121.0, 22.0 ],
                    "text": "route /max_sensor_b"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 53.0, 637.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 53.0, 637.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 53.0, 583.0, 121.0, 22.0 ],
                    "text": "route /max_sensor_a"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 183.0, 230.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 189.0, 223.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 183.0, 176.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 189.0, 179.0, 40.0, 40.0 ],
                    "size": 4096.0
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 183.0, 262.0, 135.0, 22.0 ],
                    "text": "prepend /min_sensor_b"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 230.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 223.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 176.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 179.0, 40.0, 40.0 ],
                    "size": 4096.0
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 262.0, 138.0, 22.0 ],
                    "text": "prepend /max_sensor_b"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 183.0, 81.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 189.0, 150.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 183.0, 27.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 189.0, 106.0, 40.0, 40.0 ],
                    "size": 4096.0
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 183.0, 113.0, 135.0, 22.0 ],
                    "text": "prepend /min_sensor_a"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 81.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 150.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 27.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 106.0, 40.0, 40.0 ],
                    "size": 4096.0
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 113.0, 138.0, 22.0 ],
                    "text": "prepend /max_sensor_a"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1342.0, 94.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1342.0, 94.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1212.0, 94.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1212.0, 94.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 937.0, 908.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 937.0, 908.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 937.0, 853.0, 76.0, 22.0 ],
                    "text": "route /debug"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1120.0, 215.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1120.0, 215.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1003.0, 215.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1003.0, 215.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 450.5, 218.0, 92.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 395.0, 30.0, 92.0, 20.0 ],
                    "text": "Enable debug"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 420.5, 216.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 365.0, 28.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.5, 254.0, 93.0, 22.0 ],
                    "text": "prepend /debug"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "ignoreclick": 1,
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 812.0, 887.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 812.0, 887.0, 40.0, 40.0 ],
                    "size": 256.0
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 812.0, 853.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 812.0, 853.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 817.0, 816.0, 81.0, 22.0 ],
                    "text": "route /pwm_b"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "ignoreclick": 1,
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 685.0, 887.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 685.0, 887.0, 40.0, 40.0 ],
                    "size": 256.0
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 685.0, 853.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 685.0, 853.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 690.0, 816.0, 81.0, 22.0 ],
                    "text": "route /pwm_a"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 632.0, 219.0, 113.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 442.0, 432.0, 113.0, 20.0 ],
                    "text": "Set polarity PWM A"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 611.0, 120.0, 103.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 225.0, 30.0, 103.0, 20.0 ],
                    "text": "Enable Sensor B"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 611.0, 27.0, 103.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 67.0, 30.0, 103.0, 20.0 ],
                    "text": "Enable Sensor A"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1343.0, 27.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1343.0, 27.0, 75.0, 20.0 ],
                    "text": "Max PWM B"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1194.0, 27.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1194.0, 27.0, 75.0, 20.0 ],
                    "text": "Max PWM A"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1114.0, 28.0, 49.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1114.0, 28.0, 49.0, 20.0 ],
                    "text": "PWM B"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1003.0, 28.0, 49.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1003.0, 28.0, 49.0, 20.0 ],
                    "text": "PWM A"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1120.0, 69.0, 20.0, 140.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1120.0, 69.0, 20.0, 140.0 ],
                    "size": 255.0
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1003.0, 69.0, 20.0, 140.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1003.0, 69.0, 20.0, 140.0 ],
                    "size": 255.0
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1342.0, 49.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1342.0, 49.0, 40.0, 40.0 ],
                    "size": 256.0
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1342.0, 124.0, 121.0, 22.0 ],
                    "text": "prepend /max_pwmb"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1212.0, 49.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1212.0, 49.0, 40.0, 40.0 ],
                    "size": 256.0
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1212.0, 124.0, 121.0, 22.0 ],
                    "text": "prepend /max_pwma"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1300.0, 699.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1300.0, 699.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1178.0, 699.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1178.0, 699.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1300.0, 654.0, 104.0, 22.0 ],
                    "text": "route /max_pwmb"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1178.0, 654.0, 104.0, 22.0 ],
                    "text": "route /max_pwma"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1545.0, 28.0, 79.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 379.0, 70.0, 79.0, 20.0 ],
                    "text": "RGB LED"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1592.0, 54.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 426.0, 96.0, 18.0, 20.0 ],
                    "text": "B"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1565.0, 54.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 399.0, 96.0, 18.0, 20.0 ],
                    "text": "G"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1536.0, 54.0, 18.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 370.0, 96.0, 18.0, 20.0 ],
                    "text": "R"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1592.0, 87.0, 20.0, 140.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 426.0, 129.0, 20.0, 140.0 ],
                    "size": 255.0
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1563.0, 87.0, 20.0, 140.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 397.0, 129.0, 20.0, 140.0 ],
                    "size": 255.0
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1535.0, 87.0, 20.0, 140.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 369.0, 129.0, 20.0, 140.0 ],
                    "size": 255.0
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 827.0, 116.0, 61.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 827.0, 116.0, 61.0, 20.0 ],
                    "text": "Vibration"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 828.0, 83.0, 59.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 828.0, 83.0, 59.0, 20.0 ],
                    "text": "Solenoid"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 830.0, 52.0, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 830.0, 52.0, 47.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 828.0, 67.0, 50.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 828.0, 67.0, 50.0, 20.0 ],
                    "text": "Peltier"
                }
            },
            {
                "box": {
                    "disabled": [ 0, 0, 0, 0, 0 ],
                    "id": "obj-63",
                    "itemtype": 0,
                    "maxclass": "radiogroup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 801.0, 52.0, 18.0, 82.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 801.0, 52.0, 18.0, 82.0 ],
                    "size": 5,
                    "value": 0
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1078.0, 737.0, 61.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1078.0, 737.0, 61.0, 20.0 ],
                    "text": "Vibration"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1079.0, 704.0, 59.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1079.0, 704.0, 59.0, 20.0 ],
                    "text": "Solenoid"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1080.0, 673.0, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1080.0, 673.0, 47.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1079.0, 688.0, 50.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1079.0, 688.0, 50.0, 20.0 ],
                    "text": "Peltier"
                }
            },
            {
                "box": {
                    "disabled": [ 0, 0, 0, 0, 0 ],
                    "id": "obj-41",
                    "ignoreclick": 1,
                    "itemtype": 0,
                    "maxclass": "radiogroup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1052.0, 673.0, 18.0, 82.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1052.0, 673.0, 18.0, 82.0 ],
                    "size": 5,
                    "value": 1
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 575.0, 118.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 189.0, 28.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 575.0, 170.0, 151.0, 22.0 ],
                    "text": "prepend /enable_sensor_b"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 575.0, 25.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 31.0, 28.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 575.0, 77.0, 151.0, 22.0 ],
                    "text": "prepend /enable_sensor_a"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 801.0, 184.0, 89.0, 22.0 ],
                    "text": "prepend /mode"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 602.0, 217.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 412.0, 430.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 602.0, 279.0, 98.0, 22.0 ],
                    "text": "prepend /polarity"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "ignoreclick": 1,
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 806.0, 708.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 806.0, 708.0, 40.0, 40.0 ],
                    "size": 4096.0
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 806.0, 665.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 806.0, 665.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "ignoreclick": 1,
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 685.0, 708.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 685.0, 708.0, 40.0, 40.0 ],
                    "size": 4096.0
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 685.0, 665.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 685.0, 665.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1052.0, 624.0, 73.0, 22.0 ],
                    "text": "route /mode"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 948.0, 624.0, 67.0, 22.0 ],
                    "text": "route /level"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 806.0, 624.0, 92.0, 22.0 ],
                    "text": "route /sensor_b"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 685.0, 624.0, 92.0, 22.0 ],
                    "text": "route /sensor_a"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 575.0, 560.0000166893005, 189.0, 23.0 ],
                    "text": "print receivedmess @popup 1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 562.0, 500.0, 97.0, 22.0 ],
                    "text": "udpreceive 9999"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1477.0, 97.0, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1535.0, 364.0, 77.0, 22.0 ],
                    "text": "prepend /rgb"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1535.0, 330.0, 64.0, 22.0 ],
                    "text": "pack 0 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1120.0, 247.0, 98.0, 22.0 ],
                    "text": "prepend /pwm_b"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1003.0, 247.0, 98.0, 22.0 ],
                    "text": "prepend /pwm_a"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 751.0, 217.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 751.0, 279.0, 75.0, 22.0 ],
                    "text": "prepend /led"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 751.0, 380.0, 170.0, 22.0 ],
                    "text": "udpsend 192.168.50.117 8888"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 689.5, 450.0, 666.0, 450.0, 666.0, 375.0, 760.5, 375.0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 430.0, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 33.5, 162.0, 561.0, 162.0, 561.0, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 192.5, 162.0, 561.0, 162.0, 561.0, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 192.5, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-131", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 33.5, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 450.0, 453.0, 426.0, 453.0, 426.0, 372.0, 760.5, 372.0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 334.5, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 0 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 451.5, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1544.5, 411.0, 912.0, 411.0, 912.0, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 1486.5, 317.0, 1544.5, 317.0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 0 ],
                    "source": [ "obj-200", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 921.5, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-202", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-205", 0 ],
                    "source": [ "obj-204", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1699.5, 315.0, 760.5, 315.0 ],
                    "source": [ "obj-205", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-222", 0 ],
                    "source": [ "obj-218", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1916.5, 315.0, 760.5, 315.0 ],
                    "source": [ "obj-222", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1916.5, 537.0, 912.0, 537.0, 912.0, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-223", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-223", 0 ],
                    "source": [ "obj-233", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 611.5, 365.0, 760.5, 365.0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 810.5, 266.0, 836.0, 266.0, 836.0, 365.0, 760.5, 365.0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 584.5, 101.0, 560.0, 101.0, 560.0, 365.0, 760.5, 365.0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 571.5, 803.0, 699.5, 803.0 ],
                    "order": 7,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "midpoints": [ 571.5, 803.0, 826.5, 803.0 ],
                    "order": 5,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "midpoints": [ 571.5, 540.0, 924.0, 540.0, 924.0, 840.0, 946.5, 840.0 ],
                    "order": 4,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "midpoints": [ 571.5, 570.0, 62.5, 570.0 ],
                    "order": 15,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "midpoints": [ 571.5, 570.0, 206.5, 570.0 ],
                    "order": 13,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "midpoints": [ 571.5, 696.0, 206.5, 696.0 ],
                    "order": 12,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "midpoints": [ 571.5, 696.0, 62.5, 696.0 ],
                    "order": 14,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "midpoints": [ 571.5, 570.0, 359.0, 570.0 ],
                    "order": 11,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 0 ],
                    "midpoints": [ 571.5, 570.0, 467.5, 570.0 ],
                    "order": 10,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 571.5, 611.0, 694.5, 611.0 ],
                    "order": 8,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 571.5, 611.0, 815.5, 611.0 ],
                    "order": 6,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 571.5, 611.0, 957.5, 611.0 ],
                    "order": 3,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 571.5, 611.0, 1061.5, 611.0 ],
                    "order": 2,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 571.5, 540.0, 584.5, 540.0 ],
                    "order": 9,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "midpoints": [ 571.5, 611.0, 1187.5, 611.0 ],
                    "order": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "midpoints": [ 571.5, 611.0, 1309.5, 611.0 ],
                    "order": 0,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 584.5, 365.0, 760.5, 365.0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 389.5, 552.0, 549.0, 552.0, 549.0, 417.0, 666.0, 417.0, 666.0, 375.0, 760.5, 375.0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1012.5, 365.0, 760.5, 365.0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 1544.5, 230.0, 1544.5, 230.0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "midpoints": [ 1572.5, 317.0, 1567.0, 317.0 ],
                    "order": 0,
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 1572.5, 239.0, 1509.0, 239.0, 1509.0, 92.0, 1486.5, 92.0 ],
                    "order": 1,
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 2 ],
                    "midpoints": [ 1601.5, 317.0, 1589.5, 317.0 ],
                    "order": 0,
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 1601.5, 239.0, 1509.0, 239.0, 1509.0, 92.0, 1486.5, 92.0 ],
                    "order": 1,
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "midpoints": [ 1061.5, 93.0, 1035.0, 93.0, 1035.0, 66.0, 1012.5, 66.0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1221.5, 258.0, 1131.0, 258.0, 1131.0, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1351.5, 366.0, 760.5, 366.0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1129.5, 365.0, 760.5, 365.0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}