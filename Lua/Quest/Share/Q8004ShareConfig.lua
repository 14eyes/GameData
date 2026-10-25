main_id = 8004
local tbl = {}
local n = 800402
local v = 800407
local n2 = 800406
local n3 = 800403
local n4 = 800405
local n5 = 800404
tbl[1] = 800401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["800401"] = {},
    ["800402"] = {},
    ["800403"] = {},
    ["800404"] = {},
    ["800405"] = {},
    ["800406"] = {},
    ["800407"] = {
        npcs = {
            {
                id = 12423,
                alias = "Npc12423",
                script = "Actor/Npc/TempNPC",
                pos = "Q800403_T800403_N12423",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["800401"] = {
        npcs = {
            {
                id = 2078,
                alias = "Npc2078",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q800401_T800401_N2078",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800402"] = {
        npcs = {
            {
                id = 12423,
                alias = "Npc12423",
                script = "Actor/Npc/TempNPC",
                pos = "Q800403_T800403_N12423",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800403"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800403_T800403_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800403_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800404"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800403_T800403_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800403_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800405"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800403_T800403_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800406"] = {},
    ["800407"] = {}
}
