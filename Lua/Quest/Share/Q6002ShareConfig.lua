main_id = 6002
local tbl = {}
local n = 600202
local v = 600216
local n2 = 600240
local n3 = 600203
local n4 = 600204
local n5 = 600205
local n6 = 600241
local n7 = 600206
local n8 = 600208
local n9 = 600207
local n10 = 600244
local n11 = 600210
local n12 = 600229
local n13 = 600230
local n14 = 600242
local n15 = 600231
local n16 = 600219
local n17 = 600243
local n18 = 600211
local n19 = 600245
local n20 = 600209
local n21 = 600212
local n22 = 600237
local n23 = 600213
local n24 = 600236
local n25 = 600246
local n26 = 600214
local n27 = 600239
local n28 = 600247
local n29 = 600215
local n30 = 600248
local n31 = 600217
local n32 = 600218
local n33 = 600249
local n34 = 600220
local n35 = 600221
local n36 = 600232
local n37 = 600233
local n38 = 600222
local n39 = 600227
local n40 = 600223
local n41 = 600224
local n42 = 600235
local n43 = 600225
local n44 = 600226
local n45 = 600238
local n46 = 600228
local n47 = 600234
tbl[1] = 600201
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
tbl[38] = n36
tbl[39] = n37
tbl[40] = n38
tbl[41] = n39
tbl[42] = n40
tbl[43] = n41
tbl[44] = n42
tbl[45] = n43
tbl[46] = n44
tbl[47] = n45
tbl[48] = n46
tbl[49] = n47
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["600201"] = {},
    ["600202"] = {},
    ["600203"] = {},
    ["600204"] = {},
    ["600205"] = {},
    ["600206"] = {},
    ["600207"] = {},
    ["600208"] = {},
    ["600209"] = {},
    ["600210"] = {},
    ["600211"] = {},
    ["600212"] = {
        avatar = {
            offline_dungeon_id = 1255,
            scene_id = 20276,
            pos = "[20276_11:3218.594,363.054,9792.262,0.000,201.550,0.000]"
        }
    },
    ["600214"] = {
        avatar = {
            offline_dungeon_id = 1255,
            scene_id = 20276,
            pos = "[20276_103:3228.807,337.437,9796.164,0.000,285.603,0.000]"
        }
    },
    ["600215"] = {},
    ["600216"] = {},
    ["600217"] = {
        avatar = {
            offline_dungeon_id = 1255,
            scene_id = 20276,
            pos = "[20276_99:3149.958,322.502,9820.196,0.000,328.972,0.000]"
        }
    },
    ["600218"] = {},
    ["600220"] = {},
    ["600221"] = {},
    ["600222"] = {},
    ["600223"] = {},
    ["600224"] = {},
    ["600225"] = {},
    ["600226"] = {},
    ["600228"] = {},
    ["600229"] = {},
    ["600230"] = {},
    ["600231"] = {},
    ["600233"] = {},
    ["600234"] = {},
    ["600239"] = {},
    ["600240"] = {},
    ["600241"] = {},
    ["600242"] = {},
    ["600243"] = {},
    ["600244"] = {},
    ["600245"] = {},
    ["600246"] = {},
    ["600247"] = {},
    ["600248"] = {},
    ["600249"] = {}
}

