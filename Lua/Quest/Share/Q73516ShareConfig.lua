main_id = 73516
local tbl = {}
local n = 7351602
tbl[1] = 7351601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7351601"] = {quest_var = {-1, 1, -1, -1, -1}}, ["7351602"] = {quest_var = {-1, 1, -1, -1, -1}}}

quest_data = {
    ["7351601"] = {},
    ["7351602"] = {
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
    }
}
