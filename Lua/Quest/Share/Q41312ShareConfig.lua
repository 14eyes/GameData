main_id = 41312
local tbl = {}
local n = 4131203
local v = 4131236
local n2 = 4131202
local n3 = 4131204
local n4 = 4131205
local n5 = 4131235
local n6 = 4131206
local n7 = 4131208
local n8 = 4131209
local n9 = 4131230
local n10 = 4131231
local n11 = 4131232
local n12 = 4131233
local n13 = 4131214
local n14 = 4131210
local n15 = 4131211
local n16 = 4131215
local n17 = 4131216
local n18 = 4131217
local n19 = 4131234
local n20 = 4131218
local n21 = 4131219
local n22 = 4131220
local n23 = 4131221
local n24 = 4131223
local n25 = 4131224
local n26 = 4131225
local n27 = 4131226
local n28 = 4131227
local n29 = 4131228
local n30 = 4131207
local n31 = 4131212
local n32 = 4131213
local n33 = 4131229
local n34 = 4131222
tbl[1] = 4131201
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133107149,3;133107150,2;133104474,1;133104006,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133104919"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133107947"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133107903"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100237,100238"}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"16"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4131201"] = {},
    ["4131204"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131205"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131206"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4131207"] = {},
    ["4131208"] = {
        npcs = {
            {
                id = 10205,
                alias = "Npc10205",
                script = "Actor/Npc/TempNPC",
                pos = "Q40007_ThiefRout1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4131210"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4131211"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4131214"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4131215"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4131216"] = {},
    ["4131218"] = {},
    ["4131219"] = {},
    ["4131221"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q40003Xiao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70700017,
                alias = "Gadget70700017",
                pos = "Q4131201Mark",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131222"] = {},
    ["4131223"] = {
        gadgets = {
            {
                id = 70700017,
                alias = "Gadget70700017",
                pos = "Q4131201Mark",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131224"] = {},
    ["4131225"] = {},
    ["4131228"] = {},
    ["4131229"] = {},
    ["4131232"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4131233"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["4131201"] = {
        npcs = {
            {
                id = 30039,
                alias = "Npc30039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4131101WangYa",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131202"] = {},
    ["4131203"] = {},
    ["4131204"] = {},
    ["4131205"] = {},
    ["4131206"] = {
        npcs = {
            {
                id = 10205,
                alias = "Npc10205",
                script = "Actor/Npc/TempNPC",
                pos = "Q40007_ThiefRout1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131207"] = {
        npcs = {
            {
                id = 10205,
                alias = "Npc10205",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131212Thief",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131208"] = {},
    ["4131209"] = {
        gadgets = {
            {
                id = 70710041,
                alias = "Gadget70710041",
                pos = "Q40002Search1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131210"] = {
        gadgets = {
            {
                id = 70710303,
                alias = "Gadget70710303",
                pos = "Q4131210Search",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131211"] = {},
    ["4131212"] = {
        npcs = {
            {
                id = 10205,
                alias = "Npc10205",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131212Thief",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131213"] = {
        npcs = {
            {
                id = 10205,
                alias = "Npc10205",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131212Thief",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131214"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q40003Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131215"] = {
        npcs = {
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131218JiaYi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131216"] = {},
    ["4131217"] = {},
    ["4131218"] = {
        npcs = {
            {
                id = 242801,
                alias = "Npc242801",
                script = "Actor/Npc/TempNPC",
                pos = "Q41312XingHuo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131219"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q40003Xiao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70700017,
                alias = "Gadget70700017",
                pos = "Q4131201Mark",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131220"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4000307_Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131221"] = {},
    ["4131222"] = {
        npcs = {
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131218JiaYi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131223"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4131223Keaya",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131224"] = {
        npcs = {
            {
                id = 146101,
                alias = "Npc146101",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004_Spy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131225"] = {
        npcs = {
            {
                id = 10207,
                alias = "Npc10207",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10208,
                alias = "Npc10208",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4131226"] = {
        npcs = {
            {
                id = 10207,
                alias = "Npc10207",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10208,
                alias = "Npc10208",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4131227"] = {
        npcs = {
            {
                id = 10207,
                alias = "Npc10207",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10208,
                alias = "Npc10208",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4131228"] = {
        npcs = {
            {
                id = 10207,
                alias = "Npc10207",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10208,
                alias = "Npc10208",
                script = "Actor/Npc/TempNPC",
                pos = "Q40004Thoarder2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4131229"] = {
        npcs = {
            {
                id = 10205,
                alias = "Npc10205",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131212Thief",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131230"] = {
        gadgets = {
            {
                id = 70710042,
                alias = "Gadget70710042",
                pos = "Q40002Search2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131231"] = {
        gadgets = {
            {
                id = 70710043,
                alias = "Gadget70710043",
                pos = "Q40002Search3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4131232"] = {},
    ["4131233"] = {},
    ["4131234"] = {},
    ["4131235"] = {
        npcs = {
            {
                id = 10205,
                alias = "Npc10205",
                script = "Actor/Npc/TempNPC",
                pos = "Q40007_ThiefRout1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202501,
                alias = "Npc202501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4131211Changchang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4131236"] = {}
}
