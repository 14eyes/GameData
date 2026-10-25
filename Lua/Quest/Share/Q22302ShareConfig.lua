main_id = 22302
local tbl = {}
local n = 2230202
local v = 2230203
local n2 = 2230204
tbl[1] = 2230201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["2230204"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q22302FYSH",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["2230202"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q22302FYSH",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

finish_action = {}
fail_action = {}
cancel_action = {}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100386,100387"}}}}
