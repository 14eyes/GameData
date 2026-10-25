main_id = 40082
local tbl = {}
local n = 4008202
local v = 4008205
local n2 = 4008214
local n3 = 4008215
local n4 = 4008203
local n5 = 4008206
local n6 = 4008207
local n7 = 4008213
local n8 = 4008208
local n9 = 4008212
local n10 = 4008209
local n11 = 4008210
local n12 = 4008211
local n13 = 4008204
tbl[1] = 4008201
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
tbl3[1] = "133302727"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133302720"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4008201"] = {},
    ["4008202"] = {},
    ["4008203"] = {},
    ["4008204"] = {},
    ["4008205"] = {},
    ["4008206"] = {},
    ["4008207"] = {},
    ["4008208"] = {},
    ["4008209"] = {},
    ["4008210"] = {},
    ["4008211"] = {},
    ["4008212"] = {},
    ["4008213"] = {},
    ["4008214"] = {},
    ["4008215"] = {}
}

quest_data = {
    ["4008201"] = {},
    ["4008202"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008202_N12856",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12858,
                alias = "Npc12858",
                script = "Actor/Npc/TempNPC",
                pos = "N12858_T4008213",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "N12861_T4008213",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12857,
                alias = "Npc12857",
                script = "Actor/Npc/TempNPC",
                pos = "N12857_T4008213",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12859,
                alias = "Npc12859",
                script = "Actor/Npc/TempNPC",
                pos = "N12859_T4008213",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12860,
                alias = "Npc12860",
                script = "Actor/Npc/TempNPC",
                pos = "N12860_T4008213",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30256,
                alias = "Npc30256",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N30256_T4008213",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4008203"] = {
        npcs = {
            {
                id = 12858,
                alias = "Npc12858",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008203_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008204"] = {},
    ["4008205"] = {},
    ["4008206"] = {
        npcs = {
            {
                id = 12858,
                alias = "Npc12858",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008206_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 47103, pos = "Q4008206"}}
    },
    ["4008207"] = {
        npcs = {
            {
                id = 12858,
                alias = "Npc12858",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008203_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008208"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008207_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008208_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4008208"}}
    },
    ["4008209"] = {},
    ["4008210"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008209_N12855",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008211"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008211_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30255,
                alias = "Npc30255",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N30255_T4008214",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30254,
                alias = "Npc30254",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N30254_T4008214",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30257,
                alias = "Npc30257",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N30257_T4008214",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "N12861_T4008214",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4008212"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008212_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008212_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4008213"] = {},
    ["4008214"] = {},
    ["4008215"] = {}
}
