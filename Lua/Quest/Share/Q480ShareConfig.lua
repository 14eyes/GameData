main_id = 480
local tbl = {}
local n = 48001
local v = 48002
local n2 = 48003
local n3 = 48004
tbl[1] = 48005
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}

rewind_data["48001"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q48001Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["48003"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q48001Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["48004"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q48004Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["48005"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q48001Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48001"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q48001Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48002"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q48001Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {
        {id = 70710005, pos = "Q48002Wind101", alias = "Wind1", scene_id = 3, room_id = 0},
        {id = 70710005, pos = "Q48002Wind102", alias = "Wind2", scene_id = 3, room_id = 0},
        {id = 70690001, pos = "Q48002Wind102", alias = "Wind3", scene_id = 3, room_id = 0}
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q48001Player"}}
}

quest_data["48003"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q48001Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48004"] = {
    npcs = {
        {
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            id = 1002,
            pos = "Q48004Ambor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
