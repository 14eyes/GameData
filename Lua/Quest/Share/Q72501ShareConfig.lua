main_id = 72501
local tbl = {}
local n = 7250102
tbl[1] = 7250101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7250101"] = {},
    ["7250102"] = {
        npcs = {
            {
                id = 30160,
                alias = "Npc30160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7268301_N30160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7250101"] = {
        npcs = {
            {
                id = 30160,
                alias = "Npc30160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7268301_N30160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7250102"] = {}
}
