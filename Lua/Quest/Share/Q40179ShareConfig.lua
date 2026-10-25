main_id = 40179
local tbl = {}
local n = 4017915
local v = 4017902
local n2 = 4017903
local n3 = 4017907
local n4 = 4017908
local n5 = 4017909
local n6 = 4017918
local n7 = 4017910
local n8 = 4017911
local n9 = 4017912
local n10 = 4017913
local n11 = 4017914
local n12 = 4017919
local n13 = 4017904
local n14 = 4017916
local n15 = 4017917
local n16 = 4017905
local n17 = 4017906
tbl[1] = 4017901
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10511"}, {"10512"}, {"119"}, {"120"}, {"121"}, {"122"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133504648,133504649"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "201099005"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
local qUEST_EXEC_LOCK_POINT = {}
local tbl5 = {}
local str3 = "1491"
tbl5[1] = "3"
tbl5[2] = str3
qUEST_EXEC_LOCK_POINT[1] = tbl5
server.QUEST_EXEC_LOCK_POINT = qUEST_EXEC_LOCK_POINT
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4017901"] = {},
    ["4017902"] = {},
    ["4017903"] = {},
    ["4017904"] = {},
    ["4017905"] = {},
    ["4017906"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_120:21.715,0.026,12.521,0.000,339.329,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_117:27.254,0.261,30.582]",
                scene_id = 1099,
                room_id = 1,
                data_index = 2
            },
            {
                id = 15103,
                alias = "Npc15103",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_119:27.593,0.134,32.076,0.000,216.909,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_121:19.216,0.026,12.537,0.000,75.562,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 4
            },
            {
                id = 6055,
                alias = "Npc6055",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_123:19.164,0.026,17.435,0.000,303.106,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 5
            },
            {
                id = 6100,
                alias = "Npc6100",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_124:17.856,0.026,19.484,0.000,213.886,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 6
            },
            {
                id = 6305,
                alias = "Npc6305",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_125:16.006,0.026,18.216,0.000,126.473,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 7
            },
            {
                id = 6092,
                alias = "Npc6092",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_106:9.776,0.006,21.011,0.000,349.649,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 8
            },
            {
                id = 6228,
                alias = "Npc6228",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_107:10.572,0.006,22.404,0.000,257.787,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 9
            },
            {
                id = 14918,
                alias = "Npc14918",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_108:9.216,0.006,23.204,0.000,175.852,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_109:9.230,0.030,15.956,0.000,252.651,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 11
            },
            {
                id = 1091,
                alias = "Npc1091",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_110:24.072,0.091,24.582,0.000,251.804,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 12
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_111:23.050,0.032,24.129,0.000,69.108,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 13
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_112:23.343,0.067,24.923,0.000,163.262,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 14
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_113:36.773,-0.638,31.670,0.000,90.825,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 15
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_114:37.813,-0.638,31.650,0.000,276.133,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 16
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_122:19.438,0.026,15.176,0.000,166.188,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 17
            },
            {
                id = 30762,
                alias = "Npc30762",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_118:26.680,0.121,32.157,0.000,141.812,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 18
            }
        }
    },
    ["4017907"] = {},
    ["4017908"] = {},
    ["4017909"] = {},
    ["4017910"] = {},
    ["4017911"] = {},
    ["4017912"] = {},
    ["4017913"] = {},
    ["4017914"] = {},
    ["4017915"] = {},
    ["4017916"] = {},
    ["4017917"] = {},
    ["4017918"] = {},
    ["4017919"] = {}
}

