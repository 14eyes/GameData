main_id = 70515
local tbl = {}
local n = 7051502
local v = 7051503
tbl[1] = 7051501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7051501"] = {},
    ["7051502"] = {
        npcs = {
            {
                id = 30217,
                alias = "Npc30217",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051401_N30217",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051503"] = {
        npcs = {
            {
                id = 30217,
                alias = "Npc30217",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051401_N30217",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7051501"] = {
        npcs = {
            {
                id = 30217,
                alias = "Npc30217",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051401_N30217",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051502"] = {},
    ["7051503"] = {}
}
