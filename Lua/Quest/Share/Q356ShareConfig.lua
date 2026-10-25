main_id = 356
local tbl = {}
local n = 35602
local v = 35603
local n2 = 35604
local n3 = 35605
local n4 = 35606
tbl[1] = 35601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["35601"] = {}
quest_data = {}

quest_data["35601"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q356Ambor2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q35601Paimon",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["35603"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q356Ambor4",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["35605"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q356Player"}}}

quest_data["35606"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q356Target2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
