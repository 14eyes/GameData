main_id = 393
local tbl = {}
local n = 39302
tbl[1] = 39301
tbl[2] = n
sub_ids = tbl
rewind_data = {}
rewind_data["39301"] = {}
rewind_data["39302"] = {}
quest_data = {}

quest_data["39302"] = {
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
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q389VentiPos2"}}
}
