main_id = 360
local tbl = {}
local n = 36003
local v = 36004
local n2 = 36005
tbl[1] = 36001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}
rewind_data["36001"] = {}
rewind_data["36003"] = {}

rewind_data["36004"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q360Ambor1",
            data_index = 0,
            scene_id = 3
        }
    }
}

rewind_data["36005"] = {}
quest_data = {}

quest_data["36003"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q360Ambor1",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["36004"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q301Hidden",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
