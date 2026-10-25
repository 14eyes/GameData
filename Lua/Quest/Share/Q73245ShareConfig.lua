main_id = 73245
local tbl = {}
local n = 7324502
local v = 7324503
local n2 = 7324504
tbl[1] = 7324501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7324501"] = {},
    ["7324502"] = {
        npcs = {
            {
                id = 421901,
                alias = "Npc421901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7306510_N4219",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7324504"] = {
        npcs = {
            {
                id = 421901,
                alias = "Npc421901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7306510_N4219",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7324503"] = {
        npcs = {
            {
                id = 421901,
                alias = "Npc421901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7306510_N4219",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7324501"] = {
        npcs = {
            {
                id = 421901,
                alias = "Npc421901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7306510_N4219",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7324502"] = {},
    ["7324503"] = {},
    ["7324504"] = {}
}
