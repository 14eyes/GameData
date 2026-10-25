main_id = 40026
local tbl = {}
local n = 4002602
local v = 4002603
local n2 = 4002604
local n3 = 4002605
local n4 = 4002606
local n5 = 4002632
local n6 = 4002625
local n7 = 4002624
local n8 = 4002607
local n9 = 4002608
local n10 = 4002609
local n11 = 4002622
local n12 = 4002621
local n13 = 4002610
local n14 = 4002611
local n15 = 4002612
local n16 = 4002613
local n17 = 4002617
local n18 = 4002618
local n19 = 4002626
local n20 = 4002627
local n21 = 4002628
local n22 = 4002629
local n23 = 4002616
local n24 = 4002630
local n25 = 4002619
local n26 = 4002620
local n27 = 4002614
local n28 = 4002631
local n29 = 4002615
local n30 = 4002623
local n31 = 4002633
tbl[1] = 4002601
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133002064"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002087"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133002061"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133002053"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133002063"
tbl7[2] = str5
local tbl8 = {}
local str6 = ""
tbl8[1] = "133002071"
tbl8[2] = str6
local tbl9 = {}
local str7 = ""
tbl9[1] = "133004054"
tbl9[2] = str7
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[6] = tbl8
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[7] = tbl9
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100999"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl10 = {}
local str8 = "133002927,1"
tbl10[1] = "3"
tbl10[2] = str8
local tbl11 = {}
local str9 = "133002928,2"
tbl11[1] = "3"
tbl11[2] = str9
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl10
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl11
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4002601"] = {},
    ["4002602"] = {},
    ["4002603"] = {},
    ["4002604"] = {},
    ["4002605"] = {},
    ["4002606"] = {},
    ["4002607"] = {},
    ["4002608"] = {},
    ["4002609"] = {},
    ["4002610"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_bnt_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002611"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_bnt_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002612"] = {},
    ["4002613"] = {},
    ["4002615"] = {},
    ["4002617"] = {},
    ["4002621"] = {},
    ["4002623"] = {},
    ["4002633"] = {}
}

quest_data = {
    ["4002601"] = {},
    ["4002602"] = {},
    ["4002603"] = {},
    ["4002604"] = {},
    ["4002605"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_abd_03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710234,
                alias = "Gadget70710234",
                pos = "Q40026_FP_09",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710530,
                alias = "Gadget70710530",
                pos = "Q4002606_ore_02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002606"] = {},
    ["4002607"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_abd_04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_abd_04",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4002607_paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4002608"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_abd_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_bnt_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002609"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_abd_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_bnt_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002610"] = {},
    ["4002611"] = {},
    ["4002612"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_abd_05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_bnt_03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_eula_01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40026_ambor_01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002613"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002613_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002614"] = {},
    ["4002615"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002613_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002616"] = {},
    ["4002617"] = {},
    ["4002618"] = {},
    ["4002619"] = {},
    ["4002620"] = {},
    ["4002621"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40026_bnt_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002622"] = {},
    ["4002623"] = {},
    ["4002624"] = {},
    ["4002625"] = {},
    ["4002626"] = {},
    ["4002627"] = {},
    ["4002628"] = {},
    ["4002629"] = {},
    ["4002630"] = {},
    ["4002631"] = {},
    ["4002632"] = {},
    ["4002633"] = {}
}
