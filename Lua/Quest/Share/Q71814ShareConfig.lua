main_id = 71814
local tbl = {}
local n = 7181402
local v = 7181403
local n2 = 7181404
local n3 = 7181405
tbl[1] = 7181401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133107941"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100713,100714"}}
    }
}

fail_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100713,100714"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133107941"}}
    }
}

cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7181402"] = {}, ["7181403"] = {}, ["7181404"] = {}, ["7181405"] = {}}

quest_data = {
    ["7181401"] = {},
    ["7181402"] = {},
    ["7181403"] = {},
    ["7181404"] = {},
    ["7181405"] = {
        npcs = {
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71814Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
