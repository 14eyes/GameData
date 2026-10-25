main_id = 40015
local tbl = {}
local n = 4001502
local v = 4001504
local n2 = 4001503
local n3 = 4001520
local n4 = 4001530
local n5 = 4001516
local n6 = 4001505
local n7 = 4001521
local n8 = 4001506
local n9 = 4001507
local n10 = 4001522
local n11 = 4001523
local n12 = 4001524
local n13 = 4001525
local n14 = 4001526
local n15 = 4001527
local n16 = 4001528
local n17 = 4001508
local n18 = 4001509
local n19 = 4001510
local n20 = 4001511
local n21 = 4001512
local n22 = 4001513
local n23 = 4001514
local n24 = 4001515
local n25 = 4001518
local n26 = 4001519
tbl[1] = 4001501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_UNLOCK_AVATAR_TEAM = {{}}, QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"13"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133107177"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133107187"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133107182"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl6 = {}
local str4 = "133107181,3"
tbl6[1] = "3"
tbl6[2] = str4
local tbl7 = {}
local str5 = "133107010,1"
tbl7[1] = "3"
tbl7[2] = str5
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl7
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4001501"] = {},
    ["4001502"] = {},
    ["4001503"] = {},
    ["4001504"] = {},
    ["4001505"] = {},
    ["4001506"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001508YX",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2003,
                alias = "Npc2003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001509TS",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4001508"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001508YX",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2003,
                alias = "Npc2003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001509TS",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4001509"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001508XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001509YX",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001508GB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4001510"] = {},
    ["4001511"] = {},
    ["4001512"] = {},
    ["4001513"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001514"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001515"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512GB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001518"] = {},
    ["4001519"] = {},
    ["4001520"] = {},
    ["4001530"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001520XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001507"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001508YX",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4001501"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001501XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001502"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001503XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001502XY",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001503BD",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001503"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001504XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001504"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001504XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001504Xiao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4001504PM",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001505"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001508YX",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001521Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2003,
                alias = "Npc2003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001509TS",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4001506"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4001506XL"}}
    },
    ["4001507"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4001506PM",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4001508"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001508XL",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4001509"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001510KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001510"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001510XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001510KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001511"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001510XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710430,
                alias = "Gadget70710430",
                pos = "Q4001418Gadget",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001512"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4001512PM",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001513"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001514"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001512GB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001515"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001515PLL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001516"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001401XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001518"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001401XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001519ZL",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001519"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001401XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001519ZL",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001519GB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001520"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001520XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001521"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001521Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4001522"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        },
        gadgets = {
            {
                id = 70710461,
                alias = "Gadget70710461",
                pos = "Q40015Salt",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710462,
                alias = "Gadget70710462",
                pos = "Q40015Sugar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710463,
                alias = "Gadget70710463",
                pos = "Q40015Pepper",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001523"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4001524"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        },
        gadgets = {
            {
                id = 70710461,
                alias = "Gadget70710461",
                pos = "Q40015Salt",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710462,
                alias = "Gadget70710462",
                pos = "Q40015Sugar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710463,
                alias = "Gadget70710463",
                pos = "Q40015Pepper",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001525"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4001526"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        },
        gadgets = {
            {
                id = 70710461,
                alias = "Gadget70710461",
                pos = "Q40015Salt",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710462,
                alias = "Gadget70710462",
                pos = "Q40015Sugar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710463,
                alias = "Gadget70710463",
                pos = "Q40015Pepper",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001527"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4001528"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509Yanfei",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001509NG",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001506PL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q40015GoobaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2201,
                alias = "Npc2201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40015jiangxue",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4001506PL"}}
    }
}
