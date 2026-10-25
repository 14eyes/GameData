main_id = 77500
local tbl = {}
local n = 7750001
local v = 7750002
tbl[1] = 7750003
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7750001"] = {},
    ["7750002"] = {
        npcs = {
            {
                id = 1331,
                alias = "Npc1331",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370500050:7959.634,203.947,8058.518,0.000,276.152,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7750003"] = {}
}

quest_data = {
    ["7750001"] = {
        npcs = {
            {
                id = 1331,
                alias = "Npc1331",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370500050:7959.634,203.947,8058.518,0.000,276.152,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7585,
                alias = "Npc7585",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370500049:7958.318,204.738,8088.806,0.000,178.593,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7750002"] = {
        npcs = {
            {
                id = 7585,
                alias = "Npc7585",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370500049:7958.318,204.738,8088.806,0.000,178.593,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7750003"] = {}
}
