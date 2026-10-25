main_id = 384
local tbl = {}
local n = 38402
local v = 38403
local n2 = 38404
local n3 = 38405
local n4 = 38406
tbl[1] = 38401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["38401"] = {}
rewind_data["38402"] = {}

rewind_data["38403"] = {
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q384DilucTemp",
            data_index = 0
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q384WendyTemp",
            data_index = 0
        },
        {id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q384QinTemp", data_index = 0}
    }
}

rewind_data["38404"] = {
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q384DilucTemp",
            data_index = 0
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q384WendyTemp",
            data_index = 0
        },
        {id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q384QinTemp", data_index = 0}
    }
}

rewind_data["38405"] = {
    npcs = {
        {id = 1009, alias = "Diluc", script = "Actor/Quest/Q376/Diluc", pos = "Q38404Diluc", data_index = 0},
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q38404Venti",
            data_index = 0
        },
        {id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q38404Qin", data_index = 0}
    }
}

rewind_data["38406"] = {}
quest_data = {}

quest_data["38402"] = {
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q384DilucTemp",
            data_index = 0,
            scene_id = 3
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q384WendyTemp",
            data_index = 0,
            scene_id = 3
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q384QinTemp",
            data_index = 0,
            scene_id = 3
        }
    }
}
