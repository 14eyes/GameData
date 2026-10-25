main_id = 74253
local tbl = {}
local n = 7425302
local v = 7425303
local n2 = 7425304
tbl[1] = 7425301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7425301"] = {}, ["7425304"] = {}}

quest_data = {
    ["7425301"] = {
        npcs = {
            {
                id = 16920,
                alias = "Npc16920",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17426:2658.756,335.938,4662.404,0.000,280.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16922,
                alias = "Npc16922",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17427:2657.066,335.955,4661.332]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7425302"] = {
        npcs = {
            {
                id = 16920,
                alias = "Npc16920",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17426:2658.756,335.938,4662.404,0.000,280.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16922,
                alias = "Npc16922",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17427:2657.066,335.955,4661.332]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7425303"] = {
        npcs = {
            {
                id = 16920,
                alias = "Npc16920",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17424:2658.658,334.922,4654.793]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16922,
                alias = "Npc16922",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17427:2657.066,335.955,4661.332]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7425304"] = {
        npcs = {
            {
                id = 16920,
                alias = "Npc16920",
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
            },
            {
                id = 16922,
                alias = "Npc16922",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17940:2658.369,335.966,4663.466,0.000,223.940,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
