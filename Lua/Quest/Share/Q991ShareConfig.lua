main_id = 991
local tbl = {}
local n = 99102
local v = 99103
tbl[1] = 99101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
AmborData = {AmborID = 1002, Ambor = "Ambor"}
rewind_data = {}
quest_data = {}

quest_data["99101"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q991PosA",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["99102"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q991PosB",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["99103"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q991PosC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
