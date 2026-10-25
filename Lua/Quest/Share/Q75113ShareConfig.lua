main_id = 75113
local tbl = {}
local n = 7511302
local v = 7511303
tbl[1] = 7511301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7511301"] = {},
    ["7511302"] = {
        npcs = {
            {
                id = 6423,
                alias = "Npc6423",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10657:-2396.456,225.299,9765.566,0.000,241.072,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7511303"] = {}
}

quest_data = {
    ["7511301"] = {
        npcs = {
            {
                id = 6423,
                alias = "Npc6423",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10657:-2396.456,225.299,9765.566,0.000,241.072,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7511302"] = {
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_10737:-2410.006,220.158,9749.644,0.000,264.507,0.000]"},
            {point_id = 2, scene_id = 3, pos = "[3_10750:-2400.119,225.048,9765.676,0.000,51.553,0.000]"}
        }
    },
    ["7511303"] = {
        npcs = {
            {
                id = 6423,
                alias = "Npc6423",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10657:-2396.456,225.299,9765.566,0.000,241.072,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
