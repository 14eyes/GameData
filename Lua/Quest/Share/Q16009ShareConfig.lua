main_id = 16009
local tbl = {}
local n = 1600922
local v = 1600902
local n2 = 1600923
local n3 = 1600903
local n4 = 1600904
local n5 = 1600905
local n6 = 1600906
local n7 = 1600907
local n8 = 1600920
local n9 = 1600921
local n10 = 1600908
local n11 = 1600910
local n12 = 1600909
local n13 = 1600911
local n14 = 1600912
local n15 = 1600924
local n16 = 1600913
local n17 = 1600914
local n18 = 1600915
local n19 = 1600925
local n20 = 1600916
local n21 = 1600926
local n22 = 1600917
local n23 = 1600918
local n24 = 1600919
local n25 = 1600927
tbl[1] = 1600901
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"189"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121519"}},
        QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
    }
}

rewind_data = {
    ["1600901"] = {},
    ["1600902"] = {},
    ["1600903"] = {},
    ["1600904"] = {},
    ["1600905"] = {
        avatar = {
            offline_dungeon_id = 1307,
            scene_id = 20334,
            pos = "[20334_2:5462.574,201.730,9895.988,0.000,39.828,0.000]"
        }
    },
    ["1600906"] = {},
    ["1600907"] = {},
    ["1600908"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_361:17.044,0.010,7.824,0.000,271.287,0.000]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_305:-3.211,0.000,7.070,0.000,134.570,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_307:-30.005,-5.000,3.837,0.000,48.955,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 8
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_306:-36.850,-3.998,2.674,0.000,123.556,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 9
            },
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_312:8.940,0.000,-6.472,0.000,122.184,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 10
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_311:-1.936,0.000,5.919,0.000,312.998,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 11
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_314:-11.809,0.000,13.349,0.000,46.767,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 12
            }
        }
    },
    ["1600909"] = {
        npcs = {
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_219:2.605,4.802,2.494,0.000,90.000,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_217:-2.784,0.000,7.314,0.000,90.491,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1600910"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_218:-0.803,0.000,5.242,0.000,137.420,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_217:-2.784,0.000,7.314,0.000,90.491,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1600911"] = {
        npcs = {
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_219:2.605,4.802,2.494,0.000,90.000,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_218:-0.803,0.000,5.242,0.000,137.420,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1600912"] = {
        npcs = {
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_219:2.605,4.802,2.494,0.000,90.000,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_218:-0.803,0.000,5.242,0.000,137.420,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_217:-2.784,0.000,7.314,0.000,90.491,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["1600913"] = {},
    ["1600914"] = {},
    ["1600915"] = {},
    ["1600916"] = {},
    ["1600917"] = {},
    ["1600918"] = {},
    ["1600920"] = {},
    ["1600921"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_361:17.044,0.010,7.824,0.000,271.287,0.000]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_305:-3.211,0.000,7.070,0.000,134.570,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_307:-30.005,-5.000,3.837,0.000,48.955,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_306:-36.850,-3.998,2.674,0.000,123.556,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 4
            },
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_312:8.940,0.000,-6.472,0.000,122.184,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_311:-1.936,0.000,5.919,0.000,312.998,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_314:-11.809,0.000,13.349,0.000,46.767,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 7
            }
        }
    },
    ["1600922"] = {},
    ["1600923"] = {},
    ["1600924"] = {},
    ["1600925"] = {},
    ["1600926"] = {},
    ["1600927"] = {}
}

