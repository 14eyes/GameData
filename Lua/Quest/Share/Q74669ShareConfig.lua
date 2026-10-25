main_id = 74669
local tbl = {}
local n = 7466902
tbl[1] = 7466901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7466901"] = {}, ["7466902"] = {}}

quest_data = {
    ["7466901"] = {
        npcs = {
            {
                id = 30418,
                alias = "Npc30418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300099:2891.383,440.824,4245.830,0.000,36.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7466902"] = {
        npcs = {
            {
                id = 30418,
                alias = "Npc30418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300099:2891.383,440.824,4245.830,0.000,36.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
