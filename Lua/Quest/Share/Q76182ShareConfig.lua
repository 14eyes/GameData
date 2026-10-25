main_id = 76182
local tbl = {}
local n = 7618202
local v = 7618203
local n2 = 7618204
tbl[1] = 7618201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7618201"] = {}, ["7618204"] = {}}

quest_data = {
    ["7618201"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17426:2658.756,335.938,4662.404,0.000,280.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618202"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17426:2658.756,335.938,4662.404,0.000,280.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618203"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17424:2658.658,334.922,4654.793]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618204"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17426:2658.756,335.938,4662.404,0.000,280.000,0.000]",
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
