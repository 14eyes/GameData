main_id = 40112
local tbl = {}
local n = 4011202
local v = 4011203
local n2 = 4011204
local n3 = 4011205
local n4 = 4011206
local n5 = 4011207
tbl[1] = 4011201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133307566"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4011201"] = {},
    ["4011203"] = {},
    ["4011204"] = {},
    ["4011206"] = {},
    ["4011207"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011207_N10090",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4011201"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4011201_N1006",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_230:18.460,0.010,7.200,0.036,1.741,0.850]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[1004_231:17.760,0.010,8.860,0.228,123.993,1.210]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q461KaeyaIn",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4011202"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4011201_N1006",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_230:18.460,0.010,7.200,0.036,1.741,0.850]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[1004_231:17.760,0.010,8.860,0.228,123.993,1.210]",
                scene_id = 1004,
                room_id = 100402,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q461KaeyaIn",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4011203_N10090"}}
    },
    ["4011203"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011203_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011204"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011204_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201517:-777.011,160.460,2412.142,0.000,217.243,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4011205"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011204_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201517:-777.011,160.460,2412.142,0.000,217.243,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4011206_N10090"}}
    },
    ["4011206"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011206_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 10, pos = "Q4011206_Transmit"}}
    },
    ["4011207"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011207_N10090",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