quest_data = {
    ["4017901"] = {},
    ["4017902"] = {},
    ["4017903"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_7:-1660.327,165.016,7788.634]",
                scene_id = 20252,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017904"] = {
        npcs = {
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10672:-1311.451,241.006,7735.237]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017905"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_120:21.715,0.026,12.521,0.000,339.329,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10584:-1323.874,269.347,9166.068,0.000,276.148,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_115:28.606,0.006,17.585,0.000,30.522,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_117:27.254,0.261,30.582]",
                scene_id = 1099,
                room_id = 1,
                data_index = 4
            },
            {
                id = 15103,
                alias = "Npc15103",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_119:27.593,0.134,32.076,0.000,216.909,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_121:19.216,0.026,12.537,0.000,75.562,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 6
            },
            {
                id = 6055,
                alias = "Npc6055",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_123:19.164,0.026,17.435,0.000,303.106,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 7
            },
            {
                id = 6100,
                alias = "Npc6100",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_124:17.856,0.026,19.484,0.000,213.886,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 8
            },
            {
                id = 6305,
                alias = "Npc6305",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_125:16.006,0.026,18.216,0.000,126.473,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 9
            },
            {
                id = 6092,
                alias = "Npc6092",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_106:9.776,0.006,21.011,0.000,349.649,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 10
            },
            {
                id = 6228,
                alias = "Npc6228",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_107:10.572,0.006,22.404,0.000,257.787,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 11
            },
            {
                id = 14918,
                alias = "Npc14918",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_108:9.216,0.006,23.204,0.000,175.852,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 12
            },
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_109:9.230,0.030,15.956,0.000,252.651,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 13
            },
            {
                id = 1091,
                alias = "Npc1091",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_110:24.072,0.091,24.582,0.000,251.804,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 14
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_111:23.050,0.032,24.129,0.000,69.108,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 15
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_112:23.343,0.067,24.923,0.000,163.262,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 16
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_113:36.773,-0.638,31.670,0.000,90.825,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 17
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_114:37.813,-0.638,31.650,0.000,276.133,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 18
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_122:19.438,0.026,15.176,0.000,166.188,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 19
            },
            {
                id = 30762,
                alias = "Npc30762",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_118:26.680,0.121,32.157,0.000,141.812,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 20
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10731:-1324.197,269.385,9165.137,0.000,282.175,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 21
            },
            {
                id = 6250,
                alias = "Npc6250",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1099_108:9.216,0.006,23.204,0.000,175.852,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 22
            }
        }
    },
    ["4017906"] = {
        npcs = {
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10584:-1323.874,269.347,9166.068,0.000,276.148,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[1099_115:28.606,0.006,17.585,0.000,30.522,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10731:-1324.197,269.385,9165.137,0.000,282.175,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 6250,
                alias = "Npc6250",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1099_108:9.216,0.006,23.204,0.000,175.852,0.000]",
                scene_id = 1099,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4017907"] = {
        npcs = {
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_10:-1818.166,186.727,7886.920,359.985,163.102,0.175]",
                scene_id = 20252,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30791,
                alias = "Npc30791",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_14:-1817.312,186.544,7888.964,0.000,178.520,0.000]",
                scene_id = 20252,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30792,
                alias = "Npc30792",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_15:-1820.256,186.875,7888.417,0.000,135.600,0.000]",
                scene_id = 20252,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4017908"] = {},
    ["4017909"] = {
        npcs = {
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_11:-1817.443,186.330,7894.522,0.000,350.893,0.000]",
                scene_id = 20252,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017910"] = {},
    ["4017911"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_8:-1823.454,259.062,7643.707,0.000,217.614,0.000]",
                scene_id = 20252,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017912"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_12:-1455.668,275.304,7615.673,0.000,230.511,0.000]",
                scene_id = 20252,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30795,
                alias = "Npc30795",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_19:-1453.735,275.241,7616.431,0.000,244.370,0.000]",
                scene_id = 20252,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30796,
                alias = "Npc30796",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_20:-1455.175,275.334,7617.928,0.000,212.480,0.000]",
                scene_id = 20252,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4017913"] = {},
    ["4017914"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[20252_9:-1453.760,278.793,7656.507,0.000,220.649,0.000]",
                scene_id = 20252,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017915"] = {
        npcs = {
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_100:-6.623,2.863,0.053,0.000,271.949,0.000]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1235, pos = "[20252_1:-1659.641,164.992,7791.560,0.000,225.371,0.000]"}
        }
    },
    ["4017916"] = {
        npcs = {
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10672:-1311.451,241.006,7735.237]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017917"] = {
        npcs = {
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10672:-1311.451,241.006,7735.237]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017918"] = {},
    ["4017919"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_10671:-1310.432,241.006,7737.035]"}}}
}
