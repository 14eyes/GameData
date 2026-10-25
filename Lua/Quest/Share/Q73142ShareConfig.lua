main_id = 73142
local tbl = {}
local n = 7314202
local v = 7314203
tbl[1] = 7314201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7314202"] = {},
    ["7314203"] = {
        npcs = {
            {
                id = 20682,
                alias = "Npc20682",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314202_N20682",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7314201"] = {},
    ["7314202"] = {
        npcs = {
            {
                id = 20682,
                alias = "Npc20682",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314202_N20682",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7314203"] = {}
}
