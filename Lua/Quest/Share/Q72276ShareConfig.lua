main_id = 72276
local tbl = {}
local n = 7227602
local v = 7227617
local n2 = 7227618
local n3 = 7227619
local n4 = 7227603
local n5 = 7227626
local n6 = 7227620
local n7 = 7227604
local n8 = 7227614
local n9 = 7227615
local n10 = 7227616
local n11 = 7227605
local n12 = 7227621
local n13 = 7227622
local n14 = 7227623
local n15 = 7227606
local n16 = 7227607
local n17 = 7227628
local n18 = 7227627
local n19 = 7227608
local n20 = 7227624
local n21 = 7227609
local n22 = 7227625
local n23 = 7227610
local n24 = 7227613
local n25 = 7227611
local n26 = 7227612
tbl[1] = 7227601
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
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "177005179"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "177005101"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "177001001"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7227601"] = {},
    ["7227602"] = {},
    ["7227603"] = {},
    ["7227604"] = {},
    ["7227605"] = {},
    ["7227606"] = {},
    ["7227607"] = {},
    ["7227608"] = {
        npcs = {
            {
                id = 20548,
                alias = "Npc20548",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227607_N20548",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227609"] = {},
    ["7227610"] = {},
    ["7227611"] = {},
    ["7227612"] = {
        npcs = {
            {
                id = 20548,
                alias = "Npc20548",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227627_N20548",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227613"] = {},
    ["7227614"] = {},
    ["7227615"] = {},
    ["7227616"] = {},
    ["7227618"] = {},
    ["7227619"] = {},
    ["7227620"] = {},
    ["7227621"] = {},
    ["7227622"] = {},
    ["7227624"] = {
        npcs = {
            {
                id = 20548,
                alias = "Npc20548",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227607_N20548",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227625"] = {},
    ["7227627"] = {
        npcs = {
            {
                id = 20548,
                alias = "Npc20548",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227607_N20548",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227628"] = {
        npcs = {
            {
                id = 20548,
                alias = "Npc20548",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227607_N20548",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7227601"] = {
        npcs = {
            {
                id = 30108,
                alias = "Npc30108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7227601_N30108",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227602"] = {},
    ["7227603"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7227603_N1005",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227604"] = {},
    ["7227605"] = {},
    ["7227606"] = {},
    ["7227607"] = {
        npcs = {
            {
                id = 20548,
                alias = "Npc20548",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227607_N20548",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227608"] = {},
    ["7227609"] = {},
    ["7227610"] = {},
    ["7227611"] = {
        npcs = {
            {
                id = 20548,
                alias = "Npc20548",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227627_N20548",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227612"] = {
        npcs = {
            {
                id = 30108,
                alias = "Npc30108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7227601_N30108",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227613"] = {},
    ["7227614"] = {},
    ["7227615"] = {},
    ["7227616"] = {},
    ["7227617"] = {},
    ["7227618"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7227618_paimon",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227619"] = {},
    ["7227620"] = {
        npcs = {
            {
                id = 30108,
                alias = "Npc30108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7227601_N30108",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227621"] = {},
    ["7227622"] = {},
    ["7227623"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7227623_paimon",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227624"] = {},
    ["7227625"] = {},
    ["7227626"] = {},
    ["7227627"] = {},
    ["7227628"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7227628_paimon",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
