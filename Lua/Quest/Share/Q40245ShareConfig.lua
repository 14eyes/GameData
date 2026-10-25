main_id = 40245
local tbl = {}
local n = 4024502
local v = 4024531
local n2 = 4024532
local n3 = 4024529
local n4 = 4024530
local n5 = 4024503
local n6 = 4024504
local n7 = 4024505
local n8 = 4024506
local n9 = 4024507
local n10 = 4024508
local n11 = 4024509
local n12 = 4024510
local n13 = 4024511
local n14 = 4024512
local n15 = 4024533
local n16 = 4024513
local n17 = 4024514
local n18 = 4024515
local n19 = 4024516
local n20 = 4024534
local n21 = 4024517
local n22 = 4024518
local n23 = 4024519
local n24 = 4024520
local n25 = 4024521
local n26 = 4024522
local n27 = 4024523
local n28 = 4024524
local n29 = 4024525
local n30 = 4024526
local n31 = 4024527
local n32 = 4024528
tbl[1] = 4024501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
local str2 = ""
tbl3[1] = "201161004"
tbl3[2] = str
tbl3[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"219"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4024501"] = {},
    ["4024502"] = {},
    ["4024503"] = {},
    ["4024504"] = {},
    ["4024505"] = {},
    ["4024506"] = {},
    ["4024507"] = {},
    ["4024512"] = {},
    ["4024513"] = {},
    ["4024514"] = {
        avatar = {offline_dungeon_id = 0, scene_id = 1160, pos = "[1160_3:48.416,0.153,-57.288,0.000,89.994,0.000]"}
    },
    ["4024515"] = {},
    ["4024517"] = {},
    ["4024518"] = {},
    ["4024519"] = {},
    ["4024520"] = {},
    ["4024521"] = {},
    ["4024522"] = {},
    ["4024523"] = {},
    ["4024524"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4024525"] = {},
    ["4024526"] = {},
    ["4024527"] = {},
    ["4024528"] = {},
    ["4024529"] = {},
    ["4024530"] = {},
    ["4024531"] = {},
    ["4024532"] = {},
    ["4024533"] = {},
    ["4024534"] = {}
}

quest_data = {
    ["4024501"] = {},
    ["4024502"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_18:109.702,16.337,100.369,0.000,333.964,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_18:109.702,16.337,100.369,0.000,333.964,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_17171:2800.070,370.291,4478.455,0.000,269.614,0.000]"}}
    },
    ["4024503"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16551:2703.614,388.529,4531.998,0.000,334.285,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                inWater = true
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16551:2703.614,388.529,4531.998,0.000,334.285,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2,
                inWater = true
            }
        }
    },
    ["4024504"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16551:2703.614,388.529,4531.998,0.000,334.285,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16551:2703.614,388.529,4531.998,0.000,334.285,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024505"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16552:2662.356,334.829,4660.393,0.000,6.472,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16552:2662.356,334.829,4660.393,0.000,6.472,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16552:2662.356,334.829,4660.393,0.000,6.472,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024506"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16552:2662.356,334.829,4660.393,0.000,6.472,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16552:2662.356,334.829,4660.393,0.000,6.472,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024507"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4024508"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 31020,
                alias = "Npc31020",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_11:59.871,0.168,-63.808,0.000,94.214,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            },
            {
                id = 31021,
                alias = "Npc31021",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_12:46.452,0.203,-60.180,0.000,78.322,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 3
            },
            {
                id = 31022,
                alias = "Npc31022",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_13:44.375,0.156,-52.231,0.000,272.664,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 4
            },
            {
                id = 31023,
                alias = "Npc31023",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_14:48.126,0.170,-53.770,0.000,205.082,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4024509"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 31020,
                alias = "Npc31020",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_11:59.871,0.168,-63.808,0.000,94.214,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            },
            {
                id = 31021,
                alias = "Npc31021",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_12:46.452,0.203,-60.180,0.000,78.322,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 3
            },
            {
                id = 31022,
                alias = "Npc31022",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_13:44.375,0.156,-52.231,0.000,272.664,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 4
            },
            {
                id = 31023,
                alias = "Npc31023",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_14:48.126,0.170,-53.770,0.000,205.082,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4024510"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 31020,
                alias = "Npc31020",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_11:59.871,0.168,-63.808,0.000,94.214,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            },
            {
                id = 31021,
                alias = "Npc31021",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_12:46.452,0.203,-60.180,0.000,78.322,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 3
            },
            {
                id = 31022,
                alias = "Npc31022",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_13:44.375,0.156,-52.231,0.000,272.664,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 4
            },
            {
                id = 31023,
                alias = "Npc31023",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_14:48.126,0.170,-53.770,0.000,205.082,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4024511"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 31020,
                alias = "Npc31020",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_11:59.871,0.168,-63.808,0.000,94.214,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            },
            {
                id = 31021,
                alias = "Npc31021",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_12:46.452,0.203,-60.180,0.000,78.322,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 3
            },
            {
                id = 31022,
                alias = "Npc31022",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_13:44.375,0.156,-52.231,0.000,272.664,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 4
            },
            {
                id = 31023,
                alias = "Npc31023",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_14:48.126,0.170,-53.770,0.000,205.082,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_10:45.671,0.153,-56.704,0.000,90.071,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4024512"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_14:48.126,0.170,-53.770,0.000,205.082,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 31020,
                alias = "Npc31020",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_11:59.871,0.168,-63.808,0.000,94.214,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            },
            {
                id = 31021,
                alias = "Npc31021",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_12:46.452,0.203,-60.180,0.000,78.322,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 3
            },
            {
                id = 31022,
                alias = "Npc31022",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_13:44.375,0.156,-52.231,0.000,272.664,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 4
            },
            {
                id = 31023,
                alias = "Npc31023",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_14:48.126,0.170,-53.770,0.000,205.082,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_14:48.126,0.170,-53.770,0.000,205.082,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4024513"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_15:48.481,0.153,-56.688,0.000,86.242,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_15:48.481,0.153,-56.688,0.000,86.242,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4024514"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_20:59.034,0.223,-51.873,0.000,80.867,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_20:59.034,0.223,-51.873,0.000,80.867,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_20:59.034,0.223,-51.873,0.000,80.867,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4024515"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_16:-9.843,0.878,10.362,0.000,92.964,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_16:-9.843,0.878,10.362,0.000,92.964,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4024516"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_17:49.316,0.170,-52.403,0.000,179.972,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_17:49.316,0.170,-52.403,0.000,179.972,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4024517"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_17:49.316,0.170,-52.403,0.000,179.972,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_17:49.316,0.170,-52.403,0.000,179.972,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 3
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1326, pos = "[20357_2:769.227,1200.524,794.532,0.000,0.812,0.000]"}}
    },
    ["4024518"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_10:770.047,1200.500,794.527,0.000,356.918,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_10:770.047,1200.500,794.527,0.000,356.918,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024519"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_10:770.047,1200.500,794.527,0.000,356.918,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_10:770.047,1200.500,794.527,0.000,356.918,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024520"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_11:768.999,1200.806,802.695,358.712,10.957,356.377]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_11:768.999,1200.806,802.695,358.712,10.957,356.377]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_11:768.999,1200.806,802.695,358.712,10.957,356.377]",
                scene_id = 20357,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4024521"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_11:768.999,1200.806,802.695,358.712,10.957,356.377]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_11:768.999,1200.806,802.695,358.712,10.957,356.377]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_11:768.999,1200.806,802.695,358.712,10.957,356.377]",
                scene_id = 20357,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4024522"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_12:769.477,1200.500,798.994,0.000,183.383,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_11:768.999,1200.806,802.695,358.712,10.957,356.377]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_12:769.477,1200.500,798.994,0.000,183.383,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4024523"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_12:769.477,1200.500,798.994,0.000,183.383,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_12:769.477,1200.500,798.994,0.000,183.383,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_12:769.477,1200.500,798.994,0.000,183.383,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4024524"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_13:761.660,1200.500,799.980,0.000,277.263,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_13:761.660,1200.500,799.980,0.000,277.263,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_13:761.660,1200.500,799.980,0.000,277.263,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024525"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_13:761.660,1200.500,799.980,0.000,277.263,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_13:761.660,1200.500,799.980,0.000,277.263,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_13:761.660,1200.500,799.980,0.000,277.263,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4024526"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_14:777.310,1200.465,799.880,0.000,90.966,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_14:777.310,1200.465,799.880,0.000,90.966,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_15:758.029,1200.480,798.994,0.000,303.078,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20357_14:777.310,1200.465,799.880,0.000,90.966,0.000]",
                scene_id = 20357,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4024527"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_18:46.849,0.156,-53.160,0.000,57.450,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1160_18:46.849,0.156,-53.160,0.000,57.450,0.000]",
                scene_id = 1160,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 3, scene_id = 1160, pos = "[1160_9:48.936,0.215,-53.688]"}}
    },
    ["4024528"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_96:111.758,16.336,98.688,0.000,180.000,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_22:112.529,16.237,95.001,0.000,218.117,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_96:111.758,16.336,98.688,0.000,180.000,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4024529"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_19:146.456,5.260,54.654,0.000,86.955,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_19:146.456,5.260,54.654,0.000,86.955,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_19:146.456,5.260,54.654,0.000,86.955,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4024530"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_19:146.456,5.260,54.654,0.000,86.955,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_19:146.456,5.260,54.654,0.000,86.955,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_19:146.456,5.260,54.654,0.000,86.955,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4024531"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17172:2800.063,370.291,4479.425,0.000,269.614,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                inWater = true
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17172:2800.063,370.291,4479.425,0.000,269.614,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2,
                inWater = true
            }
        },
        transmit_points = {{point_id = 2, scene_id = 1161, pos = "[1161_30:111.911,16.255,93.985]"}}
    },
    ["4024532"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_31:111.864,16.406,96.133,0.000,184.846,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_31:111.864,16.406,96.133,0.000,184.846,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4024533"] = {},
    ["4024534"] = {}
}
