main_id = 76508
local tbl = {}
local n = 7650802
tbl[1] = 7650801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7650801"] = {},
    ["7650802"] = {
        npcs = {
            {
                id = 4170,
                alias = "Npc4170",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200533:-2847.651,213.533,9052.410,0.000,107.732,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7650801"] = {
        npcs = {
            {
                id = 30891,
                alias = "Npc30891",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200532:-2836.322,213.719,9054.345,0.000,265.916,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4170,
                alias = "Npc4170",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200533:-2847.651,213.533,9052.410,0.000,107.732,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7650802"] = {}
}
