main_id = 22048
local tbl = {}
local n = 2204802
local v = 2204803
tbl[1] = 2204801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133217201"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2204801"] = {},
    ["2204802"] = {
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
    ["2204803"] = {
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
    ["2204801"] = {
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
    ["2204802"] = {},
    ["2204803"] = {}
}
