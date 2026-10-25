main_id = 40202
local tbl = {}
local n = 4020202
local v = 4020219
local n2 = 4020210
local n3 = 4020212
local n4 = 4020203
local n5 = 4020217
local n6 = 4020218
local n7 = 4020216
local n8 = 4020211
local n9 = 4020215
local n10 = 4020204
local n11 = 4020214
local n12 = 4020205
local n13 = 4020213
local n14 = 4020208
local n15 = 4020209
local n16 = 4020206
local n17 = 4020220
local n18 = 4020207
tbl[1] = 4020201
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "201203005,201203006,201203003"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133403802,133403806,133403808"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"140"}}
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl5 = {}
local str3 = "0"
tbl5[1] = "6032"
tbl5[2] = str3
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl5
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl6 = {}
local str4 = "1"
tbl6[1] = "121289"
tbl6[2] = str4
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl6
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4020201"] = {},
    ["4020202"] = {},
    ["4020204"] = {},
    ["4020205"] = {},
    ["4020206"] = {},
    ["4020207"] = {},
    ["4020209"] = {},
    ["4020210"] = {},
    ["4020211"] = {},
    ["4020212"] = {},
    ["4020213"] = {},
    ["4020214"] = {},
    ["4020215"] = {},
    ["4020216"] = {},
    ["4020220"] = {}
}

