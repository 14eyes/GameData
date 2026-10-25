main_id = 73514
local tbl = {}
local n = 7351401
tbl[1] = 7351402
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7351401"] = {quest_var = {-1, 1, -1, -1, -1}}, ["7351402"] = {quest_var = {-1, 1, -1, -1, -1}}}

quest_data = {
    ["7351401"] = {
        npcs = {
            {
                id = 30342,
                alias = "Npc30342",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351301_N30342",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30343,
                alias = "Npc30343",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351301_N30343",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7351402"] = {}
}
