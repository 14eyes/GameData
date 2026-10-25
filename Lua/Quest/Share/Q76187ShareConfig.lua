main_id = 76187
local tbl = {}
local n = 7618702
local v = 7618703
local n2 = 7618704
tbl[1] = 7618701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7618701"] = {}, ["7618704"] = {}}

quest_data = {
    ["7618701"] = {
        npcs = {
            {
                id = 16923,
                alias = "Npc16923",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17356:1636.621,304.753,9539.778]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16924,
                alias = "Npc16924_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17355:1637.828,304.753,9541.366,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7618702"] = {
        npcs = {
            {
                id = 16923,
                alias = "Npc16923",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17356:1636.621,304.753,9539.778]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16924,
                alias = "Npc16924_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17355:1637.828,304.753,9541.366,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7618703"] = {
        npcs = {
            {
                id = 16923,
                alias = "Npc16923",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17356:1636.621,304.753,9539.778]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16924,
                alias = "Npc16924_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17355:1637.828,304.753,9541.366,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7618704"] = {
        npcs = {
            {
                id = 16923,
                alias = "Npc16923",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17928:1636.767,304.746,9542.166,0.000,0.776,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    dontTickPause = true,
                    lookAtParam = {lockHeadControl = true, lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    emotionParam = {autoBlink = true}
                }
            },
            {
                id = 16924,
                alias = "Npc16924_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17927:1635.959,304.743,9542.100,0.000,3.232,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
