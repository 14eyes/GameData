main_id = 75238
local tbl = {}
local n = 7523802
local v = 7523803
local n2 = 7523804
tbl[1] = 7523801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7523801"] = {}, ["7523804"] = {}}

quest_data = {
    ["7523801"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17206:-2005.006,176.821,9636.594,0.940,0.521,358.454]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17206:-2005.006,176.821,9636.594,0.940,0.521,358.454]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7523802"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17206:-2005.006,176.821,9636.594,0.940,0.521,358.454]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17206:-2005.006,176.821,9636.594,0.940,0.521,358.454]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7523803"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17205:-1993.531,173.212,9630.953]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17205:-1993.531,173.212,9630.953]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7523804"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17206:-2005.006,176.821,9636.594,0.940,0.521,358.454]",
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
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17206:-2005.006,176.821,9636.594,0.940,0.521,358.454]",
                scene_id = 3,
                room_id = 0,
                data_index = 2,
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
