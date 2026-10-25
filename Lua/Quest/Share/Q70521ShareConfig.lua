main_id = 70521
local tbl = {}
local n = 7052102
tbl[1] = 7052101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7052101"] = {}, ["7052102"] = {}}

quest_data = {
    ["7052101"] = {},
    ["7052102"] = {
        npcs = {
            {
                id = 30234,
                alias = "Npc30234",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052101_N1002",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
