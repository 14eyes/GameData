main_id = 40229
local tbl = {}
local n = 4022901
local v = 4022913
local n2 = 4022902
local n3 = 4022903
local n4 = 4022904
local n5 = 4022905
local n6 = 4022906
local n7 = 4022907
local n8 = 4022911
local n9 = 4022914
local n10 = 4022908
local n11 = 4022915
local n12 = 4022909
local n13 = 4022910
tbl[1] = 4022912
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "201004013"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121493"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10538"}, {"10539"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4022901"] = {},
    ["4022902"] = {},
    ["4022903"] = {},
    ["4022904"] = {},
    ["4022905"] = {},
    ["4022906"] = {},
    ["4022907"] = {},
    ["4022908"] = {
        npcs = {
            {
                id = 16145,
                alias = "Npc16145",
                script = "Actor/Npc/TempNPC",
                pos = "[20328_18:2565.924,214.701,-1324.203]",
                scene_id = 20328,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022909"] = {},
    ["4022910"] = {},
    ["4022911"] = {},
    ["4022912"] = {},
    ["4022913"] = {},
    ["4022914"] = {
        npcs = {
            {
                id = 16145,
                alias = "Npc16145",
                script = "Actor/Npc/TempNPC",
                pos = "[20328_18:2565.924,214.701,-1324.203]",
                scene_id = 20328,
                room_id = 0,
                data_index = 1
            }
        },
        avatar = {
            offline_dungeon_id = 1301,
            scene_id = 20328,
            pos = "[20328_17:2548.133,211.480,-1303.580,0.000,337.209,0.000]"
        }
    },
    ["4022915"] = {}
}

quest_data = {
    ["4022901"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1301, pos = "[20328_6:2747.127,194.630,-1718.695,0.000,352.739,0.000]"}
        }
    },
    ["4022902"] = {
        npcs = {
            {
                id = 16145,
                alias = "Npc16145",
                script = "Actor/Npc/TempNPC",
                pos = "[20328_1:2745.856,194.760,-1715.299,0.000,148.881,0.000]",
                scene_id = 20328,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022903"] = {},
    ["4022904"] = {
        npcs = {
            {
                id = 16145,
                alias = "Npc16145",
                script = "Actor/Npc/TempNPC",
                pos = "[20328_2:2606.167,227.554,-1553.767,0.000,111.004,0.000]",
                scene_id = 20328,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022905"] = {},
    ["4022906"] = {},
    ["4022907"] = {
        npcs = {
            {
                id = 16145,
                alias = "Npc16145",
                script = "Actor/Npc/TempNPC",
                pos = "[20328_4:2564.060,213.521,-1330.059,0.000,193.970,0.000]",
                scene_id = 20328,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022908"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[20328_5:2382.355,206.505,-1147.845]",
                scene_id = 20328,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1004, pos = "[1004_302:15.312,0.010,5.995]"}}
    },
    ["4022909"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_317:18.749,0.010,7.329]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_290:18.773,0.010,8.564,0.000,216.665,0.000]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15625:2195.821,230.219,-782.686,0.000,20.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1322,
                alias = "Npc1322",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_315:16.048,0.010,5.246,0.000,180.000,0.000]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 4
            }
        }
    },
    ["4022910"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_317:18.749,0.010,7.329]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_290:18.773,0.010,8.564,0.000,216.665,0.000]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15625:2195.821,230.219,-782.686,0.000,20.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1322,
                alias = "Npc1322",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_315:16.048,0.010,5.246,0.000,180.000,0.000]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 4
            },
            {
                id = 1663,
                alias = "Npc1663",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15627:2196.578,230.219,-781.189,0.000,200.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30973,
                alias = "Npc30973",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15449:2205.356,230.237,-802.035,0.000,101.012,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30974,
                alias = "Npc30974",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15630:2211.112,230.089,-779.119,0.000,165.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30977,
                alias = "Npc30977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15631:2211.826,230.089,-781.228,0.000,345.215,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30991,
                alias = "Npc30991",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15767:2204.640,230.860,-803.608,0.000,60.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4022911"] = {
        npcs = {
            {
                id = 16145,
                alias = "Npc16145",
                script = "Actor/Npc/TempNPC",
                pos = "[20328_18:2565.924,214.701,-1324.203]",
                scene_id = 20328,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022912"] = {},
    ["4022913"] = {},
    ["4022914"] = {},
    ["4022915"] = {}
}
