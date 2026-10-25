main_id = 20006
local tbl = {}
local n = 2000602
local v = 2000603
local n2 = 2000604
local n3 = 2000605
local n4 = 2000606
local n5 = 2000607
local n6 = 2000608
local n7 = 2000609
local n8 = 2000610
tbl[1] = 2000601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
rewind_data = {}

rewind_data["2000604"] = {
    npcs = {
        {
            id = 159401,
            alias = "Npc159401",
            script = "Actor/Npc/TempNPC",
            pos = "EventNpc102",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data = {}

quest_data["2000602"] = {
    npcs = {
        {
            id = 159401,
            alias = "Npc159401",
            script = "Actor/Npc/TempNPC",
            pos = "EventNpc102",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data["2000604"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "EventNpc102",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

finish_action = {}
fail_action = {}
cancel_action = {}

cancel_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_REFRESH_GROUP_SUITE = {}, QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100305,100304"}}}
}
