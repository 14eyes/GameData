main_id = 354
local tbl = {}
local n = 35402
local v = 35403
local n2 = 35404
local n3 = 35405
tbl[1] = 35401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}

rewind_data["35402"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q354Ambor2",
            data_index = 0,
            scene_id = 3
        }
    }
}

rewind_data["35403"] = {}
rewind_data["35404"] = {avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q354SetAvatar"}}
quest_data = {}

quest_data["35401"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q354AmborBorn",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["35402"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q301Hidden",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q301Hidden",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["35403"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q356Ambor2",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["35404"] = {
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q301Hidden",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q301Hidden",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
