main_id = 76183
local tbl = {}
local n = 7618302
local v = 7618303
local n2 = 7618304
tbl[1] = 7618301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
local str2 = ""
tbl3[1] = "133601407"
tbl3[2] = str
tbl3[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7618301"] = {}, ["7618304"] = {}}

quest_data = {
    ["7618301"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17190:3232.653,407.206,9942.607,0.000,56.878,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618302"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17190:3232.653,407.206,9942.607,0.000,56.878,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618303"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17189:3236.828,406.701,9928.058]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7618304"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17190:3232.653,407.206,9942.607,0.000,56.878,0.000]",
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
