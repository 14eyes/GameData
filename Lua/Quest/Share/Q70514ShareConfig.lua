main_id = 70514
local tbl = {}
local n = 7051402
local v = 7051403
local n2 = 7051404
tbl[1] = 7051401
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
tbl3[1] = "133003070"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101861"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7051401"] = {},
    ["7051402"] = {
        npcs = {
            {
                id = 30217,
                alias = "Npc30217",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051401_N30217",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051403"] = {
        npcs = {
            {
                id = 30217,
                alias = "Npc30217",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051401_N30217",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051404"] = {
        npcs = {
            {
                id = 30217,
                alias = "Npc30217",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051401_N30217",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7051401"] = {
        npcs = {
            {
                id = 30217,
                alias = "Npc30217",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051401_N30217",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1437,
                alias = "Npc1437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051401_N1437",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7051402"] = {},
    ["7051403"] = {},
    ["7051404"] = {}
}
