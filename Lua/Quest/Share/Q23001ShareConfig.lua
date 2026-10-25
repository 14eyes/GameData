main_id = 23001
local tbl = {}
local n = 2300102
local v = 2300103
local n2 = 2300104
local n3 = 2300105
tbl[1] = 2300101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2300102"}}}}

rewind_data = {
    ["2300101"] = {},
    ["2300102"] = {
        npcs = {
            {
                id = 4004,
                alias = "Npc4004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300101_N4004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300103"] = {
        npcs = {
            {
                id = 4004,
                alias = "Npc4004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300101_N4004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300104"] = {
        npcs = {
            {
                id = 4004,
                alias = "Npc4004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300101_N4004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300105"] = {
        npcs = {
            {
                id = 4004,
                alias = "Npc4004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300101_N4004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2300101"] = {
        npcs = {
            {
                id = 4004,
                alias = "Npc4004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300101_N4004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300102"] = {},
    ["2300103"] = {},
    ["2300104"] = {},
    ["2300105"] = {}
}
