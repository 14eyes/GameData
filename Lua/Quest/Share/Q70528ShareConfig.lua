main_id = 70528
local tbl = {}
local n = 7052802
tbl[1] = 7052801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7052801"] = {}, ["7052802"] = {}}

quest_data = {
    ["7052801"] = {
        npcs = {
            {
                id = 30047,
                alias = "Npc30047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052801_N30047",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052802"] = {
        npcs = {
            {
                id = 30047,
                alias = "Npc30047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052801_N30047",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
