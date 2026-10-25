main_id = 21026
local tbl = {}
local n = 2102602
local v = 2102603
tbl[1] = 2102601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133105069"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101645"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2102601"] = {},
    ["2102602"] = {
        npcs = {
            {
                id = 2411,
                alias = "Npc2411",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102601_N2411",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2102603"] = {
        npcs = {
            {
                id = 2411,
                alias = "Npc2411",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102601_N2411",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2102601"] = {
        npcs = {
            {
                id = 2411,
                alias = "Npc2411",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102601_N2411",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2102602"] = {},
    ["2102603"] = {}
}
