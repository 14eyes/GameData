main_id = 40014
local tbl = {}
local n = 4001401
local v = 4001402
local n2 = 4001404
local n3 = 4001405
local n4 = 4001406
local n5 = 4001403
local n6 = 4001407
local n7 = 4001415
local n8 = 4001408
local n9 = 4001409
local n10 = 4001410
local n11 = 4001411
local n12 = 4001412
local n13 = 4001423
local n14 = 4001424
local n15 = 4001425
local n16 = 4001427
local n17 = 4001421
local n18 = 4001413
local n19 = 4001422
local n20 = 4001414
local n21 = 4001426
local n22 = 4001416
local n23 = 4001417
local n24 = 4001418
local n25 = 4001419
tbl[1] = 4001420
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133102167"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133104276"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl5 = {}
local str3 = "133107181,3"
tbl5[1] = "3"
tbl5[2] = str3
local tbl6 = {}
local str4 = "133107010,1"
tbl6[1] = "3"
tbl6[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl5
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl6
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4001401"] = {
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
    ["4001402"] = {},
    ["4001404"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001402HT",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001405"] = {
        npcs = {
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001404QQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001404Baizhu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001406"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001405NG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001405BD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001407"] = {},
    ["4001409"] = {
        npcs = {
            {
                id = 10427,
                alias = "Npc10427",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001407CJY",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001410"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409XQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409CY",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001411"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001455XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001455KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001412"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001455XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001455KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001410YX",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001413"] = {},
    ["4001414"] = {},
    ["4001416"] = {},
    ["4001417"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001417PLL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001418"] = {},
    ["4001419"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001419KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001420"] = {},
    ["4001422"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001413XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001413KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001423"] = {}
}

quest_data = {
    ["4001401"] = {
        npcs = {
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001401Mao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710175,
                alias = "Gadget70710175",
                pos = "Q4001401Chop01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710175,
                alias = "Gadget70710175N",
                pos = "Q4001401Chop02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710542,
                alias = "Gadget70710542",
                pos = "Q4001401Bowl",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001402"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001402XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001402HT",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001402GB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001403"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001403Xiangling",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001403Keqing",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001403CJY",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001403GB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4001404"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001404XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001404QQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001404Baizhu",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001404GB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4001405"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001405XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001405KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001405NG",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001405BD",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001405GB",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4001406"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001403Xiangling",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001403Keqing",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001403CJY",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001407"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10427,
                alias = "Npc10427",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001407CJY",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001408"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001403Xiangling",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10427,
                alias = "Npc10427",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001407CJY",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001409"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409XQ",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409CY",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409GB",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4001410"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001455XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001455KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001410YX",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001410GB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4001411"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001410GB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001412"] = {
        npcs = {
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001410GB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001413"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001413XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001413KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001414"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001414XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001414KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001414Niao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001415GY",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001414GB",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4001415"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001409KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10427,
                alias = "Npc10427",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001407CJY",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001416"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4001417PLL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001417"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001417XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001417KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10426,
                alias = "Npc10426",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001417QYJ",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001417GB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4001418"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001419KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
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
    ["4001419"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001419XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4001419PM",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001420"] = {
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
    ["4001421"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4001421PM",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1043,
                alias = "Npc1043",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421GB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4001422"] = {},
    ["4001423"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001424"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001425"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001426"] = {},
    ["4001427"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421XL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4001421KQ",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
