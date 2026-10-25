main_id = 73182
local tbl = {}
local n = 7318202
local v = 7318203
tbl[1] = 7318201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7318202"] = {},
    ["7318203"] = {
        npcs = {
            {
                id = 20809,
                alias = "Npc20809",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318202_N20809",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7318201"] = {},
    ["7318202"] = {
        npcs = {
            {
                id = 20809,
                alias = "Npc20809",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318202_N20809",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7318203"] = {}
}
