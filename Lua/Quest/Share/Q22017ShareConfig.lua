main_id = 22017
local tbl = {}
local n = 2201702
local v = 2201703
local n2 = 2201704
local n3 = 2201706
local n4 = 2201705
tbl[1] = 2201701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220150"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100861,100862,100863"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2201701"] = {},
    ["2201702"] = {
        npcs = {
            {
                id = 3033,
                alias = "Npc3033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Shigeru",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Junkichi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201703"] = {
        npcs = {
            {
                id = 3033,
                alias = "Npc3033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Shigeru",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Junkichi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2201701"] = {
        npcs = {
            {
                id = 3033,
                alias = "Npc3033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Shigeru",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Junkichi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201702"] = {},
    ["2201703"] = {},
    ["2201704"] = {},
    ["2201705"] = {},
    ["2201706"] = {}
}
