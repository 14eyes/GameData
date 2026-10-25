main_id = 40124
local tbl = {}
local n = 4012402
local v = 4012403
local n2 = 4012419
local n3 = 4012420
local n4 = 4012413
local n5 = 4012416
local n6 = 4012405
local n7 = 4012406
local n8 = 4012414
local n9 = 4012407
local n10 = 4012423
local n11 = 4012408
local n12 = 4012417
local n13 = 4012418
local n14 = 4012409
local n15 = 4012410
local n16 = 4012404
local n17 = 4012415
local n18 = 4012411
local n19 = 4012412
local n20 = 4012421
local n21 = 4012422
tbl[1] = 4012401
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"72"}, {"73"}, {"74"}, {"69"}, {"70"}, {"78"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133102276"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133102262,133102276"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133102246,133102276"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133104825"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133102264,133102276"
tbl7[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120641,120642,120664"}}
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM_V2 = {{}}
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl8 = {}
local str6 = "0"
tbl8[1] = "3503"
tbl8[2] = str6
local tbl9 = {}
local str7 = "0"
tbl9[1] = "3504"
tbl9[2] = str7
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl8
qUEST_EXEC_SET_WEATHER_GADGET[2] = tbl9
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4012401"] = {},
    ["4012402"] = {},
    ["4012403"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012405"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012406"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012407"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012408"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200639:1366.550,200.178,406.760,0.000,158.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012409"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200639:1366.550,200.178,406.760,0.000,158.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012410"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012411"] = {},
    ["4012412"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012413"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012414"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012415"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012417"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200639:1366.550,200.178,406.760,0.000,158.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012421"] = {},
    ["4012422"] = {}
}

quest_data = {
    ["4012401"] = {},
    ["4012402"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200634:1565.174,219.196,259.081,0.000,214.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200709:1559.385,218.756,254.067,0.000,31.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200710:1558.873,218.756,252.322,0.000,39.390,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200708:1560.366,218.756,252.356,0.000,35.250,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200655:1562.849,218.756,252.841]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200711:1557.671,218.756,254.309,0.000,60.330,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200709:1559.385,218.756,254.067,0.000,31.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4012403"] = {
        npcs = {
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400501:898.492,206.917,3.058,0.000,236.980,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400501:898.492,206.917,3.058,0.000,236.980,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012404"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012405"] = {
        npcs = {
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400503:940.012,207.732,42.176]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400503:940.012,207.732,42.176]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012406"] = {
        npcs = {
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400503:940.012,207.732,42.176]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13604,
                alias = "Npc13604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400517:926.899,200.400,61.312]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400503:940.012,207.732,42.176]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4012407"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200691:1318.813,201.455,503.482,0.000,300.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200639:1366.550,200.178,406.760,0.000,158.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310200637:1367.780,200.185,403.368]"}}
    },
    ["4012408"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200691:1318.813,201.455,503.482,0.000,300.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012409"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200691:1318.813,201.455,503.482,0.000,300.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012410"] = {
        npcs = {
            {
                id = 13431,
                alias = "Npc13431",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200641:1433.590,201.731,372.388,0.000,240.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200691:1318.813,201.455,503.482,0.000,300.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200713:1378.417,200.100,406.263,0.000,167.330,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4012411"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012412"] = {},
    ["4012413"] = {
        npcs = {
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400503:940.012,207.732,42.176]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400503:940.012,207.732,42.176]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012414"] = {
        npcs = {
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200636:1559.510,200.057,857.970]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200636:1559.510,200.057,857.970]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310200637:1367.780,200.185,403.368]"}}
    },
    ["4012415"] = {
        npcs = {
            {
                id = 13431,
                alias = "Npc13431",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200641:1433.590,201.731,372.388,0.000,240.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310200656:1558.922,218.756,252.098,0.000,16.280,0.000]"}}
    },
    ["4012416"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400503:940.012,207.732,42.176]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400503:940.012,207.732,42.176]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4012417"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200691:1318.813,201.455,503.482,0.000,300.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012418"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200691:1318.813,201.455,503.482,0.000,300.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200639:1366.550,200.178,406.760,0.000,158.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4012419"] = {},
    ["4012420"] = {},
    ["4012421"] = {},
    ["4012422"] = {},
    ["4012423"] = {}
}
