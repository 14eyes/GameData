main_id = 73079
local tbl = {}
local n = 7307902
local v = 7307903
tbl[1] = 7307901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7307901"] = {},
    ["7307902"] = {},
    ["7307903"] = {
        npcs = {
            {
                id = 20670,
                alias = "Npc20670",
                script = "Actor/Npc/TempNPC",
                pos = "Q7307903_N20670",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7307901"] = {},
    ["7307902"] = {
        npcs = {
            {
                id = 20670,
                alias = "Npc20670",
                script = "Actor/Npc/TempNPC",
                pos = "Q7307903_N20670",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7307903"] = {}
}
