main_id = 73261
local tbl = {}
local n = 7326102
local v = 7326103
local n2 = 7326104
tbl[1] = 7326101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7326101"] = {},
    ["7326104"] = {
        npcs = {
            {
                id = 422201,
                alias = "Npc422201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308705_N4222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7326102"] = {
        npcs = {
            {
                id = 422201,
                alias = "Npc422201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308705_N4222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7326103"] = {
        npcs = {
            {
                id = 422201,
                alias = "Npc422201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308705_N4222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7326101"] = {
        npcs = {
            {
                id = 422201,
                alias = "Npc422201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308705_N4222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7326102"] = {},
    ["7326103"] = {},
    ["7326104"] = {}
}
