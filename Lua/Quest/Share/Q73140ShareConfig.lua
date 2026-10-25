main_id = 73140
local tbl = {}
local n = 7314002
local v = 7314003
tbl[1] = 7314001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7314002"] = {},
    ["7314003"] = {
        npcs = {
            {
                id = 20680,
                alias = "Npc20680",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314002_N20680",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7314001"] = {},
    ["7314002"] = {
        npcs = {
            {
                id = 20680,
                alias = "Npc20680",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314002_N20680",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7314003"] = {}
}
