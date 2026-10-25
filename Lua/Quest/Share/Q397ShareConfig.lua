main_id = 397
local tbl = {}
local n = 39702
local v = 39703
local n2 = 39704
tbl[1] = 39701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}
rewind_data["39701"] = {npcs = {}}
rewind_data["39702"] = {npcs = {}}
rewind_data["39703"] = {npcs = {}}
rewind_data["39704"] = {npcs = {}}
quest_data = {}

quest_data["39702"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q39702Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q39702Diluc",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            id = 1006,
            pos = "Q39702Qin",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["39704"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q384Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q384Diluc",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            id = 1006,
            pos = "Q384Qin",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q38406Player"}}
}
