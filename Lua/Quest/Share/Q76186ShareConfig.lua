main_id = 76186
local tbl = {}
local n = 7618602
local v = 7618603
local n2 = 7618604
tbl[1] = 7618601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7618601"] = {}, ["7618604"] = {}}

quest_data = {
    ["7618601"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17208:1800.822,224.988,10415.180]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618602"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17208:1800.822,224.988,10415.180]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618603"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17208:1800.822,224.988,10415.180]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618604"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17209:1813.489,222.929,10423.200,0.000,329.225,0.000]",
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
