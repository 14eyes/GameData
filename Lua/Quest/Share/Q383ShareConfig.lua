main_id = 383
local tbl = {}
local n = 38302
local v = 38303
local n2 = 38304
tbl[1] = 38301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["38302"] = {
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q383DilucTemp",
            data_index = 0
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q383WendyTemp",
            data_index = 0
        },
        {id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q383QinTemp", data_index = 0}
    }
}

rewind_data["38303"] = {
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q383DilucTemp",
            data_index = 0
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q383WendyTemp",
            data_index = 0
        },
        {id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q383QinTemp", data_index = 0}
    }
}

rewind_data["38304"] = {
    avatar = {scene_id = 3, pos = "Q38302Player"},
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q383DilucTemp",
            data_index = 0
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q383WendyTemp",
            data_index = 0
        },
        {id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q383QinTemp", data_index = 0}
    }
}

quest_data = {}

quest_data["38302"] = {
    gadgets = {
        {id = 70300202, pos = "Q383Tear102", alias = "Tears1", scene_id = 3, room_id = 0},
        {id = 70300202, pos = "Q383Tear101", alias = "Tears2", scene_id = 3, room_id = 0},
        {id = 70300202, pos = "Q383Tear103", alias = "Tears3", scene_id = 3, room_id = 0},
        {id = 70300042, pos = "Q383Tear202", alias = "Tears4", scene_id = 3, room_id = 0},
        {id = 70300042, pos = "Q383Tear201", alias = "Tears5", scene_id = 3, room_id = 0},
        {id = 70300042, pos = "Q383Tear203", alias = "Tears6", scene_id = 3, room_id = 0},
        {id = 70300201, pos = "Q383Harp", alias = "Harp01", scene_id = 3, room_id = 0}
    },
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q383DilucTemp",
            data_index = 0,
            scene_id = 3
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q383WendyTemp",
            data_index = 0,
            scene_id = 3
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q383QinTemp",
            data_index = 0,
            scene_id = 3
        }
    }
}
