main_id = 70535
local tbl = {}
local n = 7053502
local v = 7053503
tbl[1] = 7053501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7053501"] = {}, ["7053502"] = {}, ["7053503"] = {}}

quest_data = {
    ["7053501"] = {},
    ["7053502"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_234:-16.567,0.000,10.811,0.000,214.556,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "[1004_235:-17.092,0.000,9.653,0.000,23.592,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7053503"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5744:2208.195,230.089,-803.176,0.000,269.884,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
