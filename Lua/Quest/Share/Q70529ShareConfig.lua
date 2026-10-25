main_id = 70529
local tbl = {}
local n = 7052902
tbl[1] = 7052901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7052901"] = {}, ["7052902"] = {}}

quest_data = {
    ["7052901"] = {
        npcs = {
            {
                id = 30046,
                alias = "Npc30046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_N30046_Q7052901",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052902"] = {
        npcs = {
            {
                id = 30046,
                alias = "Npc30046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_N30046_Q7052901",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