quest_data = {
    ["4020201"] = {},
    ["4020202"] = {
        npcs = {
            {
                id = 15401,
                alias = "Npc15401",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100802:3453.661,454.951,4630.207,0.000,136.465,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1203, pos = "[1203_14:-0.402,0.029,11.348,0.000,166.294,0.000]"}}
    },
    ["4020203"] = {
        npcs = {
            {
                id = 30823,
                alias = "Npc30823",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_6:4.108,0.026,8.905,0.000,189.929,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 1
            },
            {
                id = 15404,
                alias = "Npc15404",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_4:0.035,0.026,5.783,0.000,180.270,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 2
            },
            {
                id = 15405,
                alias = "Npc15405",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_5:-2.587,0.026,9.944,0.000,176.917,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 3
            },
            {
                id = 15477,
                alias = "Npc15477",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_10:-1.027,0.029,2.949,0.000,182.915,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 4
            },
            {
                id = 15478,
                alias = "Npc15478",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_9:2.455,0.029,3.040,0.000,175.684,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 5
            },
            {
                id = 15479,
                alias = "Npc15479",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_11:-3.992,0.029,8.201,0.000,179.703,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 6
            },
            {
                id = 15500,
                alias = "Npc15500",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_3:0.594,0.681,-0.935]",
                scene_id = 1203,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["4020204"] = {
        npcs = {
            {
                id = 15404,
                alias = "Npc15404",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100804:3457.222,454.922,4631.234,0.000,137.195,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15405,
                alias = "Npc15405",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100805:3454.904,454.922,4629.336,0.000,132.733,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4020205"] = {
        npcs = {
            {
                id = 2613,
                alias = "Npc2613",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300469:2215.310,472.527,4620.185,0.000,210.821,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30823,
                alias = "Npc30823",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300468:2214.558,472.671,4620.641,0.000,205.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300469:2215.310,472.527,4620.185,0.000,210.821,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4020206"] = {},
    ["4020207"] = {
        npcs = {
            {
                id = 2613,
                alias = "Npc2613",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300473:2282.494,468.639,4601.618]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300473:2282.494,468.639,4601.618]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4020208"] = {
        npcs = {
            {
                id = 2613,
                alias = "Npc2613",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300500:2257.081,469.666,4610.405,0.000,199.703,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300500:2257.081,469.666,4610.405,0.000,199.703,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4020209"] = {
        npcs = {
            {
                id = 2613,
                alias = "Npc2613",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300472:2249.117,462.883,4585.971,0.000,51.895,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300472:2249.117,462.883,4585.971,0.000,51.895,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340300492:2279.242,468.333,4601.057,0.000,92.029,0.000]"}}
    },
    ["4020210"] = {
        npcs = {
            {
                id = 2613,
                alias = "Npc2613",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_1:0.107,0.026,9.947]",
                scene_id = 1203,
                room_id = 1,
                data_index = 1
            },
            {
                id = 30823,
                alias = "Npc30823",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_6:4.108,0.026,8.905,0.000,189.929,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 2
            },
            {
                id = 15404,
                alias = "Npc15404",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_4:0.035,0.026,5.783,0.000,180.270,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 3
            },
            {
                id = 15405,
                alias = "Npc15405",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_5:-2.587,0.026,9.944,0.000,176.917,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_1:0.107,0.026,9.947]",
                scene_id = 1203,
                room_id = 1,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1203, pos = "[1203_19:0.199,7.518,-9.350,0.000,1.367,0.000]"}}
    },
    ["4020211"] = {
        npcs = {
            {
                id = 15401,
                alias = "Npc15401",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100802:3453.661,454.951,4630.207,0.000,136.465,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1203, pos = "[1203_1:0.107,0.026,9.947]"}}
    },
    ["4020212"] = {
        npcs = {
            {
                id = 30823,
                alias = "Npc30823",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_6:4.108,0.026,8.905,0.000,189.929,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 1
            },
            {
                id = 15404,
                alias = "Npc15404",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_4:0.035,0.026,5.783,0.000,180.270,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 2
            },
            {
                id = 15405,
                alias = "Npc15405",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_5:-2.587,0.026,9.944,0.000,176.917,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 3
            },
            {
                id = 15504,
                alias = "Npc15504_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_8:-2.508,0.029,5.097,0.000,177.032,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 4
            },
            {
                id = 15477,
                alias = "Npc15477",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_10:-1.027,0.029,2.949,0.000,182.915,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 5
            },
            {
                id = 15478,
                alias = "Npc15478",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_9:2.455,0.029,3.040,0.000,175.684,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 6
            },
            {
                id = 15479,
                alias = "Npc15479",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_11:-3.992,0.029,8.201,0.000,179.703,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 7
            },
            {
                id = 15500,
                alias = "Npc15500",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_3:0.594,0.681,-0.935]",
                scene_id = 1203,
                room_id = 1,
                data_index = 8
            },
            {
                id = 30820,
                alias = "Npc30820",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_21:6.867,0.000,16.460,0.000,239.757,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 9
            },
            {
                id = 15421,
                alias = "Npc15421",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_2:0.290,7.518,-7.478,0.000,358.242,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[1203_8:-2.508,0.029,5.097,0.000,177.032,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 11
            }
        }
    },
    ["4020213"] = {
        npcs = {
            {
                id = 2613,
                alias = "Npc2613",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300500:2257.081,469.666,4610.405,0.000,199.703,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30823,
                alias = "Npc30823",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300501:2255.629,469.396,4610.159,0.000,161.749,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300500:2257.081,469.666,4610.405,0.000,199.703,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340300470:2248.765,463.012,4587.060]"}}
    },
    ["4020214"] = {},
    ["4020215"] = {
        npcs = {
            {
                id = 2613,
                alias = "Npc2613",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_2:0.290,7.518,-7.478,0.000,358.242,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_2:0.290,7.518,-7.478,0.000,358.242,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100803:3455.583,454.922,4630.680]"}}
    },
    ["4020216"] = {},
    ["4020217"] = {
        npcs = {
            {
                id = 15502,
                alias = "Npc15502_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_7:-1.036,0.029,5.077,0.000,179.874,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_7:-1.036,0.029,5.077,0.000,179.874,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4020218"] = {
        npcs = {
            {
                id = 15503,
                alias = "Npc15503_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_7:-1.036,0.029,5.077,0.000,179.874,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[1203_7:-1.036,0.029,5.077,0.000,179.874,0.000]",
                scene_id = 1203,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4020219"] = {},
    ["4020220"] = {}
}
