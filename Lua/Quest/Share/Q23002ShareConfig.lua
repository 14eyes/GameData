main_id = 23002
local tbl = {}
local n = 2300202
local v = 2300203
local n2 = 2300204
local n3 = 2300206
local n4 = 2300205
tbl[1] = 2300201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101955"}}}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133302074"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101955"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2300201"] = {},
    ["2300202"] = {
        npcs = {
            {
                id = 4024,
                alias = "Npc4024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300201_N3066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300203"] = {
        npcs = {
            {
                id = 4024,
                alias = "Npc4024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300201_N3066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300204"] = {
        npcs = {
            {
                id = 4024,
                alias = "Npc4024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300201_N3066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300205"] = {
        npcs = {
            {
                id = 4024,
                alias = "Npc4024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300201_N3066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300206"] = {
        npcs = {
            {
                id = 4024,
                alias = "Npc4024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300201_N3066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2300201"] = {
        npcs = {
            {
                id = 4024,
                alias = "Npc4024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300201_N3066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300202"] = {},
    ["2300203"] = {},
    ["2300204"] = {},
    ["2300205"] = {},
    ["2300206"] = {}
}
