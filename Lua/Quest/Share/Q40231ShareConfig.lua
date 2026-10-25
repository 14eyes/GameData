main_id = 40231
local tbl = {}
local n = 4023101
local v = 4023102
local n2 = 4023103
local n3 = 4023104
local n4 = 4023105
local n5 = 4023106
local n6 = 4023117
local n7 = 4023119
local n8 = 4023121
local n9 = 4023123
local n10 = 4023125
local n11 = 4023118
local n12 = 4023120
local n13 = 4023122
local n14 = 4023124
local n15 = 4023126
local n16 = 4023107
local n17 = 4023127
local n18 = 4023108
local n19 = 4023109
local n20 = 4023110
local n21 = 4023111
local n22 = 4023112
local n23 = 4023113
local n24 = 4023114
local n25 = 4023129
local n26 = 4023116
local n27 = 4023115
tbl[1] = 4023128
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "201004013"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10538"}, {"10539"}, {"190"}, {"191"}, {"192"}, {"193"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4023101"] = {},
    ["4023102"] = {},
    ["4023103"] = {},
    ["4023104"] = {},
    ["4023105"] = {},
    ["4023106"] = {},
    ["4023107"] = {},
    ["4023108"] = {},
    ["4023109"] = {},
    ["4023110"] = {},
    ["4023111"] = {},
    ["4023112"] = {},
    ["4023113"] = {},
    ["4023114"] = {},
    ["4023115"] = {},
    ["4023116"] = {},
    ["4023117"] = {},
    ["4023118"] = {},
    ["4023119"] = {},
    ["4023120"] = {},
    ["4023121"] = {},
    ["4023122"] = {},
    ["4023123"] = {},
    ["4023124"] = {},
    ["4023125"] = {},
    ["4023126"] = {},
    ["4023128"] = {},
    ["4023129"] = {}
}

quest_data = {
    ["4023101"] = {
        npcs = {
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_291:16.462,0.010,5.216,0.000,202.670,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1303, pos = "[20330_13:2186.074,211.153,-1026.490,0.000,28.799,0.000]"}
        }
    },
    ["4023102"] = {},
    ["4023103"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_2:2197.755,211.772,-1002.929]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20330, pos = "[20330_8:2215.922,209.669,-962.297,0.000,27.171,0.000]"}}
    },
    ["4023104"] = {},
    ["4023105"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_1:2231.953,209.990,-929.542]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023106"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_11:2210.034,209.990,-878.706,0.000,264.817,0.000]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_10:2286.766,213.991,-906.692,0.000,137.552,0.000]",
                scene_id = 20330,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4023107"] = {},
    ["4023108"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_5:2317.203,249.990,-761.033]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023109"] = {},
    ["4023110"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_7:2317.309,249.990,-760.649]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023111"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1304, pos = "[20331_3:10.740,-0.119,75.910,0.000,191.319,0.000]"}}
    },
    ["4023112"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[20331_2:8.502,-0.117,73.057,0.000,169.930,0.000]",
                scene_id = 20331,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023113"] = {},
    ["4023114"] = {},
    ["4023115"] = {
        npcs = {
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_292:-30.041,-5.000,0.022,0.000,91.004,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_318:17.793,0.010,8.635,0.000,178.237,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_319:17.751,0.010,7.269]",
                scene_id = 1004,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_320:16.753,0.010,7.086,0.000,39.844,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            },
            {
                id = 30954,
                alias = "Npc30954",
                script = "Actor/Npc/TempNPC",
                pos = "Q10202Door",
                scene_id = 1004,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["4023116"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_309:-0.006,0.038,2.609]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1004, pos = "[1004_293:0.040,0.000,6.944,0.000,180.000,0.000]"}}
    },
    ["4023117"] = {},
    ["4023118"] = {},
    ["4023119"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_11:2210.034,209.990,-878.706,0.000,264.817,0.000]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023120"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_10:2286.766,213.991,-906.692,0.000,137.552,0.000]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023121"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_10:2286.766,213.991,-906.692,0.000,137.552,0.000]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023122"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_11:2210.034,209.990,-878.706,0.000,264.817,0.000]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023123"] = {},
    ["4023124"] = {},
    ["4023125"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_10:2286.766,213.991,-906.692,0.000,137.552,0.000]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023126"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[20330_11:2210.034,209.990,-878.706,0.000,264.817,0.000]",
                scene_id = 20330,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023127"] = {},
    ["4023128"] = {},
    ["4023129"] = {}
}
