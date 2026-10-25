main_id = 381
local tbl = {}
local n = 38102
local v = 38103
local n2 = 38104
local n3 = 38105
tbl[1] = 38101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}
rewind_data["38101"] = {}
rewind_data["38102"] = {}
rewind_data["38103"] = {}
rewind_data["38104"] = {}
rewind_data["38105"] = {}
quest_data = {}
quest_data["38101"] = {trial_actors = {}, actors = {}, items = {}, monsters = {}, gadgets = {}}

quest_data["38105"] = {
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q381Diluc",
            data_index = 0,
            scene_id = 1006,
            room_id = 0
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q381Qin",
            data_index = 0,
            scene_id = 1006,
            room_id = 0
        },
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q381Paimon",
            data_index = 0,
            scene_id = 1006,
            room_id = 0
        }
    }
}
