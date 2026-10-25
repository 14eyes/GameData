main_id = 389
local tbl = {}
local n = 38902
local v = 38903
local n2 = 38904
local n3 = 38905
local n4 = 38906
tbl[1] = 38901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["38901"] = {}
rewind_data["38902"] = {}
rewind_data["38903"] = {}
rewind_data["38904"] = {}
rewind_data["38905"] = {}
rewind_data["38906"] = {}
quest_data = {}

quest_data["38902"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q389VentiPos1",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q389DilucPos1",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            id = 1006,
            pos = "Q389QinPos1",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q389VentiPos1"}}
}

quest_data["38905"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q389VentiPos2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q389DilucPos2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            id = 1006,
            pos = "Q389QinPos2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q38906Player"}}
}
