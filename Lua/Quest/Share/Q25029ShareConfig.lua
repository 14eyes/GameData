main_id = 25029
local tbl = {}
local n = 2502902
local v = 2502903
local n2 = 2502905
local n3 = 2502904
tbl[1] = 2502901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133504066"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2502901"] = {},
    ["2502904"] = {},
    ["2502905"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502901_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8624:-1790.924,128.959,8027.783,0.000,278.810,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502902"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502901_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8624:-1790.924,128.959,8027.783,0.000,278.810,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2502901"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502901_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8624:-1790.924,128.959,8027.783,0.000,278.810,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502902"] = {},
    ["2502903"] = {},
    ["2502904"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8621:-1812.766,129.530,8032.286,0.000,218.574,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8623:-1816.121,129.746,8031.901,0.000,140.395,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502905"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400185:-1803.912,184.727,7926.805,0.000,48.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350400178:-1814.054,129.713,8029.393]"}}
    }
}
