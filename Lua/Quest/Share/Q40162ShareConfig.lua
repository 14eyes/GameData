main_id = 40162
local tbl = {}
local n = 4016202
local v = 4016203
local n2 = 4016205
local n3 = 4016206
local n4 = 4016225
local n5 = 4016204
local n6 = 4016226
local n7 = 4016207
local n8 = 4016208
local n9 = 4016209
local n10 = 4016219
local n11 = 4016210
local n12 = 4016211
local n13 = 4016223
local n14 = 4016224
local n15 = 4016221
local n16 = 4016212
local n17 = 4016213
local n18 = 4016220
local n19 = 4016227
local n20 = 4016228
local n21 = 4016229
local n22 = 4016214
local n23 = 4016215
local n24 = 4016216
local n25 = 4016230
local n26 = 4016231
local n27 = 4016232
local n28 = 4016233
local n29 = 4016217
local n30 = 4016234
local n31 = 4016238
local n32 = 4016222
local n33 = 4016218
tbl[1] = 4016201
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"96"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121010,121007,121008,121009"}}
    }
}

rewind_data = {
    ["4016201"] = {},
    ["4016202"] = {},
    ["4016203"] = {},
    ["4016204"] = {},
    ["4016205"] = {},
    ["4016206"] = {},
    ["4016207"] = {},
    ["4016208"] = {},
    ["4016209"] = {},
    ["4016210"] = {},
    ["4016211"] = {},
    ["4016212"] = {},
    ["4016213"] = {},
    ["4016214"] = {},
    ["4016215"] = {},
    ["4016216"] = {},
    ["4016217"] = {},
    ["4016218"] = {},
    ["4016219"] = {},
    ["4016220"] = {},
    ["4016221"] = {},
    ["4016222"] = {},
    ["4016224"] = {},
    ["4016227"] = {},
    ["4016228"] = {},
    ["4016229"] = {},
    ["4016234"] = {},
    ["4016238"] = {}
}

