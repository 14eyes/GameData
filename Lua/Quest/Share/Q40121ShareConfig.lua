main_id = 40121
local tbl = {}
local n = 4012102
local v = 4012103
local n2 = 4012104
tbl[1] = 4012101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133302764"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4012101"] = {},
    ["4012102"] = {
        npcs = {
            {
                id = 30375,
                alias = "Npc30375",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201452:-385.813,243.268,2645.666,0.000,144.784,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012103"] = {
        npcs = {
            {
                id = 30375,
                alias = "Npc30375",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201452:-385.813,243.268,2645.666,0.000,144.784,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012104"] = {
        npcs = {
            {
                id = 30375,
                alias = "Npc30375",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201452:-385.813,243.268,2645.666,0.000,144.784,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4012101"] = {
        npcs = {
            {
                id = 30375,
                alias = "Npc30375",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201452:-385.813,243.268,2645.666,0.000,144.784,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012102"] = {},
    ["4012103"] = {},
    ["4012104"] = {}
}
