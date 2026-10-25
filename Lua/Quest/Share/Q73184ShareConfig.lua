main_id = 73184
local tbl = {}
local n = 7318402
local v = 7318403
tbl[1] = 7318401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7318402"] = {},
    ["7318403"] = {
        npcs = {
            {
                id = 20811,
                alias = "Npc20811",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318402_N20811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7318401"] = {},
    ["7318402"] = {
        npcs = {
            {
                id = 20811,
                alias = "Npc20811",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318402_N20811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7318403"] = {}
}
