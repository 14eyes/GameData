main_id = 75142
local tbl = {}
local n = 7514201
tbl[1] = 7514205
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7514201"] = {
        npcs = {
            {
                id = 21765,
                alias = "Npc21765",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10129:-2693.533,286.925,10159.920,0.000,49.272,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7514205"] = {}
}

quest_data = {
    ["7514201"] = {
        npcs = {
            {
                id = 21766,
                alias = "Npc21766",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10128:-2692.848,286.818,10161.490,0.000,242.969,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7514205"] = {
        npcs = {
            {
                id = 21765,
                alias = "Npc21765",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10129:-2693.533,286.925,10159.920,0.000,49.272,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21766,
                alias = "Npc21766",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10128:-2692.848,286.818,10161.490,0.000,242.969,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
