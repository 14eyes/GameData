main_id = 992
local tbl = {}
local n = 99202
local v = 99203
tbl[1] = 99201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
AmborData = {AmborID = 1002, Ambor = "Ambor"}
rewind_data = {}
quest_data = {}

quest_data["99201"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q991PosD",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["99202"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q991PosE",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["99203"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q991PosF",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
