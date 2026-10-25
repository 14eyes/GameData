main_id = 482
local tbl = {}
local n = 48202
local v = 48203
local n2 = 48209
local n3 = 48207
local n4 = 48204
local n5 = 48208
local n6 = 48205
tbl[1] = 48201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
rewind_data["48201"] = {}

rewind_data["48202"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q48202Ambor",
            data_index = 0
        }
    }
}

rewind_data["48204"] = {}
rewind_data["48205"] = {}
quest_data = {}
quest_data["48202"] = {trial_actors = {}, actors = {}, items = {}, monsters = {}, gadgets = {}}
