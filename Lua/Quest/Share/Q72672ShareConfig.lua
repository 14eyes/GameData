main_id = 72672
local tbl = {}
local n = 7267202
local v = 7267203
local n2 = 7267204
local n3 = 7267205
tbl[1] = 7267201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7267201"] = {},
    ["7267202"] = {},
    ["7267203"] = {
        npcs = {
            {
                id = 3226,
                alias = "Npc3226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267201_N3226",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7267204"] = {},
    ["7267205"] = {}
}

quest_data = {
    ["7267201"] = {},
    ["7267202"] = {
        npcs = {
            {
                id = 3226,
                alias = "Npc3226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267201_N3226",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7267203"] = {},
    ["7267204"] = {
        npcs = {
            {
                id = 3226,
                alias = "Npc3226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267201_N3226",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7267205"] = {}
}
