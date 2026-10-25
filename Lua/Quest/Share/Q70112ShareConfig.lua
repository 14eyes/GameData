main_id = 70112
local tbl = {}
local n = 7011202
local v = 7011203
local n2 = 7011204
local n3 = 7011205
local n4 = 7011206
tbl[1] = 7011201
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
    ["7011201"] = {},
    ["7011202"] = {},
    ["7011203"] = {},
    ["7011204"] = {},
    ["7011205"] = {},
    ["7011206"] = {}
}

quest_data = {
    ["7011201"] = {},
    ["7011202"] = {
        npcs = {
            {
                id = 22491,
                alias = "Npc22491",
                script = "Actor/Npc/TempNPC",
                pos = "[103_258:494.674,246.556,768.758]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7011203"] = {
        npcs = {
            {
                id = 22491,
                alias = "Npc22491",
                script = "Actor/Npc/TempNPC",
                pos = "[103_264:507.836,245.006,727.776,0.000,329.800,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7011204"] = {
        npcs = {
            {
                id = 22491,
                alias = "Npc22491",
                script = "Actor/Npc/TempNPC",
                pos = "[103_264:507.836,245.006,727.776,0.000,329.800,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7011205"] = {
        npcs = {
            {
                id = 22491,
                alias = "Npc22491",
                script = "Actor/Npc/TempNPC",
                pos = "[103_265:495.497,246.331,778.371,0.000,186.891,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7011206"] = {
        npcs = {
            {
                id = 22491,
                alias = "Npc22491",
                script = "Actor/Npc/TempNPC",
                pos = "[103_265:495.497,246.331,778.371,0.000,186.891,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
