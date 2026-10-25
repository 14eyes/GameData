main_id = 40177
local tbl = {}
local n = 4017702
local v = 4017703
local n2 = 4017704
local n3 = 4017705
local n4 = 4017708
local n5 = 4017706
local n6 = 4017707
local n7 = 4017709
local n8 = 4017710
local n9 = 4017711
local n10 = 4017712
local n11 = 4017713
local n12 = 4017714
local n13 = 4017715
local n14 = 4017716
local n15 = 4017717
local n16 = 4017718
tbl[1] = 4017701
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10511"}, {"10512"}, {"116"}, {"117"}, {"118"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133509114"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
local qUEST_EXEC_LOCK_POINT = {}
local tbl4 = {}
local str2 = "1493"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_LOCK_POINT[1] = tbl4
server.QUEST_EXEC_LOCK_POINT = qUEST_EXEC_LOCK_POINT
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4017701"] = {},
    ["4017702"] = {
        npcs = {
            {
                id = 6092,
                alias = "Npc6092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10531:-1425.890,120.788,7486.237,0.000,227.227,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017703"] = {},
    ["4017704"] = {},
    ["4017705"] = {},
    ["4017706"] = {},
    ["4017707"] = {},
    ["4017708"] = {},
    ["4017709"] = {},
    ["4017710"] = {},
    ["4017711"] = {},
    ["4017712"] = {},
    ["4017713"] = {},
    ["4017714"] = {},
    ["4017715"] = {},
    ["4017716"] = {},
    ["4017717"] = {},
    ["4017718"] = {}
}

quest_data = {
    ["4017701"] = {
        npcs = {
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10528:-1424.896,120.698,7483.899,0.000,268.328,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10530:-1427.320,120.871,7484.342,0.000,218.782,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15102,
                alias = "Npc15102",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10532:-1428.713,121.213,7483.172,0.000,73.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 6092,
                alias = "Npc6092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10531:-1425.890,120.788,7486.237,0.000,227.227,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15103,
                alias = "Npc15103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10533:-1427.005,120.813,7482.846,0.000,279.778,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30719,
                alias = "Npc30719",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10690:-1424.939,120.545,7482.124,0.000,309.085,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30720,
                alias = "Npc30720",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10691:-1424.753,120.617,7482.938,0.000,275.271,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10529:-1428.139,121.151,7485.602,0.000,173.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30799,
                alias = "Npc30799",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11063:-1427.151,120.861,7485.720,0.000,179.828,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 30800,
                alias = "Npc30800",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11064:-1425.484,120.718,7483.347,0.000,273.361,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4017702"] = {
        npcs = {
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10702:-1419.263,124.855,7503.498,0.000,144.750,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15102,
                alias = "Npc15102",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10532:-1428.713,121.213,7483.172,0.000,73.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15103,
                alias = "Npc15103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10533:-1427.005,120.813,7482.846,0.000,279.778,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14918,
                alias = "Npc14918",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10538:-1424.302,120.460,7480.287,0.000,322.016,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 6250,
                alias = "Npc6250",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_10538:-1424.302,120.460,7480.287,0.000,322.016,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4017703"] = {
        npcs = {
            {
                id = 15102,
                alias = "Npc15102",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10532:-1428.713,121.213,7483.172,0.000,73.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6092,
                alias = "Npc6092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10531:-1425.890,120.788,7486.237,0.000,227.227,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15103,
                alias = "Npc15103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10533:-1427.005,120.813,7482.846,0.000,279.778,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 6055,
                alias = "Npc6055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10534:-1424.764,120.658,7483.274,0.000,278.827,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 6100,
                alias = "Npc6100",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10535:-1424.963,120.584,7482.410,0.000,283.939,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 6228,
                alias = "Npc6228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10536:-1425.128,120.527,7481.318,0.000,319.157,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 6305,
                alias = "Npc6305",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10537:-1425.702,120.580,7480.540,0.000,323.767,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 14918,
                alias = "Npc14918",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10538:-1424.302,120.460,7480.287,0.000,322.016,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 6250,
                alias = "Npc6250",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_10538:-1424.302,120.460,7480.287,0.000,322.016,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4017704"] = {
        npcs = {
            {
                id = 15102,
                alias = "Npc15102",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10532:-1428.713,121.213,7483.172,0.000,73.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15103,
                alias = "Npc15103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10533:-1427.005,120.813,7482.846,0.000,279.778,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4017705"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_83:-5.710,2.863,-0.306,0.000,280.200,0.000]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4017706"] = {},
    ["4017707"] = {
        npcs = {
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_7:-1527.706,200.352,10080.060,0.000,95.447,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017708"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_83:-5.710,2.863,-0.306,0.000,280.200,0.000]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10594:-1958.833,64.974,9086.621,0.000,16.940,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4017709"] = {
        npcs = {
            {
                id = 1091,
                alias = "Npc1091",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_10:-1358.470,200.020,9992.428,0.000,319.080,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30785,
                alias = "Npc30785",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_14:-1356.179,200.007,9991.155,0.000,324.305,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30786,
                alias = "Npc30786",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_15:-1357.657,200.046,9989.955,0.000,324.305,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4017710"] = {},
    ["4017711"] = {
        npcs = {
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_11:-1278.980,284.111,9908.941,0.000,328.457,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30787,
                alias = "Npc30787",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_16:-1278.984,283.866,9906.585,0.241,339.870,359.093]",
                scene_id = 20253,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30788,
                alias = "Npc30788",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_17:-1276.927,283.801,9907.449,0.214,325.571,358.426]",
                scene_id = 20253,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4017712"] = {},
    ["4017713"] = {
        npcs = {
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_8:-1276.326,283.894,9896.692,0.000,129.505,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017714"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_12:-1179.482,267.903,9753.930,0.000,307.410,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_13:-1207.921,216.054,9756.753,0.000,122.238,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30789,
                alias = "Npc30789",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_18:-1178.607,267.724,9751.377,0.000,321.489,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30790,
                alias = "Npc30790",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_19:-1176.822,267.654,9753.223,0.000,314.281,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30791,
                alias = "Npc30791",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_20:-1208.403,215.216,9758.551,0.000,149.400,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30792,
                alias = "Npc30792",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_21:-1209.937,215.591,9756.294,0.000,93.300,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30724,
                alias = "Npc30724",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_22:-1205.744,217.022,9754.919,3.728,313.091,357.069]",
                scene_id = 20253,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30725,
                alias = "Npc30725",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_23:-1207.033,217.457,9753.313,0.000,331.292,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30729,
                alias = "Npc30729",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_24:-1204.267,216.547,9756.870,0.000,290.063,0.000]",
                scene_id = 20253,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4017715"] = {},
    ["4017716"] = {
        npcs = {
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[20253_9:-1188.271,269.407,9742.843]",
                scene_id = 20253,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4017717"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_10723:-2848.756,201.324,9071.812,0.000,45.206,0.000]"}}
    },
    ["4017718"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10722:-2848.105,201.324,9072.647,0.000,220.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
