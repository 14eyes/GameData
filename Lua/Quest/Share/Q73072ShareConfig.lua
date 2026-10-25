main_id = 73072
local tbl = {}
local n = 7307202
local v = 7307203
tbl[1] = 7307201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7307201"] = {},
    ["7307202"] = {},
    ["7307203"] = {
        npcs = {
            {
                id = 20668,
                alias = "Npc20668",
                script = "Actor/Npc/TempNPC",
                pos = "Q7307202_N20668",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7307201"] = {},
    ["7307202"] = {
        npcs = {
            {
                id = 20668,
                alias = "Npc20668",
                script = "Actor/Npc/TempNPC",
                pos = "Q7307202_N20668",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7307203"] = {}
}
