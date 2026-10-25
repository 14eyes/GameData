main_id = 380
local tbl = {}
local n = 38002
local v = 38003
local n2 = 38004
tbl[1] = 38001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}
rewind_data["38001"] = {}
rewind_data["38002"] = {}
rewind_data["38003"] = {}
rewind_data["38004"] = {}
quest_data = {}

quest_data["38003"] = {
    gadgets = {
        {
            id = 70211021,
            pos = "Q484Print5",
            alias = "Chest380",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = true,
            chest_drop_id = 1010500
        }
    }
}

quest_data["38004"] = {
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q380Diluc",
            data_index = 0,
            scene_id = 3
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q380Qin",
            data_index = 0,
            scene_id = 3
        },
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q380Paimon",
            data_index = 0,
            scene_id = 3
        }
    }
}
