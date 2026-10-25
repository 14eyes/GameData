main_id = 73137
local tbl = {}
local n = 7313702
local v = 7313703
tbl[1] = 7313701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7313702"] = {},
    ["7313703"] = {
        npcs = {
            {
                id = 20677,
                alias = "Npc20677",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313702_N20677",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7313701"] = {},
    ["7313702"] = {
        npcs = {
            {
                id = 20677,
                alias = "Npc20677",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313702_N20677",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7313703"] = {}
}
