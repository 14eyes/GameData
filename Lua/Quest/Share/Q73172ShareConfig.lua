main_id = 73172
local tbl = {}
local n = 7317202
local v = 7317203
tbl[1] = 7317201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317202"] = {},
    ["7317203"] = {
        npcs = {
            {
                id = 20799,
                alias = "Npc20799",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317202_N20799",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7317201"] = {},
    ["7317202"] = {
        npcs = {
            {
                id = 20799,
                alias = "Npc20799",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317202_N20799",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317203"] = {}
}
