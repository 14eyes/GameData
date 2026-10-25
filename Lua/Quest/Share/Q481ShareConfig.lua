main_id = 481
local tbl = {}
local n = 48102
local v = 48103
local n2 = 48104
local n3 = 48105
local n4 = 48106
tbl[1] = 48101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}

rewind_data["48101"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q481Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["48102"] = {}
rewind_data["48103"] = {}
quest_data = {}

quest_data["48101"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q481Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48102"] = {trial_actors = {}, actors = {}, items = {}, monsters = {}, gadgets = {}}
