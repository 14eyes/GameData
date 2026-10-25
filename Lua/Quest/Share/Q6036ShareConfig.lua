main_id = 6036
local tbl = {}
local n = 603612
local v = 603613
local n2 = 603620
local n3 = 603601
local n4 = 603614
local n5 = 603625
local n6 = 603626
local n7 = 603615
local n8 = 603627
local n9 = 603621
local n10 = 603622
local n11 = 603616
local n12 = 603635
local n13 = 603623
local n14 = 603636
local n15 = 603602
local n16 = 603628
local n17 = 603603
local n18 = 603619
local n19 = 603624
local n20 = 603617
local n21 = 603632
local n22 = 603634
local n23 = 603618
local n24 = 603630
local n25 = 603604
local n26 = 603605
local n27 = 603629
local n28 = 603606
local n29 = 603631
local n30 = 603607
local n31 = 603608
local n32 = 603609
local n33 = 603633
local n34 = 603610
local n35 = 603637
tbl[1] = 603611
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
tbl[16] = n14
tbl[17] = n15
tbl[18] = n16
tbl[19] = n17
tbl[20] = n18
tbl[21] = n19
tbl[22] = n20
tbl[23] = n21
tbl[24] = n22
tbl[25] = n23
tbl[26] = n24
tbl[27] = n25
tbl[28] = n26
tbl[29] = n27
tbl[30] = n28
tbl[31] = n29
tbl[32] = n30
tbl[33] = n31
tbl[34] = n32
tbl[35] = n33
tbl[36] = n34
tbl[37] = n35
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["603601"] = {},
    ["603602"] = {},
    ["603603"] = {},
    ["603604"] = {},
    ["603605"] = {},
    ["603606"] = {},
    ["603607"] = {},
    ["603608"] = {
        avatar = {
            offline_dungeon_id = 1311,
            scene_id = 20341,
            pos = "[20341_19:527.528,135.912,684.606,0.000,177.608,0.000]"
        }
    },
    ["603609"] = {},
    ["603610"] = {},
    ["603611"] = {
        avatar = {
            offline_dungeon_id = 1314,
            scene_id = 20343,
            pos = "[20343_52:-2349.516,184.333,5449.233,0.000,182.523,0.000]"
        }
    },
    ["603612"] = {},
    ["603613"] = {},
    ["603614"] = {},
    ["603615"] = {},
    ["603616"] = {},
    ["603617"] = {},
    ["603618"] = {},
    ["603619"] = {},
    ["603620"] = {},
    ["603621"] = {},
    ["603622"] = {},
    ["603623"] = {},
    ["603624"] = {},
    ["603625"] = {},
    ["603626"] = {},
    ["603627"] = {},
    ["603628"] = {},
    ["603629"] = {},
    ["603630"] = {},
    ["603631"] = {},
    ["603632"] = {},
    ["603633"] = {},
    ["603634"] = {
        avatar = {
            offline_dungeon_id = 1311,
            scene_id = 20341,
            pos = "[20341_22:311.442,273.605,1774.640,0.000,180.315,0.000]"
        }
    },
    ["603635"] = {},
    ["603636"] = {},
    ["603637"] = {}
}

