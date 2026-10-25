main_id = 23006
local tbl = {}
local n = 2300602
local v = 2300603
tbl[1] = 2300601
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
tbl3[1] = "133302080"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2300601"] = {},
    ["2300602"] = {
        npcs = {
            {
                id = 4072,
                alias = "Npc4072",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23006_01_KAZHASHAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300603"] = {
        npcs = {
            {
                id = 4072,
                alias = "Npc4072",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23006_01_KAZHASHAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2300601"] = {
        npcs = {
            {
                id = 4072,
                alias = "Npc4072",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23006_01_KAZHASHAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300602"] = {},
    ["2300603"] = {}
}