quest_data = {
    ["4016201"] = {},
    ["4016202"] = {
        npcs = {
            {
                id = 30557,
                alias = "Npc30557",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300401898:2280.517,217.152,-895.413]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {
                point_id = 1,
                scene_id = 100,
                pos = "[100_910003014:-439.395,588.698,-713.113,0.000,139.904,0.000]"
            }
        }
    },
    ["4016203"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[100_910003015:-438.351,588.656,-714.192,0.000,320.355,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016204"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003016:-209.275,501.683,-729.778,0.000,288.863,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016205"] = {
        npcs = {
            {
                id = 30555,
                alias = "Npc30555",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003019:-322.248,550.957,-764.223,0.000,87.040,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003047:-323.396,551.499,-762.878,0.000,81.592,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016206"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003016:-209.275,501.683,-729.778,0.000,288.863,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016207"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003024:-109.181,507.572,-823.374,0.000,187.682,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003024:-109.181,507.572,-823.374,0.000,187.682,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016208"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003031:-84.375,498.825,-785.661,0.000,70.887,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003048:-81.208,499.767,-781.974,0.000,303.640,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30570,
                alias = "Npc30570",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003044:-81.797,499.784,-781.761,0.000,124.889,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003031:-84.375,498.825,-785.661,0.000,70.887,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016209"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003031:-84.375,498.825,-785.661,0.000,70.887,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003048:-81.208,499.767,-781.974,0.000,303.640,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30570,
                alias = "Npc30570",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003044:-81.797,499.784,-781.761,0.000,124.889,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003031:-84.375,498.825,-785.661,0.000,70.887,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016210"] = {
        npcs = {
            {
                id = 30555,
                alias = "Npc30555",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003049:-120.675,512.382,-654.883,0.000,317.252,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003045:-123.626,510.418,-652.019,0.000,136.485,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016211"] = {
        npcs = {
            {
                id = 30555,
                alias = "Npc30555",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003049:-120.675,512.382,-654.883,0.000,317.252,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003045:-123.626,510.418,-652.019,0.000,136.485,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016212"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003050:-25.448,470.895,-638.368,0.000,95.583,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003034:-23.670,470.739,-636.223,0.000,194.486,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30556,
                alias = "Npc30556",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003046:-23.811,470.992,-638.320,0.000,348.084,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003034:-23.670,470.739,-636.223,0.000,194.486,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016213"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003050:-25.448,470.895,-638.368,0.000,95.583,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003034:-23.670,470.739,-636.223,0.000,194.486,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30556,
                alias = "Npc30556",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003046:-23.811,470.992,-638.320,0.000,348.084,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003034:-23.670,470.739,-636.223,0.000,194.486,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016214"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 100, pos = "[100_910003035:-109.828,507.555,-827.278]"}}
    },
    ["4016215"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016216"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016217"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016218"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003041:-165.555,488.682,-778.346]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003041:-165.555,488.682,-778.346]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016219"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003031:-84.375,498.825,-785.661,0.000,70.887,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003048:-81.208,499.767,-781.974,0.000,303.640,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30570,
                alias = "Npc30570",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003044:-81.797,499.784,-781.761,0.000,124.889,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003031:-84.375,498.825,-785.661,0.000,70.887,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016220"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003050:-25.448,470.895,-638.368,0.000,95.583,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003034:-23.670,470.739,-636.223,0.000,194.486,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30556,
                alias = "Npc30556",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003046:-23.811,470.992,-638.320,0.000,348.084,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003034:-23.670,470.739,-636.223,0.000,194.486,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016221"] = {
        npcs = {
            {
                id = 30555,
                alias = "Npc30555",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003049:-120.675,512.382,-654.883,0.000,317.252,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003072:-123.097,510.056,-644.321,0.000,124.418,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016222"] = {
        npcs = {
            {
                id = 30555,
                alias = "Npc30555",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003064:-121.927,485.304,-773.327,0.000,252.277,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003063:-121.888,485.361,-774.503,0.000,288.016,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003038:-154.301,486.645,-770.651,0.000,241.024,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30569,
                alias = "Npc30569",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003059:-147.396,488.479,-753.183,0.000,95.765,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30570,
                alias = "Npc30570",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003060:-146.288,488.457,-753.253,0.000,280.640,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30556,
                alias = "Npc30556",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003062:-144.970,486.288,-744.904,0.000,281.723,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30571,
                alias = "Npc30571",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003065:-129.304,485.630,-782.018,0.000,353.145,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30607,
                alias = "Npc30607",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003061:-129.524,485.618,-781.132,0.000,174.405,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003038:-154.301,486.645,-770.651,0.000,241.024,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4016223"] = {
        npcs = {
            {
                id = 30555,
                alias = "Npc30555",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003049:-120.675,512.382,-654.883,0.000,317.252,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003072:-123.097,510.056,-644.321,0.000,124.418,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016224"] = {
        npcs = {
            {
                id = 30555,
                alias = "Npc30555",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003049:-120.675,512.382,-654.883,0.000,317.252,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30568,
                alias = "Npc30568",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003045:-123.626,510.418,-652.019,0.000,136.485,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016225"] = {
        npcs = {
            {
                id = 30554,
                alias = "Npc30554",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003016:-209.275,501.683,-729.778,0.000,288.863,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016226"] = {},
    ["4016227"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003031:-84.375,498.825,-785.661,0.000,70.887,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003031:-84.375,498.825,-785.661,0.000,70.887,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016228"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003028:-122.679,510.363,-651.182,0.000,113.514,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016229"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003034:-23.670,470.739,-636.223,0.000,194.486,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003034:-23.670,470.739,-636.223,0.000,194.486,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016230"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016231"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016232"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016233"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003037:-111.174,507.555,-825.780,0.000,129.220,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4016234"] = {},
    ["4016238"] = {
        npcs = {
            {
                id = 2670,
                alias = "Npc2670",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003024:-109.181,507.572,-823.374,0.000,187.682,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[100_910003024:-109.181,507.572,-823.374,0.000,187.682,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
