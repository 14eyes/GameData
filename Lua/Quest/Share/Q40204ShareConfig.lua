main_id = 40204
local tbl = {}
local n = 4020402
tbl[1] = 4020401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4020401"] = {}, ["4020402"] = {}}

quest_data = {
    ["4020401"] = {
        npcs = {
            {
                id = 30857,
                alias = "Npc30857",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400598:-1930.892,203.100,2504.250,0.000,164.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30858,
                alias = "Npc30858",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400602:-1931.221,203.100,2503.091,0.000,41.814,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30859,
                alias = "Npc30859",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400603:-1929.692,203.100,2503.517,0.000,292.723,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4020402"] = {
        npcs = {
            {
                id = 30857,
                alias = "Npc30857",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400600:-1931.136,203.100,2509.627,0.000,166.090,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