quest_data = {
    ["1600901"] = {},
    ["1600902"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 7603,
                alias = "Npc7603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7604,
                alias = "Npc7604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7605,
                alias = "Npc7605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[20334_1:5445.401,201.062,9887.343,0.000,54.442,0.000]",
                scene_id = 20334,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14664:2457.993,332.959,-1776.690,0.000,181.805,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1307, pos = "[20334_1:5445.401,201.062,9887.343,0.000,54.442,0.000]"}}
    },
    ["1600903"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 7603,
                alias = "Npc7603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7604,
                alias = "Npc7604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7605,
                alias = "Npc7605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20334_1:5445.401,201.062,9887.343,0.000,54.442,0.000]",
                scene_id = 20334,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1600904"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 7603,
                alias = "Npc7603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7604,
                alias = "Npc7604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7605,
                alias = "Npc7605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20334_1:5445.401,201.062,9887.343,0.000,54.442,0.000]",
                scene_id = 20334,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1600905"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 7603,
                alias = "Npc7603",
                script = "Actor/Npc/TempNPC",
                pos = "[20334_2:5462.574,201.730,9895.988,0.000,39.828,0.000]",
                scene_id = 20334,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7604,
                alias = "Npc7604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7605,
                alias = "Npc7605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20334_1:5445.401,201.062,9887.343,0.000,54.442,0.000]",
                scene_id = 20334,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1600906"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 7603,
                alias = "Npc7603",
                script = "Actor/Npc/TempNPC",
                pos = "[20334_2:5462.574,201.730,9895.988,0.000,39.828,0.000]",
                scene_id = 20334,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7604,
                alias = "Npc7604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7605,
                alias = "Npc7605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20334_3:5547.476,202.989,9891.503,0.000,87.455,0.000]",
                scene_id = 20334,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1004, pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]"}}
    },
    ["1600907"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1004, pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]"}}
    },
    ["1600908"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_216:3.836,0.000,4.299]",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_307:-30.005,-5.000,3.837,0.000,48.955,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 2
            }
        }
    },
    ["1600909"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_218:-0.803,0.000,5.242,0.000,137.420,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1600910"] = {
        npcs = {
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_219:2.605,4.802,2.494,0.000,90.000,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1600911"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[1009_217:-2.784,0.000,7.314,0.000,90.491,0.000]",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1600912"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1306, pos = "[20333_1:2108.462,216.884,-485.156,0.000,41.266,0.000]"}}
    },
    ["1600913"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_1:2108.462,216.884,-485.156,0.000,41.266,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1600914"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600915"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1326,
                alias = "Npc1326",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_3:2110.745,218.760,-475.778]",
                scene_id = 20333,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20333, pos = "[20333_9:2068.000,260.000,-351.000,0.000,304.945,0.000]"}}
    },
    ["1600916"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_4:1985.652,250.190,-250.171,0.000,42.765,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16596,
                alias = "Npc16596_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_6:1985.736,250.190,-245.900,0.000,162.788,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1176,
                alias = "WolfBoss",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_6:1985.736,250.190,-245.900,0.000,162.788,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20333, pos = "[20333_9:2068.000,260.000,-351.000,0.000,304.945,0.000]"}}
    },
    ["1600917"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_5:1986.226,250.190,-257.135,0.000,6.850,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_4:1985.652,250.190,-250.171,0.000,42.765,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 3
            },
            {
                id = 16596,
                alias = "Npc16596_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_6:1985.736,250.190,-245.900,0.000,162.788,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1326,
                alias = "Npc1326",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_8:1992.373,250.190,-253.189,0.000,246.884,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1176,
                alias = "WolfBoss",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_6:1985.736,250.190,-245.900,0.000,162.788,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14666:5643.807,227.454,9571.070]"}}
    },
    ["1600918"] = {
        npcs = {
            {
                id = 7603,
                alias = "Npc7603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_361100093:5641.608,227.925,9573.145,0.000,332.565,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7604,
                alias = "Npc7604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_361100094:5648.210,226.912,9572.786,0.000,55.463,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7605,
                alias = "Npc7605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_361100095:5643.186,227.131,9567.439,0.000,185.114,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 16653,
                alias = "Npc16653",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14666:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14666:5643.807,227.454,9571.070]"}}
    },
    ["1600919"] = {
        npcs = {
            {
                id = 7603,
                alias = "Npc7603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_361100093:5641.608,227.925,9573.145,0.000,332.565,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7604,
                alias = "Npc7604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_361100094:5648.210,226.912,9572.786,0.000,55.463,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7605,
                alias = "Npc7605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_361100095:5643.186,227.131,9567.439,0.000,185.114,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 16653,
                alias = "Npc16653",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_15703:5837.225,270.204,9769.540,0.000,120.970,0.000]"}}
    },
    ["1600920"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_360:19.049,0.010,8.028,0.000,270.000,0.000]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_305:-3.211,0.000,7.070,0.000,134.570,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_307:-30.005,-5.000,3.837,0.000,48.955,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_306:-36.850,-3.998,2.674,0.000,123.556,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 4
            },
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_312:8.940,0.000,-6.472,0.000,122.184,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_311:-1.936,0.000,5.919,0.000,312.998,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_314:-11.809,0.000,13.349,0.000,46.767,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_307:-30.005,-5.000,3.837,0.000,48.955,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 8
            }
        }
    },
    ["1600921"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_307:-30.005,-5.000,3.837,0.000,48.955,0.000]",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            }
        }
    },
    ["1600922"] = {},
    ["1600923"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_304:-29.727,-5.000,-0.010,0.000,92.802,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 7603,
                alias = "Npc7603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7604,
                alias = "Npc7604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7605,
                alias = "Npc7605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14668:5939.344,287.827,9717.833,0.000,289.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[20334_1:5445.401,201.062,9887.343,0.000,54.442,0.000]",
                scene_id = 20334,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1307, pos = "[20334_1:5445.401,201.062,9887.343,0.000,54.442,0.000]"}}
    },
    ["1600924"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1306, pos = "[20333_1:2108.462,216.884,-485.156,0.000,41.266,0.000]"}}
    },
    ["1600925"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1306, pos = "[20333_9:2068.000,260.000,-351.000,0.000,304.945,0.000]"}}
    },
    ["1600926"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14667:5643.807,227.454,9571.070]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_4:1985.652,250.190,-250.171,0.000,42.765,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16596,
                alias = "Npc16596_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_6:1985.736,250.190,-245.900,0.000,162.788,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1176,
                alias = "WolfBoss",
                script = "Actor/Npc/TempNPC",
                pos = "[20333_6:1985.736,250.190,-245.900,0.000,162.788,0.000]",
                scene_id = 20333,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1306, pos = "[20333_14:1993.796,250.190,-260.172,0.000,330.129,0.000]"}
        }
    },
    ["1600927"] = {}
}
