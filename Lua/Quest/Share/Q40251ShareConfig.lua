main_id = 40251
local tbl = {}
local n = 4025102
local v = 4025117
local n2 = 4025103
local n3 = 4025127
local n4 = 4025126
local n5 = 4025104
local n6 = 4025111
local n7 = 4025130
local n8 = 4025128
local n9 = 4025112
local n10 = 4025123
local n11 = 4025113
local n12 = 4025114
local n13 = 4025131
local n14 = 4025129
local n15 = 4025115
local n16 = 4025133
local n17 = 4025125
local n18 = 4025124
local n19 = 4025116
local n20 = 4025105
local n21 = 4025132
local n22 = 4025134
local n23 = 4025106
local n24 = 4025107
local n25 = 4025135
local n26 = 4025118
local n27 = 4025119
local n28 = 4025120
local n29 = 4025121
local n30 = 4025122
local n31 = 4025108
local n32 = 4025110
local n33 = 4025109
tbl[1] = 4025101
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
local str2 = ""
tbl3[1] = "133101550,133101552"
tbl3[2] = str
tbl3[3] = str2
local tbl4 = {}
local str3 = ""
local str4 = ""
tbl4[1] = "133104853"
tbl4[2] = str3
tbl4[3] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10560"}, {"10561"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4025101"] = {},
    ["4025102"] = {},
    ["4025103"] = {
        npcs = {
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4025104"] = {},
    ["4025105"] = {},
    ["4025106"] = {},
    ["4025107"] = {},
    ["4025108"] = {},
    ["4025109"] = {},
    ["4025110"] = {},
    ["4025111"] = {},
    ["4025112"] = {},
    ["4025113"] = {},
    ["4025114"] = {},
    ["4025115"] = {},
    ["4025116"] = {},
    ["4025117"] = {},
    ["4025122"] = {},
    ["4025123"] = {},
    ["4025124"] = {},
    ["4025125"] = {},
    ["4025126"] = {},
    ["4025127"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4025128"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4025129"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4025130"] = {},
    ["4025131"] = {},
    ["4025132"] = {},
    ["4025133"] = {}
}

quest_data = {
    ["4025101"] = {},
    ["4025102"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500287:2414.372,343.151,2383.252,0.568,331.601,2.245]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4025103"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310100265:1987.819,280.630,1482.436,0.000,333.199,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1347, pos = "[20379_1:1984.381,280.914,1482.976]"}}
    },
    ["4025104"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025105"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025106"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100301:1959.635,292.415,1469.764,0.000,49.817,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100302:1961.765,292.415,1465.862]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100303:1961.144,292.415,1465.687]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100302:1961.765,292.415,1465.862]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025107"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100311:1969.317,291.188,1461.574,0.000,299.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100310:1967.884,291.124,1463.001,0.000,141.591,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100313:1968.585,291.144,1461.020]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100320:1144.768,349.346,1570.754,0.000,283.570,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100318:1145.904,349.100,1572.783,0.000,267.336,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100319:1142.579,349.242,1572.402,0.000,178.159,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 10284,
                alias = "Npc10284",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100317:1140.479,349.203,1570.101,0.000,42.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 20028,
                alias = "Npc20028",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100316:1142.672,349.192,1568.439,0.000,18.513,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310100334:1155.557,349.100,1561.612,0.000,308.179,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1348, pos = "[20380_1:-438.025,207.605,288.773]"}}
    },
    ["4025108"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500322:2427.305,341.819,2321.476,0.000,193.078,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500323:2426.027,341.803,2321.151,0.000,158.604,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500324:2427.589,341.794,2319.957,0.000,333.984,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500325:2426.359,341.800,2319.458]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100333:1140.584,349.187,1571.990,0.000,192.090,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100329:1146.078,349.315,1570.479]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100330:1139.396,349.118,1571.759,0.000,163.136,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100328:1146.021,349.348,1571.899,0.000,170.376,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10284,
                alias = "Npc10284",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100331:1141.322,349.206,1570.010,0.000,322.092,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 20028,
                alias = "Npc20028",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100332:1140.090,349.207,1568.630]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500324:2427.589,341.794,2319.957,0.000,333.984,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100333:1140.584,349.187,1571.990,0.000,192.090,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4025109"] = {},
    ["4025110"] = {
        npcs = {
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100292:1961.005,292.415,1470.927]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4025111"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025112"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_15:2020.601,281.077,1585.766,0.000,303.518,0.000]",
                scene_id = 20379,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4025113"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025114"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025115"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_16:1909.049,280.479,1615.325,0.000,206.122,0.000]",
                scene_id = 20379,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4025116"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025117"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100271:1965.419,290.114,1453.613,0.000,311.473,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100272:1962.996,290.080,1455.496,0.000,121.053,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100273:1963.053,289.883,1453.708,0.000,85.146,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100272:1962.996,290.080,1455.496,0.000,121.053,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025118"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100311:1969.317,291.188,1461.574,0.000,299.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100310:1967.884,291.124,1463.001,0.000,141.591,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100313:1968.585,291.144,1461.020]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100320:1144.768,349.346,1570.754,0.000,283.570,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[20380_4:-438.656,207.605,290.898,0.000,154.109,0.000]",
                scene_id = 20380,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10284,
                alias = "Npc10284",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100317:1140.479,349.203,1570.101,0.000,42.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 20028,
                alias = "Npc20028",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100316:1142.672,349.192,1568.439,0.000,18.513,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20380, pos = "[20380_7:-260.339,266.867,-987.162]"}}
    },
    ["4025119"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100311:1969.317,291.188,1461.574,0.000,299.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100310:1967.884,291.124,1463.001,0.000,141.591,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100313:1968.585,291.144,1461.020]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100320:1144.768,349.346,1570.754,0.000,283.570,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[20380_8:-258.031,266.797,-987.046]",
                scene_id = 20380,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10284,
                alias = "Npc10284",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100317:1140.479,349.203,1570.101,0.000,42.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 20028,
                alias = "Npc20028",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100316:1142.672,349.192,1568.439,0.000,18.513,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20380, pos = "[20380_10:592.343,197.950,234.317]"}}
    },
    ["4025120"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100311:1969.317,291.188,1461.574,0.000,299.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100310:1967.884,291.124,1463.001,0.000,141.591,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100313:1968.585,291.144,1461.020]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100320:1144.768,349.346,1570.754,0.000,283.570,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[20380_12:593.216,197.950,234.214]",
                scene_id = 20380,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10284,
                alias = "Npc10284",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100317:1140.479,349.203,1570.101,0.000,42.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 20028,
                alias = "Npc20028",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100316:1142.672,349.192,1568.439,0.000,18.513,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20380, pos = "[20380_14:2249.383,353.474,1853.190]"}}
    },
    ["4025121"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100311:1969.317,291.188,1461.574,0.000,299.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100310:1967.884,291.124,1463.001,0.000,141.591,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100313:1968.585,291.144,1461.020]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100320:1144.768,349.346,1570.754,0.000,283.570,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[20380_16:2250.269,353.425,1853.203]",
                scene_id = 20380,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10284,
                alias = "Npc10284",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100317:1140.479,349.203,1570.101,0.000,42.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 20028,
                alias = "Npc20028",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100316:1142.672,349.192,1568.439,0.000,18.513,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310100280:1145.806,349.230,1569.064]"}}
    },
    ["4025122"] = {
        npcs = {
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100285:1143.093,349.238,1570.855,0.000,37.835,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100281:1145.356,349.297,1570.464,0.000,344.529,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100286:1142.240,349.198,1571.310,0.000,67.819,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100282:1144.796,349.334,1572.835,0.000,222.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10284,
                alias = "Npc10284",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100323:1141.764,349.181,1569.598,0.000,45.283,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20028,
                alias = "Npc20028",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100287:1140.845,349.204,1570.550,0.000,64.183,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100285:1143.093,349.238,1570.855,0.000,37.835,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4025123"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025124"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025125"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025126"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_4:1986.337,280.757,1484.336]",
                scene_id = 20379,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4025127"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1347, pos = "[20379_1:1984.381,280.914,1482.976]"}},
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4025128"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1347, pos = "[20379_2:2016.619,280.980,1586.493,0.000,327.489,0.000]"}},
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4025129"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1347, pos = "[20379_3:1909.644,280.132,1612.532]"}},
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4025130"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_9:2013.588,284.151,1567.723]",
                scene_id = 20379,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 17259,
                alias = "Npc17259",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_9:2013.588,284.151,1567.723]",
                scene_id = 20379,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4025131"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_13:1919.165,280.432,1623.173]",
                scene_id = 20379,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 17259,
                alias = "Npc17259",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_13:1919.165,280.432,1623.173]",
                scene_id = 20379,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4025132"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_18:1872.617,280.277,1486.840]",
                scene_id = 20379,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 17259,
                alias = "Npc17259",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_18:1872.617,280.277,1486.840]",
                scene_id = 20379,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310100302:1961.765,292.415,1465.862]"}}
    },
    ["4025133"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100276:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100277:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100278:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025134"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_30:1968.429,291.167,1463.338,0.000,214.375,0.000]",
                scene_id = 20379,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_29:1960.891,292.415,1470.807]",
                scene_id = 20379,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_31:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 20379,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_32:1958.570,290.447,1457.350,0.000,92.843,0.000]",
                scene_id = 20379,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[20379_31:1959.823,290.321,1457.302,0.000,271.780,0.000]",
                scene_id = 20379,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4025135"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100311:1969.317,291.188,1461.574,0.000,299.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100310:1967.884,291.124,1463.001,0.000,141.591,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100274:1961.423,292.415,1471.193]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100313:1968.585,291.144,1461.020]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100320:1144.768,349.346,1570.754,0.000,283.570,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100319:1142.579,349.242,1572.402,0.000,178.159,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10284,
                alias = "Npc10284",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100317:1140.479,349.203,1570.101,0.000,42.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 20028,
                alias = "Npc20028",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100316:1142.672,349.192,1568.439,0.000,18.513,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100312:1967.771,291.025,1461.713,0.000,56.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100315:1143.138,349.281,1573.163,0.000,164.396,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1348, pos = "[20380_1:-438.025,207.605,288.773]"}}
    }
}
