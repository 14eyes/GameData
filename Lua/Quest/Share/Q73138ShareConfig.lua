main_id = 73138
local tbl = {}
local n = 7313802
local v = 7313803
tbl[1] = 7313801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7313802"] = {},
    ["7313803"] = {
        npcs = {
            {
                id = 20678,
                alias = "Npc20678",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313802_N20678",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7313801"] = {},
    ["7313802"] = {
        npcs = {
            {
                id = 20678,
                alias = "Npc20678",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313802_N20678",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7313803"] = {}
}
