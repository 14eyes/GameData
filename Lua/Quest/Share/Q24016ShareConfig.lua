main_id = 24016
local tbl = {}
local n = 2401602
local v = 2401603
local n2 = 2401604
tbl[1] = 2401601
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
tbl3[1] = "133409054"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133409385"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2401601"] = {},
    ["2401604"] = {
        npcs = {
            {
                id = 5256,
                alias = "Npc5256",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401601_N5256",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401602"] = {
        npcs = {
            {
                id = 5256,
                alias = "Npc5256",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401601_N5256",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2401601"] = {
        npcs = {
            {
                id = 5256,
                alias = "Npc5256",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401601_N5256",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401602"] = {},
    ["2401603"] = {},
    ["2401604"] = {}
}
