main_id = 73224
local tbl = {}
local n = 7322402
tbl[1] = 7322401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7322402"] = {
        npcs = {
            {
                id = 20643,
                alias = "Npc20643",
                script = "Actor/Npc/TempNPC",
                pos = "Q7322402_N20643",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7322401"] = {},
    ["7322402"] = {
        npcs = {
            {
                id = 20643,
                alias = "Npc20643",
                script = "Actor/Npc/TempNPC",
                pos = "Q7322402_N20643",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
