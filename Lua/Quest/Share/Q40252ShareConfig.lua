main_id = 40252
local tbl = {}
local n = 4025202
tbl[1] = 4025201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4025201"] = {}, ["4025202"] = {}}

quest_data = {
    ["4025201"] = {},
    ["4025202"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500330:2428.629,347.320,2401.700,0.000,234.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500328:2427.631,347.320,2402.052,0.000,177.330,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17221,
                alias = "Npc17221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500329:2426.758,347.320,2401.572,0.000,103.512,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 17224,
                alias = "Npc17224",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500331:2428.607,347.320,2400.739,1.677,298.685,358.721]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 17225,
                alias = "Npc17225",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500332:2426.780,347.320,2400.601,0.000,57.313,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
