main_id = 79082
local tbl = {}
local n = 7908202
local v = 7908203
tbl[1] = 7908201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7908201"] = {},
    ["7908202"] = {
        npcs = {
            {
                id = 21624,
                alias = "Npc21624",
                script = "Actor/Npc/TempNPC",
                pos = "[100_346:1199.892,200.172,713.660,0.000,292.663,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7908203"] = {}
}

quest_data = {
    ["7908201"] = {
        npcs = {
            {
                id = 21624,
                alias = "Npc21624",
                script = "Actor/Npc/TempNPC",
                pos = "[100_346:1199.892,200.172,713.660,0.000,292.663,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7908202"] = {},
    ["7908203"] = {
        npcs = {
            {
                id = 21624,
                alias = "Npc21624",
                script = "Actor/Npc/TempNPC",
                pos = "[100_346:1199.892,200.172,713.660,0.000,292.663,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
