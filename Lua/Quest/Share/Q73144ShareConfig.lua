main_id = 73144
local tbl = {}
local n = 7314402
local v = 7314403
tbl[1] = 7314401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7314402"] = {},
    ["7314403"] = {
        npcs = {
            {
                id = 20684,
                alias = "Npc20684",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314402_N20684",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7314401"] = {},
    ["7314402"] = {
        npcs = {
            {
                id = 20684,
                alias = "Npc20684",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314402_N20684",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7314403"] = {}
}
