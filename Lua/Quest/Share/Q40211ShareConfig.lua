main_id = 40211
local tbl = {}
local n = 4021102
local v = 4021103
local n2 = 4021104
local n3 = 4021135
local n4 = 4021160
local n5 = 4021136
local n6 = 4021105
local n7 = 4021106
local n8 = 4021107
local n9 = 4021137
local n10 = 4021108
local n11 = 4021143
local n12 = 4021138
local n13 = 4021142
local n14 = 4021109
local n15 = 4021149
local n16 = 4021110
local n17 = 4021147
local n18 = 4021148
local n19 = 4021130
local n20 = 4021131
local n21 = 4021132
local n22 = 4021150
local n23 = 4021111
local n24 = 4021158
local n25 = 4021112
local n26 = 4021113
local n27 = 4021144
local n28 = 4021115
local n29 = 4021116
local n30 = 4021151
local n31 = 4021117
local n32 = 4021152
local n33 = 4021153
local n34 = 4021154
local n35 = 4021118
local n36 = 4021119
local n37 = 4021114
local n38 = 4021120
local n39 = 4021156
local n40 = 4021121
local n41 = 4021155
local n42 = 4021145
local n43 = 4021122
local n44 = 4021157
local n45 = 4021123
local n46 = 4021124
local n47 = 4021139
local n48 = 4021140
tbl[1] = 4021101
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
tbl[42] = n40
tbl[43] = n41
tbl[44] = n42
tbl[45] = n43
tbl[46] = n44
tbl[47] = n45
tbl[48] = n46
tbl[49] = n47
tbl[50] = n48
local n49 = 4021133
local n50 = 4021134
local n51 = 4021125
local n52 = 4021126
local n53 = 4021159
local n54 = 4021146
local n55 = 4021127
local n56 = 4021128
local n57 = 4021129
tbl[51] = 4021141
tbl[52] = n49
tbl[53] = n50
tbl[54] = n51
tbl[55] = n52
tbl[56] = n53
tbl[57] = n54
tbl[58] = n55
tbl[59] = n56
tbl[60] = n57
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133309745"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121376"}, {"121375"}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"156"}, {"157"}, {"158"}, {"159"}, {"160"}, {"155"}, {"10518"}, {"10519"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4021101"] = {},
    ["4021102"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021103"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021104"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021105"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021106"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021107"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021108"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021109"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021110"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021111"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021112"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021113"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021114"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_105:181.499,82.150,793.260,0.000,183.723,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021115"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021116"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_50:188.000,78.672,796.600,0.000,300.671,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13197,
                alias = "Npc13197",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_51:187.954,78.724,798.158,0.000,312.762,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4021117"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021118"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_107:170.400,81.672,787.000,0.000,270.248,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13197,
                alias = "Npc13197",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_108:165.973,81.707,794.305,0.000,185.422,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4021119"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021120"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_105:181.499,82.150,793.260,0.000,183.723,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021121"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021122"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021123"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021124"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021125"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021126"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021127"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        avatar = {
            offline_dungeon_id = 1260,
            scene_id = 20282,
            pos = "[20282_64:178.631,36.672,864.768,0.000,91.446,0.000]"
        }
    },
    ["4021128"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021129"] = {
        npcs = {
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021130"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021131"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021132"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021133"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021134"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021135"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021136"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021137"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021138"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021139"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021140"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021141"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021142"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021143"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021144"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021145"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021146"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        avatar = {
            offline_dungeon_id = 1260,
            scene_id = 20282,
            pos = "[20282_55:176.810,72.672,864.374,0.000,269.246,0.000]"
        }
    },
    ["4021147"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021148"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021152"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021153"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021154"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021156"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021157"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021158"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021159"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021160"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["4021101"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021102"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330900302:-2037.640,155.544,5818.948,0.000,11.981,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330900299:-2036.838,155.503,5820.389,0.000,262.024,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330900298:-2038.286,155.738,5820.484,0.000,90.394,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330900301:-2034.492,155.018,5818.398,0.000,296.868,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330900303:-2036.086,155.212,5817.506,0.000,353.671,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700038:-2027.989,154.053,5816.771,0.000,344.848,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700037:-2033.575,154.406,5810.017,0.000,283.905,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4021103"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1260, pos = "[20282_3:507.164,79.473,863.984,0.000,270.070,0.000]"}},
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021104"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_3:507.164,79.473,863.984,0.000,270.070,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021105"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_4:339.742,90.705,862.701,0.000,270.746,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021106"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021107"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_4:339.742,90.705,862.701,0.000,270.746,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021108"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_5:268.434,66.672,863.896,0.000,270.718,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021109"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_6:199.860,66.662,928.638,0.000,265.591,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021110"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021111"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021112"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_7:176.381,69.672,928.605,0.000,269.645,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021113"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021114"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_8:176.169,66.672,901.303,0.000,181.648,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021115"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021116"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_9:189.341,78.672,798.965,0.000,285.696,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021117"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021118"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_10:172.238,81.672,789.173,0.000,267.712,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021119"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_105:181.499,82.150,793.260,0.000,183.723,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021120"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021121"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_12:186.166,66.672,794.236,0.000,181.932,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13197,
                alias = "Npc13197",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_100:184.226,66.672,794.269,0.000,164.140,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4021122"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_41:266.020,66.672,862.769,0.000,275.935,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021123"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_15:197.012,69.672,863.776,0.000,273.935,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021124"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021125"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_16:196.405,78.672,891.666]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021126"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_17:195.885,69.672,869.393,0.000,1.581,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_18:197.436,69.672,869.481,0.000,3.704,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13197,
                alias = "Npc13197",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_59:198.582,69.672,869.554,0.000,345.937,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4021127"] = {
        npcs = {
            {
                id = 15576,
                alias = "Npc15576",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_14:208.439,33.672,864.018,0.000,279.440,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021128"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021129"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330900304:-2031.561,153.647,5799.224,0.000,40.916,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330900304:-2031.561,153.647,5799.224,0.000,40.916,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021130"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_7:176.381,69.672,928.605,0.000,269.645,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021131"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021132"] = {
        npcs = {
            {
                id = 1085,
                alias = "Npc1085",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_78:146.540,66.672,909.033,0.000,181.170,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021133"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_16:196.405,78.672,891.666]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021134"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021135"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021136"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021137"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021138"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021139"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021140"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021141"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021142"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021143"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1260, pos = "[20282_41:266.020,66.672,862.769,0.000,275.935,0.000]"}},
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021144"] = {
        transmit_points = {{point_id = 2, scene_id = 20282, pos = "[20282_42:257.388,66.702,862.348,0.000,181.077,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1260, pos = "[20282_42:257.388,66.702,862.348,0.000,181.077,0.000]"}},
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021145"] = {
        transmit_points = {{point_id = 1, scene_id = 20282, pos = "[20282_36:260.394,66.643,864.020,0.000,268.755,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1260, pos = "[20282_41:266.020,66.672,862.769,0.000,275.935,0.000]"}},
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021146"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021147"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021148"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021149"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021150"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021151"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021152"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021153"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021154"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_107:170.400,81.672,787.000,0.000,270.248,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13197,
                alias = "Npc13197",
                script = "Actor/Npc/TempNPC",
                pos = "[20282_108:165.973,81.707,794.305,0.000,185.422,0.000]",
                scene_id = 20282,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4021155"] = {
        npcs = {
            {
                id = 13992,
                alias = "Npc13992",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4476,
                alias = "Npc4476",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700039:-2030.017,154.100,5814.275,0.000,117.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15978,
                alias = "Npc15978",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700036:-2018.749,152.501,5808.640,0.000,279.456,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15979,
                alias = "Npc15979",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330700035:-2028.667,153.781,5806.579,0.000,23.126,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021156"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021157"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021158"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021159"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1260, pos = "[20282_55:176.810,72.672,864.374,0.000,269.246,0.000]"}},
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4021160"] = {
        npcs = {
            {
                id = 13272,
                alias = "Npc13272",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330800411:-2011.349,274.922,4229.661,0.000,272.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
