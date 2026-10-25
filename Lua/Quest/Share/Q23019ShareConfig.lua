main_id = 23019
local tbl = {}
local n = 2301902
local v = 2301905
local n2 = 2301903
local n3 = 2301904
tbl[1] = 2301901
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
tbl3[1] = "133302104"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2301901"] = {},
    ["2301902"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2301904"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2301901"] = {
        npcs = {
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2301902"] = {},
    ["2301903"] = {},
    ["2301904"] = {},
    ["2301905"] = {}
}
