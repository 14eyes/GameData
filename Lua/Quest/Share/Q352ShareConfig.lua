main_id = 352
local tbl = {}
local n = 35201
local v = 35202
local n2 = 35203
local n3 = 35204
local n4 = 35205
tbl[1] = 35200
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
rewind_data["35200"] = {npcs = {}}

rewind_data["35201"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q352PaimontoNPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["35202"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q352PaimonName",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["35204"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q352Queen",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["35200"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q352PaimontoNPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["35202"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q352View"}}}
