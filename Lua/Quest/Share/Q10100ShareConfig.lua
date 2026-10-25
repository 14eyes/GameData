main_id = 10100
local tbl = {}
local n = 1010002
local v = 1010003
local n2 = 1010004
local n3 = 1010005
local n4 = 1010006
local n5 = 1010044
tbl[1] = 1010001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
rewind_data = {}

rewind_data["1010003"] = {
    npcs = {
        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q1010003Lisa",
            scene_id = 3,
            data_index = 1
        }
    }
}

quest_data = {}

quest_data["1010001"] = {
    npcs = {
        {
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            id = 1007,
            pos = "Q10100Lisa",
            scene_id = 1004,
            room_id = 100401,
            data_index = 1
        },
        {
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            id = 1007,
            pos = "Q1010003Lisa",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

quest_data["1010002"] = {
    npcs = {
        {
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            id = 1007,
            pos = "Q10100Lisa",
            scene_id = 1004,
            room_id = 100401,
            data_index = 1
        },
        {
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            id = 1007,
            pos = "Q1010003Lisa",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

quest_data["1010009"] = {
    npcs = {
        {
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            id = 1007,
            pos = "Q1010009Lisa",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1010009Player"}}
}

quest_data["1010044"] = {
    gadgets = {
        {
            id = 70700005,
            pos = "Q10100Book4",
            alias = "Q10100Book4",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}
