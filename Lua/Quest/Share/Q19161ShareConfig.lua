main_id = 19161
local tbl = {}
local n = 1916102
local v = 1916104
local n2 = 1916115
local n3 = 1916110
local n4 = 1916105
local n5 = 1916135
local n6 = 1916134
local n7 = 1916133
local n8 = 1916132
local n9 = 1916131
local n10 = 1916130
local n11 = 1916129
local n12 = 1916128
local n13 = 1916127
local n14 = 1916126
local n15 = 1916106
local n16 = 1916107
local n17 = 1916124
local n18 = 1916123
local n19 = 1916122
local n20 = 1916121
local n21 = 1916120
local n22 = 1916119
local n23 = 1916118
local n24 = 1916117
local n25 = 1916116
local n26 = 1916125
local n27 = 1916111
local n28 = 1916112
local n29 = 1916108
tbl[1] = 1916101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133315342"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133302741"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133302743"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133302742"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133315340"
tbl7[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120223,120224,120225,120234"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"1916105"}}
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl8 = {}
local str6 = "0"
tbl8[1] = "4097"
tbl8[2] = str6
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl8
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1916101"] = {},
    ["1916105"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916103_331500070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1916106"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916103_331500070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1916107"] = {},
    ["1916108"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916104_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1916110"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916103_331500070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1916101"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916101_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916101_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916102"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916101_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916101_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916104"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916101_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916101_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916105"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916103_331500070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1916106"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916103_331500070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1916107"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916104_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916104_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916108"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916104_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1916110"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916103_331500070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1916111"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916104_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916104_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916112"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916104_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q1916104_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1916115"] = {},
    ["1916116"] = {},
    ["1916117"] = {},
    ["1916118"] = {},
    ["1916119"] = {},
    ["1916120"] = {},
    ["1916121"] = {},
    ["1916122"] = {},
    ["1916123"] = {},
    ["1916124"] = {},
    ["1916125"] = {},
    ["1916126"] = {},
    ["1916127"] = {},
    ["1916128"] = {},
    ["1916129"] = {},
    ["1916130"] = {},
    ["1916131"] = {},
    ["1916132"] = {},
    ["1916133"] = {},
    ["1916134"] = {},
    ["1916135"] = {}
}
