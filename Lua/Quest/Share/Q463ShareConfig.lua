main_id = 463
local tbl = {}
local n = 46301
local v = 46302
local n2 = 46303
local n3 = 46304
local n4 = 46307
tbl[1] = 46300
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["46301"] = {}
quest_data = {}

quest_data["46300"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q462PuzzleEnd",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["46301"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q463Dungeon",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["46303"] = {
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q463Born",
            scene_id = 20016,
            room_id = 1,
            data_index = 0
        }
    }
}
