main_id = 394
local tbl = {}
local n = 39402
local v = 39403
tbl[1] = 39401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
rewind_data = {}

rewind_data["39401"] = {
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
    }
}

rewind_data["39402"] = {}
local v2 = rewind_data
local tbl2 = {}
local quest_var = {}
local n2 = -1
local n3 = -1
local n4 = -1
local n5 = -1
quest_var[1] = 2
quest_var[2] = n2
quest_var[3] = n3
quest_var[4] = n4
quest_var[5] = n5
tbl2.quest_var = quest_var
v2["39403"] = tbl2
quest_data = {}

quest_data["39403"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q396Wendy",
            scene_id = 1008,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            id = 1008,
            pos = "Q396BBR",
            scene_id = 1008,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            id = 1006,
            pos = "Q396Qin",
            scene_id = 1008,
            room_id = 1,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q39801Player"}}
}
