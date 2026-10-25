main_id = 73519
local tbl = {}
local n = 7351901
tbl[1] = 7351902
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7351901"] = {}, ["7351902"] = {}}

quest_data = {
    ["7351901"] = {
        npcs = {
            {
                id = 30342,
                alias = "Npc30342",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351102_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7351902"] = {}
}
