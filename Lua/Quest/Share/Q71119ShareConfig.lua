main_id = 71119
local tbl = {}
local n = 7111902
local v = 7111903
local n2 = 7111904
local n3 = 7111905
local n4 = 7111906
local n5 = 7111911
local n6 = 7111907
local n7 = 7111908
local n8 = 7111909
local n9 = 7111910
tbl[1] = 7111901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7111905"] = {
        npcs = {
            {
                id = 2270,
                alias = "Npc2270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600042:1577.699,403.387,2185.834]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7111906"] = {
        npcs = {
            {
                id = 2270,
                alias = "Npc2270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600042:1577.699,403.387,2185.834]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7111907"] = {
        npcs = {
            {
                id = 2273,
                alias = "Npc2273",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7466:1663.552,409.901,2185.601]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7111908"] = {},
    ["7111909"] = {},
    ["7111910"] = {},
    ["7111911"] = {}
}

quest_data = {
    ["7111901"] = {
        npcs = {
            {
                id = 2270,
                alias = "Npc2270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311600042:1577.699,403.387,2185.834]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7111902"] = {},
    ["7111903"] = {},
    ["7111904"] = {},
    ["7111905"] = {},
    ["7111906"] = {},
    ["7111907"] = {},
    ["7111908"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_311600049:1569.328,361.970,2111.312,0.000,140.215,0.000]"}}
    },
    ["7111909"] = {},
    ["7111910"] = {},
    ["7111911"] = {
        npcs = {
            {
                id = 2273,
                alias = "Npc2273",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7466:1663.552,409.901,2185.601]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
