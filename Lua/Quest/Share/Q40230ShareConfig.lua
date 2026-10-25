main_id = 40230
local tbl = {}
local n = 4023001
local v = 4023002
local n2 = 4023003
local n3 = 4023031
local n4 = 4023028
local n5 = 4023004
local n6 = 4023005
local n7 = 4023029
local n8 = 4023022
local n9 = 4023023
local n10 = 4023026
local n11 = 4023006
local n12 = 4023016
local n13 = 4023007
local n14 = 4023008
local n15 = 4023009
local n16 = 4023011
local n17 = 4023012
local n18 = 4023010
local n19 = 4023013
local n20 = 4023025
local n21 = 4023027
local n22 = 4023014
local n23 = 4023015
local n24 = 4023017
local n25 = 4023018
local n26 = 4023019
local n27 = 4023020
local n28 = 4023021
local n29 = 4023024
local n30 = 4023030
tbl[1] = 4023032
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121416,121453"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "201004013"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133004189"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10538"}, {"10539"}, {"190"}, {"191"}, {"192"}, {"193"}}
server.QUEST_EXEC_STOP_BARGAIN = {{"11"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4023001"] = {},
    ["4023002"] = {},
    ["4023003"] = {},
    ["4023004"] = {},
    ["4023005"] = {},
    ["4023006"] = {},
    ["4023007"] = {},
    ["4023008"] = {},
    ["4023009"] = {},
    ["4023010"] = {},
    ["4023011"] = {},
    ["4023012"] = {},
    ["4023013"] = {},
    ["4023014"] = {},
    ["4023015"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_6:552.975,203.416,515.723]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_5:611.199,199.759,546.738,0.000,320.174,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_26:526.370,199.570,592.861,0.000,166.282,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 3
            },
            {
                id = 16555,
                alias = "Npc16555",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_28:526.366,199.570,591.088,0.000,16.947,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4023016"] = {},
    ["4023017"] = {},
    ["4023018"] = {},
    ["4023019"] = {},
    ["4023020"] = {},
    ["4023021"] = {},
    ["4023022"] = {},
    ["4023023"] = {},
    ["4023026"] = {
        avatar = {
            offline_dungeon_id = 1305,
            scene_id = 20332,
            pos = "[20332_9:1873.540,231.552,-903.966,0.000,270.000,0.000]"
        }
    },
    ["4023028"] = {},
    ["4023029"] = {},
    ["4023030"] = {},
    ["4023031"] = {},
    ["4023032"] = {}
}

quest_data = {
    ["4023001"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_364:18.714,0.010,7.162,0.000,251.908,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_365:19.079,0.010,5.507,0.000,290.429,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_366:21.625,0.010,6.335,0.000,256.789,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_367:18.189,0.010,1.373]",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_368:18.482,0.010,4.958,0.000,317.310,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["4023002"] = {},
    ["4023003"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[1154_1:0.725,0.033,40.101,0.000,192.358,0.000]",
                scene_id = 1154,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023004"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[1155_1:-2.808,-0.400,45.418,0.000,203.085,0.000]",
                scene_id = 1155,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023005"] = {
        npcs = {
            {
                id = 16145,
                alias = "Npc16145",
                script = "Actor/Npc/TempNPC",
                pos = "[1155_2:-4.345,-2.636,-44.008,0.000,323.422,0.000]",
                scene_id = 1155,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023006"] = {},
    ["4023007"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_1:623.287,194.189,745.200]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023008"] = {
        npcs = {
            {
                id = 16335,
                alias = "Npc16335",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_15:619.952,194.759,743.737,0.000,42.711,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023009"] = {
        npcs = {
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_3:584.649,197.420,640.413,0.000,91.917,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023010"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_6:552.975,203.416,515.723]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16338,
                alias = "Npc16338",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_20:550.650,199.870,548.622,0.000,28.066,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4023011"] = {
        npcs = {
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_4:522.264,199.836,592.528,0.000,95.065,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16555,
                alias = "Npc16555",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_27:522.158,199.836,590.979,0.000,77.814,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16337,
                alias = "Npc16337",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_19:549.277,199.870,590.612,0.000,88.544,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_4:522.264,199.836,592.528,0.000,95.065,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4023012"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_5:611.199,199.759,546.738,0.000,320.174,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16336,
                alias = "Npc16336",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_16:556.481,200.226,578.568,0.000,321.855,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4023013"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_6:552.975,203.416,515.723]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16338,
                alias = "Npc16338",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_20:550.650,199.870,548.622,0.000,28.066,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_5:611.199,199.759,546.738,0.000,320.174,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_7:599.196,201.170,600.142,0.000,359.848,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_26:526.370,199.570,592.861,0.000,166.282,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 5
            },
            {
                id = 16555,
                alias = "Npc16555",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_28:526.366,199.570,591.088,0.000,16.947,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_26:526.370,199.570,592.861,0.000,166.282,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4023014"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_6:552.975,203.416,515.723]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_5:611.199,199.759,546.738,0.000,320.174,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_7:599.196,201.170,600.142,0.000,359.848,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_26:526.370,199.570,592.861,0.000,166.282,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 4
            },
            {
                id = 16555,
                alias = "Npc16555",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_28:526.366,199.570,591.088,0.000,16.947,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_26:526.370,199.570,592.861,0.000,166.282,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4023015"] = {
        npcs = {
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_29:603.824,201.170,600.184,0.000,207.667,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_26:526.370,199.570,592.861,0.000,166.282,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4023016"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_18:584.196,200.890,772.737,0.000,270.000,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023017"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_8:580.965,221.978,475.572,0.000,338.940,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023018"] = {},
    ["4023019"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_8:580.965,221.978,475.572,0.000,338.940,0.000]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_15632:2316.114,249.990,-773.472]"}}
    },
    ["4023020"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14454:2314.545,249.990,-764.857]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14454:2314.545,249.990,-764.857]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14876:2560.978,213.499,-1330.157,0.000,300.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4023021"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14455:2317.728,270.415,-754.613,0.000,219.677,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14454:2314.545,249.990,-764.857]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14876:2560.978,213.499,-1330.157,0.000,300.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14875:2560.130,213.016,-1332.871]"}}
    },
    ["4023022"] = {
        npcs = {
            {
                id = 16145,
                alias = "Npc16145",
                script = "Actor/Npc/TempNPC",
                pos = "[20332_1:2349.331,259.975,-697.389,0.000,204.116,0.000]",
                scene_id = 20332,
                room_id = 0,
                data_index = 1,
                platformInfo = {
                    sceneId = 20332,
                    groupId = 220332001,
                    configId = 1047,
                    offsetPos = {x = 0.0, y = 0.0, z = 0.0},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[20332_1:2349.331,259.975,-697.389,0.000,204.116,0.000]",
                scene_id = 20332,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4023023"] = {},
    ["4023024"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14455:2317.728,270.415,-754.613,0.000,219.677,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14454:2314.545,249.990,-764.857]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14876:2560.978,213.499,-1330.157,0.000,300.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4023025"] = {
        npcs = {
            {
                id = 16338,
                alias = "Npc16338",
                script = "Actor/Npc/TempNPC",
                pos = "[20329_21:552.678,199.870,551.626]",
                scene_id = 20329,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023026"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1302, pos = "[20329_17:583.988,200.890,772.854]"}}
    },
    ["4023027"] = {},
    ["4023028"] = {},
    ["4023029"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1305, pos = "[20332_3:2352.065,259.998,-692.301,0.000,208.138,0.000]"}}
    },
    ["4023030"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14455:2317.728,270.415,-754.613,0.000,219.677,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14454:2314.545,249.990,-764.857]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14876:2560.978,213.499,-1330.157,0.000,300.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_15644:2317.621,270.410,-754.861,0.000,210.252,0.000]"}}
    },
    ["4023031"] = {
        npcs = {
            {
                id = 16335,
                alias = "Npc16335",
                script = "Actor/Npc/TempNPC",
                pos = "[1154_3:2.223,0.033,31.121]",
                scene_id = 1154,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1313, pos = "[1155_5:-3.964,-0.400,45.508,0.000,180.000,0.000]"}}
    },
    ["4023032"] = {}
}
