main_id = 70519
local tbl = {}
local n = 7051902
local v = 7051903
tbl[1] = 7051901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7051901"] = {}, ["7051902"] = {}}

quest_data = {
    ["7051901"] = {},
    ["7051902"] = {
        npcs = {
            {
                id = 30234,
                alias = "Npc30234",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051902_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051903"] = {}
}
