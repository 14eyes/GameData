main_id = 75244
local tbl = {}
local n = 7524402
local v = 7524403
local n2 = 7524404
local n3 = 7524405
tbl[1] = 7524401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7524401"] = {},
    ["7524402"] = {
        npcs = {
            {
                id = 6520,
                alias = "Npc6520",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352000001:-200.938,200.136,13790.020,0.000,299.191,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7524403"] = {},
    ["7524404"] = {},
    ["7524405"] = {
        npcs = {
            {
                id = 6535,
                alias = "Npc6535",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352000001:-200.938,200.136,13790.020,0.000,299.191,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7524401"] = {
        npcs = {
            {
                id = 6520,
                alias = "Npc6520",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352000001:-200.938,200.136,13790.020,0.000,299.191,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7524402"] = {},
    ["7524403"] = {
        npcs = {
            {
                id = 6535,
                alias = "Npc6535",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352400001:-200.938,200.136,13790.020,0.000,347.001,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7524404"] = {},
    ["7524405"] = {}
}
