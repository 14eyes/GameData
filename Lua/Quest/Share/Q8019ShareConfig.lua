main_id = 8019
local tbl = {}
local n = 801902
local v = 801903
local n2 = 801904
local n3 = 801905
local n4 = 801906
local n5 = 801907
tbl[1] = 801901
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
    ["801901"] = {},
    ["801902"] = {},
    ["801903"] = {
        npcs = {
            {
                id = 4329,
                alias = "Npc4329",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400529:-1081.868,201.375,2652.743,0.000,83.830,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801904"] = {
        npcs = {
            {
                id = 4329,
                alias = "Npc4329",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400529:-1081.868,201.375,2652.743,0.000,83.830,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801905"] = {},
    ["801906"] = {},
    ["801907"] = {}
}

quest_data = {
    ["801901"] = {
        npcs = {
            {
                id = 4019,
                alias = "Npc4019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330201531:-476.076,230.078,2763.900,0.000,8.378,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801902"] = {
        npcs = {
            {
                id = 4329,
                alias = "Npc4329",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400529:-1081.868,201.375,2652.743,0.000,83.830,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4321,
                alias = "Npc4321",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400534:-1099.406,205.563,2685.211,0.000,188.750,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["801903"] = {
        npcs = {
            {
                id = 4321,
                alias = "Npc4321",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400534:-1099.406,205.563,2685.211,0.000,188.750,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801904"] = {
        npcs = {
            {
                id = 4321,
                alias = "Npc4321",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400534:-1099.406,205.563,2685.211,0.000,188.750,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801905"] = {
        npcs = {
            {
                id = 14074,
                alias = "Npc14074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400502:-989.658,212.057,2759.205,0.000,300.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801906"] = {
        npcs = {
            {
                id = 14074,
                alias = "Npc14074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400502:-989.658,212.057,2759.205,0.000,300.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801907"] = {
        npcs = {
            {
                id = 14074,
                alias = "Npc14074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400503:-976.275,211.737,2771.628,0.000,317.570,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_330400508:-1036.462,217.296,2779.746,0.000,171.120,0.000]"}}
    }
}
