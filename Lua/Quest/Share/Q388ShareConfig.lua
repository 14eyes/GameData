main_id = 388
local tbl = {}
local n = 38802
local v = 38803
local n2 = 38804
local n3 = 38805
local n4 = 38806
tbl[1] = 38801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["38801"] = {}
rewind_data["38802"] = {}
rewind_data["38803"] = {}

rewind_data["38804"] = {
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q38802Venti",
            data_index = 0
        },
        {id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q38802Qin", data_index = 0},
        {id = 1009, alias = "Diluc", script = "Actor/Quest/Q376/Diluc", pos = "Q38802Diluc", data_index = 0}
    }
}

rewind_data["38805"] = {}
rewind_data["38806"] = {}
quest_data = {}

quest_data["38803"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q38802Venti",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q38802Diluc",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            id = 1006,
            pos = "Q38802Qin",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q38802Player"}}
}

quest_data["38806"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q38802Venti",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q38802Diluc",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            id = 1006,
            pos = "Q38802Qin",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q38804Player"}}
}
