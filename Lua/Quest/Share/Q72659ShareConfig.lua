main_id = 72659
local tbl = {}
local n = 7265902
tbl[1] = 7265901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7265901"] = {},
    ["7265902"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7265901"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7265902"] = {
        npcs = {
            {
                id = 2615,
                alias = "Npc2615",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72659_jiawei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
