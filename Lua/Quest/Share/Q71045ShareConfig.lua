main_id = 71045
local tbl = {}
local n = 7104502
local v = 7104503
local n2 = 7104504
local n3 = 7104521
local n4 = 7104522
local n5 = 7104528
local n6 = 7104505
local n7 = 7104507
local n8 = 7104519
local n9 = 7104509
local n10 = 7104510
local n11 = 7104511
local n12 = 7104512
local n13 = 7104513
local n14 = 7104514
local n15 = 7104526
local n16 = 7104527
local n17 = 7104525
local n18 = 7104515
local n19 = 7104516
local n20 = 7104517
local n21 = 7104523
local n22 = 7104518
local n23 = 7104520
local n24 = 7104524
local n25 = 7104529
tbl[1] = 7104501
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
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
tbl[16] = n14
tbl[17] = n15
tbl[18] = n16
tbl[19] = n17
tbl[20] = n18
tbl[21] = n19
tbl[22] = n20
tbl[23] = n21
tbl[24] = n22
tbl[25] = n23
tbl[26] = n24
tbl[27] = n25
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7104501"] = {},
    ["7104502"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104501_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104503"] = {},
    ["7104504"] = {},
    ["7104505"] = {},
    ["7104507"] = {},
    ["7104509"] = {},
    ["7104515"] = {},
    ["7104516"] = {},
    ["7104517"] = {},
    ["7104518"] = {},
    ["7104519"] = {},
    ["7104520"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104521"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104521_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104522"] = {},
    ["7104523"] = {},
    ["7104525"] = {},
    ["7104526"] = {},
    ["7104527"] = {},
    ["7104528"] = {}
}

quest_data = {
    ["7104501"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104501_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104501_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7104502"] = {
        npcs = {
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104501_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104503"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7104504"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104521_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104521_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7104505"] = {},
    ["7104507"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7104507_N1005",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 6, pos = "Q7104507"}}
    },
    ["7104509"] = {},
    ["7104510"] = {},
    ["7104511"] = {},
    ["7104512"] = {},
    ["7104513"] = {},
    ["7104514"] = {},
    ["7104515"] = {transmit_points = {{point_id = 2, scene_id = 6, pos = "Q7104516"}}},
    ["7104516"] = {},
    ["7104517"] = {transmit_points = {{point_id = 3, scene_id = 6, pos = "Q7104517"}}},
    ["7104518"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7104519"] = {},
    ["7104520"] = {
        npcs = {
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104521"] = {
        transmit_points = {{point_id = 2, scene_id = 6, pos = "Q7104521"}},
        npcs = {
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104521_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104522"] = {},
    ["7104523"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7104507_N1005",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 6, pos = "Q7104517"}}
    },
    ["7104524"] = {},
    ["7104525"] = {},
    ["7104526"] = {},
    ["7104527"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7104507_N1005",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104528"] = {},
    ["7104529"] = {}
}