quest_data = {
    ["603601"] = {
        npcs = {
            {
                id = 16975,
                alias = "Npc16975",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_475:-578.425,211.810,2685.885,0.000,267.953,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1314, pos = "[20343_533:-584.523,210.623,2686.345,0.000,112.826,0.000]"}
        }
    },
    ["603602"] = {
        npcs = {
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "[20345_14:-6.709,128.045,-1.042,0.000,70.200,0.000]",
                scene_id = 20345,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1311, pos = "[20341_20:227.514,275.940,2089.578,0.000,90.000,0.000]"}}
    },
    ["603603"] = {
        npcs = {
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "[20341_13:229.184,275.940,2088.375,0.000,73.334,0.000]",
                scene_id = 20341,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["603604"] = {},
    ["603605"] = {},
    ["603606"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "[20341_23:496.639,250.543,1530.502,0.000,180.000,0.000]",
                scene_id = 20341,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    skipCloseToGround = true,
                    disableMoveCollider = true,
                    dontTickPause = true,
                    zeroLodTransitionTime = true,
                    addPhysicMaterial = true,
                    lookAtParam = {lockHeadControl = true, lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    freestyleParam = {freestyleType = 4751},
                    emotionParam = {autoBlink = true}
                }
            }
        }
    },
    ["603607"] = {
        transmit_points = {{point_id = 1, scene_id = 20341, pos = "[20341_19:527.528,135.912,684.606,0.000,177.608,0.000]"}}
    },
    ["603608"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "[20341_19:527.528,135.912,684.606,0.000,177.608,0.000]",
                scene_id = 20341,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20341, pos = "[20341_19:527.528,135.912,684.606,0.000,177.608,0.000]"}}
    },
    ["603609"] = {},
    ["603610"] = {
        npcs = {
            {
                id = 12695,
                alias = "Npc12695",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_73:176.251,436.043,3639.034]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_330300399:-1651.285,260.056,3868.890,0.000,286.544,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1314, pos = "[20343_120:178.471,436.330,3642.452,0.000,204.969,0.000]"}
        }
    },
    ["603611"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_451:-2350.168,173.862,5339.715,0.000,181.913,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1314, pos = "[20343_52:-2349.516,184.333,5449.233,0.000,182.523,0.000]"}
        }
    },
    ["603612"] = {
        transmit_points = {
            {point_id = 1, scene_id = 20343, pos = "[20343_451:-2350.168,173.862,5339.715,0.000,181.913,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1314,
                pos = "[20343_463:-2348.687,173.862,5347.984,0.000,211.170,0.000]"
            }
        }
    },
    ["603613"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_451:-2350.168,173.862,5339.715,0.000,181.913,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16566,
                alias = "Npc16566",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_453:-2348.451,173.862,5344.027,0.000,197.488,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16567,
                alias = "Npc16567",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_454:-2351.920,173.862,5344.079,0.000,167.888,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 3
            },
            {
                id = 16568,
                alias = "Npc16568",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_452:-2350.081,173.862,5343.167,0.000,179.761,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20341, pos = "[20341_18:-540.676,133.506,1499.993,0.000,91.823,0.000]"}},
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1314,
                pos = "[20343_463:-2348.687,173.862,5347.984,0.000,211.170,0.000]"
            }
        }
    },
    ["603614"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1314, pos = "[20343_533:-584.523,210.623,2686.345,0.000,112.826,0.000]"}
        }
    },
    ["603615"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_491:-522.253,202.315,2799.008,0.000,318.068,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1314, pos = "[20343_582:-486.081,227.828,2750.793]"}}
    },
    ["603616"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_75:-381.325,343.607,2875.177,0.000,194.099,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1314, pos = "[20343_486:-356.110,249.675,2637.031,0.000,46.278,0.000]"}
        }
    },
    ["603617"] = {
        npcs = {
            {
                id = 16975,
                alias = "Npc16975",
                script = "Actor/Npc/TempNPC",
                pos = "[20341_2:311.363,273.709,1789.438,0.000,179.159,0.000]",
                scene_id = 20341,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["603618"] = {
        npcs = {
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "[20341_3:500.742,250.014,1486.027]",
                scene_id = 20341,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["603619"] = {
        npcs = {
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "[20341_1:270.009,279.091,2083.976,0.000,268.668,0.000]",
                scene_id = 20341,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["603620"] = {
        npcs = {
            {
                id = 16682,
                alias = "Npc16682",
                script = "Actor/Npc/TempNPC",
                pos = "[20341_10:-537.297,133.506,1500.045,0.000,266.870,0.000]",
                scene_id = 20341,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20343, pos = "[20343_533:-584.523,210.623,2686.345,0.000,112.826,0.000]"}
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1311, pos = "[20341_18:-540.676,133.506,1499.993,0.000,91.823,0.000]"}}
    },
    ["603621"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_528:-472.860,229.704,2772.354,0.000,103.813,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20343, pos = "[20343_486:-356.110,249.675,2637.031,0.000,46.278,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1314, pos = "[20343_582:-486.081,227.828,2750.793]"}}
    },
    ["603622"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_497:-354.325,249.484,2638.720,0.000,238.364,0.000]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1314, pos = "[20343_486:-356.110,249.675,2637.031,0.000,46.278,0.000]"}
        }
    },
    ["603623"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[20343_554:-376.909,367.450,2930.051]",
                scene_id = 20343,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1314, pos = "[20343_448:-382.211,343.607,2872.198]"}}
    },
    ["603624"] = {},
    ["603625"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1314, pos = "[20343_582:-486.081,227.828,2750.793]"}}
    },
    ["603626"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1314, pos = "[20343_582:-486.081,227.828,2750.793]"}}
    },
    ["603627"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1314, pos = "[20343_582:-486.081,227.828,2750.793]"}}
    },
    ["603628"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1311, pos = "[20341_12:229.175,275.940,2090.774,0.000,114.475,0.000]"}}
    },
    ["603629"] = {},
    ["603630"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1311, pos = "[20341_21:500.339,250.014,1514.385,0.000,180.000,0.000]"}}
    },
    ["603631"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1311, pos = "[20341_19:527.528,135.912,684.606,0.000,177.608,0.000]"}}
    },
    ["603632"] = {},
    ["603633"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1314, pos = "[20343_120:178.471,436.330,3642.452,0.000,204.969,0.000]"}
        }
    },
    ["603634"] = {},
    ["603635"] = {},
    ["603636"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1311, pos = "[20341_20:227.514,275.940,2089.578,0.000,90.000,0.000]"}}
    },
    ["603637"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_330300401:-1680.090,266.685,3872.719,0.000,97.791,0.000]"}}
    }
}