quest_data = {
    ["600201"] = {transmit_points = {{point_id = 1, scene_id = 1204, pos = "[1204_98:-35.659,1.313,-5.909]"}}},
    ["600202"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11738:2851.025,226.080,9195.615,0.000,33.933,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["600203"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_1:3095.518,212.223,9512.291,0.000,315.676,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_92:3086.085,207.454,9497.150,0.000,52.172,0.000]"}}
    },
    ["600204"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_2:3100.553,205.245,9554.884,0.000,343.759,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_93:3119.100,210.203,9537.072,0.000,317.199,0.000]"}
        }
    },
    ["600205"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_3:3165.675,204.700,9616.625,0.000,51.687,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_93:3119.100,210.203,9537.072,0.000,317.199,0.000]"}
        }
    },
    ["600206"] = {
        npcs = {
            {
                id = 15684,
                alias = "Npc15684",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_97:3261.817,236.728,9578.025,0.000,225.905,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15685,
                alias = "Npc15685",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_98:3258.663,236.728,9573.006,0.000,268.256,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15381,
                alias = "Npc15381",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_101:3237.916,237.098,9592.409]",
                scene_id = 20276,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_94:3177.292,204.528,9611.114,0.000,52.435,0.000]"}}
    },
    ["600207"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600208"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600209"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_58:3202.196,363.093,9750.138,0.000,20.000,0.000]"}}
    },
    ["600210"] = {
        npcs = {
            {
                id = 15381,
                alias = "Npc15381",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_102:3269.800,237.099,9579.275]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600211"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_10:3200.742,361.958,9746.690,0.000,21.591,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20276, pos = "[20276_34:3242.446,379.727,9725.565,0.000,300.547,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_34:3242.446,379.727,9725.565,0.000,300.547,0.000]"}
        }
    },
    ["600212"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_11:3218.594,363.054,9792.262,0.000,201.550,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20276, pos = "[20276_11:3218.594,363.054,9792.262,0.000,201.550,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_11:3218.594,363.054,9792.262,0.000,201.550,0.000]"}
        }
    },
    ["600213"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_58:3202.196,363.093,9750.138,0.000,20.000,0.000]"}}
    },
    ["600214"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_21:3222.156,338.040,9790.677]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20276, pos = "[20276_103:3228.807,337.437,9796.164,0.000,285.603,0.000]"}
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_67:3237.370,337.474,9800.810,0.000,90.000,0.000]"}}
    },
    ["600215"] = {
        transmit_points = {{point_id = 1, scene_id = 20276, pos = "[20276_12:3202.937,316.900,9804.797,0.000,203.529,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_12:3202.937,316.900,9804.797,0.000,203.529,0.000]"}
        }
    },
    ["600216"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12042:2852.056,226.008,9195.724,0.000,2.326,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11738:2851.025,226.080,9195.615,0.000,33.933,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_29:3077.779,206.679,9490.316,0.000,50.791,0.000]"}}
    },
    ["600217"] = {
        npcs = {
            {
                id = 15381,
                alias = "Npc15381",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_32:3199.823,332.986,9831.755,0.000,153.755,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20276, pos = "[20276_99:3149.958,322.502,9820.196,0.000,328.972,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_12:3202.937,316.900,9804.797,0.000,203.529,0.000]"}
        }
    },
    ["600218"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_95:3237.768,335.105,9867.093,0.000,37.301,0.000]"}}
    },
    ["600219"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600220"] = {
        npcs = {
            {
                id = 15381,
                alias = "Npc15381",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_15:3262.424,312.090,9891.925,0.000,308.786,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_11774:3305.073,310.310,9869.865,0.000,120.755,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_100:3254.698,310.783,9905.376,0.000,148.528,0.000]"}
        }
    },
    ["600221"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11776:3263.365,37.943,9872.160,0.000,176.674,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_11819:1927.274,236.576,10531.170,0.000,77.991,0.000]"}}
    },
    ["600222"] = {
        npcs = {
            {
                id = 1319,
                alias = "Npc1319_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11755:2322.324,200.176,9603.818,0.000,78.275,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15649,
                alias = "Npc15649",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12981:2337.260,200.012,9606.523,0.000,261.197,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["600223"] = {},
    ["600224"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11777:2280.923,200.256,9565.598,0.000,173.964,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["600225"] = {},
    ["600226"] = {
        npcs = {
            {
                id = 15381,
                alias = "Npc15381",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11772:2216.683,200.678,9497.264,0.000,58.772,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11772:2216.683,200.678,9497.264,0.000,58.772,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11772:2216.683,200.678,9497.264,0.000,58.772,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["600227"] = {},
    ["600228"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_18:5.617,0.343,-34.749]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_4:4.391,0.312,-32.648,0.000,180.000,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_12044:1810.167,239.644,10374.580,0.000,95.924,0.000]"}}
    },
    ["600229"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600230"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600231"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_31:3262.987,236.728,9591.123,0.000,209.795,0.000]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1,
                platformInfo = {
                    sceneId = 20276,
                    groupId = 220276009,
                    configId = 9008,
                    offsetPos = {x = -0.246, y = 0.0, z = 0.117},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600232"] = {
        npcs = {
            {
                id = 15378,
                alias = "Npc15378",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12150:1929.591,236.572,10531.900,0.000,253.751,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_12151:3264.212,37.570,9868.108]"}}
    },
    ["600233"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11776:3263.365,37.943,9872.160,0.000,176.674,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_12152:2324.208,200.047,9604.373,0.000,266.734,0.000]"}}
    },
    ["600234"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12043:1823.979,235.195,10378.790,0.000,41.115,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_4:4.391,0.312,-32.648,0.000,180.000,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["600235"] = {},
    ["600236"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_58:3202.196,363.093,9750.138,0.000,20.000,0.000]"}}
    },
    ["600237"] = {
        npcs = {
            {
                id = 15381,
                alias = "Npc15381",
                script = "Actor/Npc/TempNPC",
                pos = "[20276_91:3224.736,338.102,9791.573]",
                scene_id = 20276,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20276, pos = "[20276_90:3221.568,337.436,9801.287,0.000,139.525,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_58:3202.196,363.093,9750.138,0.000,20.000,0.000]"}}
    },
    ["600238"] = {},
    ["600239"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_67:3237.370,337.474,9800.810,0.000,90.000,0.000]"}}
    },
    ["600240"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_92:3086.085,207.454,9497.150,0.000,52.172,0.000]"}}
    },
    ["600241"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_94:3177.292,204.528,9611.114,0.000,52.435,0.000]"}}
    },
    ["600242"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600243"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_34:3242.446,379.727,9725.565,0.000,300.547,0.000]"}
        }
    },
    ["600244"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_7:3231.640,236.714,9588.293,0.000,92.985,0.000]"}}
    },
    ["600245"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_58:3202.196,363.093,9750.138,0.000,20.000,0.000]"}}
    },
    ["600246"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1255, pos = "[20276_67:3237.370,337.474,9800.810,0.000,90.000,0.000]"}}
    },
    ["600247"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_12:3202.937,316.900,9804.797,0.000,203.529,0.000]"}
        }
    },
    ["600248"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_99:3149.958,322.502,9820.196,0.000,328.972,0.000]"}
        }
    },
    ["600249"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1255, pos = "[20276_100:3254.698,310.783,9905.376,0.000,148.528,0.000]"}
        }
    }
}
