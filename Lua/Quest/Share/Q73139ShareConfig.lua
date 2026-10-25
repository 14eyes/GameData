main_id = 73139
local tbl = {}
local n = 7313902
local v = 7313903
tbl[1] = 7313901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7313902"] = {},
    ["7313903"] = {
        npcs = {
            {
                id = 20679,
                alias = "Npc20679",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313902_N20679",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7313901"] = {},
    ["7313902"] = {
        npcs = {
            {
                id = 20679,
                alias = "Npc20679",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313902_N20679",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7313903"] = {}
}
