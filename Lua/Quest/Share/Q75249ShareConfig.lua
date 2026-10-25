main_id = 75249
local tbl = {}
local n = 7524902
local v = 7524903
tbl[1] = 7524901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7524901"] = {},
    ["7524902"] = {},
    ["7524903"] = {
        npcs = {
            {
                id = 21946,
                alias = "Npc21946",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200019:1447.180,202.742,15028.680,0.000,129.448,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7524901"] = {
        npcs = {
            {
                id = 21946,
                alias = "Npc21946",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200019:1447.180,202.742,15028.680,0.000,129.448,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7524902"] = {
        npcs = {
            {
                id = 21946,
                alias = "Npc21946",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200019:1447.180,202.742,15028.680,0.000,129.448,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21947,
                alias = "Npc21947",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200020:1504.962,201.117,15005.850,0.000,5.984,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7524903"] = {
        npcs = {
            {
                id = 21947,
                alias = "Npc21947",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200021:1505.794,200.877,15005.420,0.000,240.727,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
