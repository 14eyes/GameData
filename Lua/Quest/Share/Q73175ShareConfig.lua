main_id = 73175
local tbl = {}
local n = 7317502
local v = 7317503
tbl[1] = 7317501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317502"] = {},
    ["7317503"] = {
        npcs = {
            {
                id = 20802,
                alias = "Npc20802",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317502_N20802",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7317501"] = {},
    ["7317502"] = {
        npcs = {
            {
                id = 20802,
                alias = "Npc20802",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317502_N20802",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317503"] = {}
}
