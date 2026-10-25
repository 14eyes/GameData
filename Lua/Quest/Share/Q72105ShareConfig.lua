main_id = 72105
local tbl = {}
local n = 7210502
local v = 7210503
local n2 = 7210508
local n3 = 7210504
local n4 = 7210505
local n5 = 7210506
local n6 = 7210509
local n7 = 7210510
local n8 = 7210511
local n9 = 7210507
tbl[1] = 7210501
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
    ["7210501"] = {},
    ["7210502"] = {},
    ["7210503"] = {
        npcs = {
            {
                id = 20221,
                alias = "Npc20221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72100_0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210504"] = {
        npcs = {
            {
                id = 20221,
                alias = "Npc20221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72100_0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210505"] = {
        npcs = {
            {
                id = 20221,
                alias = "Npc20221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72100_0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210506"] = {
        npcs = {
            {
                id = 20221,
                alias = "Npc20221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72100_05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210507"] = {},
    ["7210508"] = {},
    ["7210509"] = {},
    ["7210510"] = {}
}

quest_data = {
    ["7210501"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q3_72105_0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210502"] = {
        npcs = {
            {
                id = 20221,
                alias = "Npc20221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72100_04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210503"] = {
        npcs = {
            {
                id = 20221,
                alias = "Npc20221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72100_0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210504"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q3_72105_1"}}},
    ["7210505"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q3_72105_2"}}},
    ["7210506"] = {
        npcs = {
            {
                id = 20221,
                alias = "Npc20221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72100_05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210507"] = {},
    ["7210508"] = {
        npcs = {
            {
                id = 20221,
                alias = "Npc20221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72100_0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7210509"] = {},
    ["7210510"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q3_72105_2"}}},
    ["7210511"] = {}
}
