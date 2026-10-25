main_id = 73522
local tbl = {}
local n = 7352202
tbl[1] = 7352201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7352201"] = {},
    ["7352202"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201411:-301.263,242.098,2864.498,0.000,63.473,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7352201"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201411:-301.263,242.098,2864.498,0.000,63.473,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7352202"] = {
        npcs = {
            {
                id = 30356,
                alias = "Npc30356",
                script = "Actor/Npc/TempNPC",
                pos = "Q7352202_N30356",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
