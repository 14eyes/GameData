main_id = 73515
local tbl = {}
local n = 7351501
tbl[1] = 7351502
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7351501"] = {}, ["7351502"] = {}}

quest_data = {
    ["7351501"] = {
        npcs = {
            {
                id = 30342,
                alias = "Npc30342",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330700019:-1818.489,153.655,5960.933,0.000,19.224,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30343,
                alias = "Npc30343",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330700020:-1818.121,153.644,5962.413,357.289,197.536,0.136]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7351502"] = {}
}
