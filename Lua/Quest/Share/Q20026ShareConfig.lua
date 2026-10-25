main_id = 20026
local tbl = {}
local n = 2002602
local v = 2002603
local n2 = 2002604
local n3 = 2002605
local n4 = 2002606
local n5 = 2002607
local n6 = 2002608
tbl[1] = 2002601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
rewind_data["2002601"] = {}
rewind_data["2002602"] = {}
quest_data = {}

quest_data["2002605"] = {
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
    SERVER = {QUEST_EXEC_REFRESH_GROUP_SUITE = {}, QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100309,100312"}}}
}
