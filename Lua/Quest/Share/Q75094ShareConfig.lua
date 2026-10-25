main_id = 75094
local tbl = {}
local n = 7509402
local v = 7509405
local n2 = 7509404
local n3 = 7509406
local n4 = 7509403
tbl[1] = 7509401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7509401"] = {},
    ["7509402"] = {},
    ["7509403"] = {},
    ["7509404"] = {},
    ["7509405"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9166:236.015,237.982,9640.104]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7509406"] = {}
}

quest_data = {
    ["7509401"] = {},
    ["7509402"] = {},
    ["7509403"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9163:223.847,249.753,9648.963,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7509404"] = {},
    ["7509405"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9166:236.015,237.982,9640.104]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7509406"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9165:238.130,237.950,9643.300]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9166:236.015,237.982,9640.104]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
