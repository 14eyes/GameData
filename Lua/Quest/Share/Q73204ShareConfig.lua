main_id = 73204
local tbl = {}
local n = 7320401
local v = 7320409
local n2 = 7320402
local n3 = 7320404
local n4 = 7320408
local n5 = 7320411
local n6 = 7320407
tbl[1] = 7320410
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7320401"] = {},
    ["7320404"] = {},
    ["7320407"] = {},
    ["7320408"] = {},
    ["7320409"] = {
        npcs = {
            {
                id = 4233,
                alias = "Npc4233",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7320401_N4233",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7320410"] = {},
    ["7320411"] = {}
}

quest_data = {
    ["7320401"] = {
        npcs = {
            {
                id = 4233,
                alias = "Npc4233",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7320401_N4233",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7320402"] = {},
    ["7320404"] = {
        npcs = {
            {
                id = 4233,
                alias = "Npc4233",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7320403_4233_Afan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7320407"] = {},
    ["7320408"] = {
        npcs = {
            {
                id = 4233,
                alias = "Npc4233",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7320401_N4233",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7320409"] = {},
    ["7320410"] = {},
    ["7320411"] = {}
}
