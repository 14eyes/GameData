main_id = 74249
local tbl = {}
local n = 7424902
local v = 7424903
local n2 = 7424904
tbl[1] = 7424901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7424901"] = {}, ["7424904"] = {}}

quest_data = {
    ["7424901"] = {
        npcs = {
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17350:3475.601,459.012,3679.287,0.000,17.245,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7424902"] = {
        npcs = {
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17350:3475.601,459.012,3679.287,0.000,17.245,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7424903"] = {
        npcs = {
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17345:3460.074,459.000,3674.878]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7424904"] = {
        npcs = {
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17350:3475.601,459.012,3679.287,0.000,17.245,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    dontTickPause = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    freestyleParam = {isSit = true},
                    emotionParam = {autoBlink = true}
                }
            }
        }
    }
}
