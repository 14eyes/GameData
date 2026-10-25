main_id = 22042
local tbl = {}
local n = 2204202
local v = 2204203
local n2 = 2204204
tbl[1] = 2204201
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
tbl3[1] = "133217148"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2204201"] = {},
    ["2204202"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22041_QINZI",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204204"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22041_QINZI",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2204201"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22041_QINZI",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204202"] = {},
    ["2204203"] = {},
    ["2204204"] = {}
}
