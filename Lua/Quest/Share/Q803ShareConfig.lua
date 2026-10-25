main_id = 803
local tbl = {}
local n = 80302
local v = 80303
local n2 = 80304
local n3 = 80305
local n4 = 80306
local n5 = 80307
local n6 = 80308
local n7 = 80309
local n8 = 80310
local n9 = 80311
local n10 = 80312
local n11 = 80313
local n12 = 80314
local n13 = 80315
local n14 = 80316
local n15 = 80317
local n16 = 80318
local n17 = 80319
local n18 = 80320
local n19 = 80321
local n20 = 80322
local n21 = 80323
local n22 = 80324
local n23 = 80325
local n24 = 80326
local n25 = 80327
local n26 = 80328
local n27 = 80329
local n28 = 80330
local n29 = 80331
local n30 = 80332
local n31 = 80333
local n32 = 80334
local n33 = 80335
local n34 = 80336
local n35 = 80337
local n36 = 80338
local n37 = 80339
local n38 = 80340
local n39 = 80341
tbl[1] = 80301
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
tbl[28] = n26
tbl[29] = n27
tbl[30] = n28
tbl[31] = n29
tbl[32] = n30
tbl[33] = n31
tbl[34] = n32
tbl[35] = n33
tbl[36] = n34
tbl[37] = n35
tbl[38] = n36
tbl[39] = n37
tbl[40] = n38
tbl[41] = n39
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["80301"] = {},
    ["80302"] = {},
    ["80303"] = {},
    ["80304"] = {},
    ["80305"] = {},
    ["80306"] = {},
    ["80307"] = {},
    ["80308"] = {},
    ["80309"] = {},
    ["80310"] = {},
    ["80311"] = {},
    ["80312"] = {},
    ["80313"] = {},
    ["80314"] = {},
    ["80315"] = {},
    ["80316"] = {},
    ["80317"] = {},
    ["80318"] = {},
    ["80319"] = {},
    ["80320"] = {},
    ["80321"] = {},
    ["80322"] = {},
    ["80323"] = {},
    ["80324"] = {},
    ["80325"] = {},
    ["80326"] = {},
    ["80327"] = {},
    ["80328"] = {},
    ["80329"] = {},
    ["80330"] = {},
    ["80331"] = {},
    ["80332"] = {},
    ["80333"] = {},
    ["80334"] = {},
    ["80335"] = {},
    ["80336"] = {},
    ["80337"] = {},
    ["80338"] = {},
    ["80339"] = {},
    ["80340"] = {},
    ["80341"] = {}
}

quest_data = {
    ["80301"] = {},
    ["80302"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4009108_Player"}}},
    ["80303"] = {},
    ["80304"] = {},
    ["80305"] = {},
    ["80306"] = {},
    ["80307"] = {},
    ["80308"] = {},
    ["80309"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q35702Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80310"] = {},
    ["80311"] = {},
    ["80312"] = {
        npcs = {
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q35702Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleDayPatrol10Pos03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4019,
                alias = "Npc4019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q35703Player",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q48703WindyLeave",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["80313"] = {},
    ["80314"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010109_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80315"] = {},
    ["80316"] = {},
    ["80317"] = {
        npcs = {
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_LinLin03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80318"] = {},
    ["80319"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3981:-275.429,208.770,-926.894,0.000,188.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80320"] = {},
    ["80321"] = {},
    ["80322"] = {},
    ["80323"] = {},
    ["80324"] = {},
    ["80325"] = {},
    ["80326"] = {},
    ["80327"] = {},
    ["80328"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q40010Paimon",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["80329"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q35702Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1075, pos = "Q302222_N1005"}}
    },
    ["80330"] = {},
    ["80331"] = {},
    ["80332"] = {},
    ["80333"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "NpcMaleInsomniaPatrol13Pos06",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q371WendyTrigger2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3760:2264.277,219.990,-854.724,0.000,109.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["80334"] = {
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "Npc1525Route1_2"},
            {point_id = 2, scene_id = 3, pos = "Npc1525Route1_4"}
        }
    },
    ["80335"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "NpcMaleInsomniaPatrol13Pos06",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80336"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q37114Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80337"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q35702Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Npc1525Route1_2"}}
    },
    ["80338"] = {},
    ["80339"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q302818_N1056",
                scene_id = 20164,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302222_N10000005",
                scene_id = 1075,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1165, pos = "Q302818_N10000005"}}
    },
    ["80340"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q357Wind7",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q371WendyFootPrint3",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Npc1525Route1_3"}}
    },
    ["80341"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q371WendyFootPrint3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
