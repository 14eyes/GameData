main_id = 6020
local tbl = {}
local n = 602001
local v = 602012
local n2 = 602013
local n3 = 602003
local n4 = 602002
local n5 = 602014
local n6 = 602015
local n7 = 602004
local n8 = 602021
local n9 = 602020
local n10 = 602019
local n11 = 602005
local n12 = 602010
local n13 = 602011
local n14 = 602006
local n15 = 602007
local n16 = 602008
local n17 = 602009
local n18 = 602016
local n19 = 602022
local n20 = 602023
local n21 = 602024
local n22 = 602017
local n23 = 602025
tbl[1] = 602018
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

local tbl2 = {
    ["602001"] = {},
    ["602002"] = {},
    ["602003"] = {},
    ["602004"] = {},
    ["602005"] = {},
    ["602006"] = {},
    ["602007"] = {},
    ["602008"] = {},
    ["602009"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_118:-4.316,1.923,5.268,0.000,179.689,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_119:-5.723,1.923,5.287,0.000,178.417,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_125:-3.463,1.923,-1.494,0.000,192.838,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_103:14.412,1.923,-1.757,0.000,271.445,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_117:-3.851,1.923,4.819,0.000,262.566,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_122:19.297,1.320,6.450,0.000,266.274,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_127:7.248,1.923,-6.041,0.000,256.670,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["602010"] = {},
    ["602011"] = {},
    ["602012"] = {},
    ["602013"] = {},
    ["602014"] = {},
    ["602015"] = {},
    ["602016"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_118:-4.316,1.923,5.268,0.000,179.689,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_119:-5.723,1.923,5.287,0.000,178.417,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_125:-3.463,1.923,-1.494,0.000,192.838,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_103:14.412,1.923,-1.757,0.000,271.445,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_122:19.297,1.320,6.450,0.000,266.274,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_127:7.248,1.923,-6.041,0.000,256.670,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["602017"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_118:-4.316,1.923,5.268,0.000,179.689,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_119:-5.723,1.923,5.287,0.000,178.417,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_112:11.234,1.923,-4.226,0.000,86.255,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_117:-3.851,1.923,4.819,0.000,262.566,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["602018"] = {}
}

local tbl3 = {}
local quest_var = {}
local n24 = 0
local n25 = 0
local n26 = 0
local n27 = 0
quest_var[1] = 1
quest_var[2] = n24
quest_var[3] = n25
quest_var[4] = n26
quest_var[5] = n27
tbl3.quest_var = quest_var
tbl2["602020"] = tbl3
tbl2["602022"] = {}
tbl2["602023"] = {}

tbl2["602024"] = {
    npcs = {
        {
            id = 1018,
            alias = "Npc1018",
            script = "Actor/Npc/TempNPC",
            pos = "[1204_118:-4.316,1.923,5.268,0.000,179.689,0.000]",
            scene_id = 1204,
            room_id = 1,
            data_index = 1
        },
        {
            id = 1320,
            alias = "Npc1320",
            script = "Actor/Npc/TempNPC",
            pos = "[1204_119:-5.723,1.923,5.287,0.000,178.417,0.000]",
            scene_id = 1204,
            room_id = 1,
            data_index = 2
        }
    }
}

tbl2["602025"] = {}
rewind_data = tbl2

quest_data = {
    ["602001"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_40:15.703,0.386,-52.634,0.000,83.182,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1204, pos = "[1204_99:-33.264,1.291,1.817,0.000,347.467,0.000]"}}
    },
    ["602002"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300020:2114.702,200.000,10872.330,0.000,19.912,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300021:2113.059,200.000,10873.570,0.000,87.035,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360300037:1843.966,218.903,10451.370,0.000,226.399,0.000]"}}
    },
    ["602003"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700155:1572.477,214.795,9439.928]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360300036:2065.763,200.121,10900.830,0.000,120.940,0.000]"}}
    },
    ["602004"] = {
        npcs = {
            {
                id = 1314,
                alias = "Npc1314",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600026:1906.040,200.276,10898.350,0.000,142.899,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["602005"] = {},
    ["602006"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600004:1903.767,200.437,10895.130,0.000,254.033,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1204, pos = "[1204_116:-33.370,2.160,-7.164,0.000,265.641,0.000]"}}
    },
    ["602007"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_94:-34.593,1.313,-5.396,0.000,153.701,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["602008"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_118:-4.316,1.923,5.268,0.000,179.689,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_119:-5.723,1.923,5.287,0.000,178.417,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_125:-3.463,1.923,-1.494,0.000,192.838,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_103:14.412,1.923,-1.757,0.000,271.445,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_117:-3.851,1.923,4.819,0.000,262.566,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_122:19.297,1.320,6.450,0.000,266.274,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_127:7.248,1.923,-6.041,0.000,256.670,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["602009"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360100204:3226.841,407.201,9944.045,0.000,152.107,0.000]"}}
    },
    ["602010"] = {},
    ["602011"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[20286_1:502.435,500.000,508.336,0.000,265.531,0.000]",
                scene_id = 20286,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360600031:1900.148,200.168,10896.170,0.000,235.327,0.000]"}}
    },
    ["602012"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_101:-33.877,1.291,7.258,0.000,184.736,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["602013"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_113:12.191,1.923,0.004,0.000,167.521,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_104:14.190,1.923,-2.886,0.000,269.159,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1314,
                alias = "Npc1314",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_112:11.234,1.923,-4.226,0.000,86.255,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_114:11.009,1.923,-1.957,0.000,103.478,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_111:12.845,1.923,-5.818,0.000,346.573,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_103:14.412,1.923,-1.757,0.000,271.445,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1312,
                alias = "Npc1312",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_149:14.859,1.923,0.045,0.000,204.339,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_102:13.847,1.923,-0.056,0.000,184.848,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 8
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_12556:1597.763,221.983,9463.740,0.000,260.380,0.000]"}}
    },
    ["602014"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600023:1763.562,223.807,10437.400,0.000,91.295,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600024:1766.027,223.827,10437.650,0.000,267.835,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360300027:2099.041,302.095,10826.500,0.000,172.730,0.000]"}}
    },
    ["602015"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300024:2088.481,323.552,10728.740,0.000,280.658,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300025:2090.104,323.959,10735.450,0.000,263.807,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360600070:1819.766,200.144,10784.550,0.000,38.954,0.000]"}}
    },
    ["602016"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_117:-3.851,1.923,4.819,0.000,262.566,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360100204:3226.841,407.201,9944.045,0.000,152.107,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1204, pos = "[1204_132:8.445,1.923,-0.788,0.000,115.255,0.000]"}}
    },
    ["602017"] = {
        npcs = {
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360100205:3223.813,407.201,9947.987,0.000,136.487,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360100229:3250.070,243.751,9456.663,0.000,341.838,0.000]"}}
    },
    ["602018"] = {
        transmit_points = {{point_id = 1, scene_id = 1205, pos = "[1205_37:14.567,0.379,-51.352,0.000,103.910,0.000]"}}
    },
    ["602019"] = {},
    ["602020"] = {},
    ["602021"] = {},
    ["602022"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_118:-4.316,1.923,5.268,0.000,179.689,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_119:-5.723,1.923,5.287,0.000,178.417,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_112:11.234,1.923,-4.226,0.000,86.255,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_117:-3.851,1.923,4.819,0.000,262.566,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["602023"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_118:-4.316,1.923,5.268,0.000,179.689,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_119:-5.723,1.923,5.287,0.000,178.417,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_112:11.234,1.923,-4.226,0.000,86.255,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_117:-3.851,1.923,4.819,0.000,262.566,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["602024"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_112:11.234,1.923,-4.226,0.000,86.255,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_117:-3.851,1.923,4.819,0.000,262.566,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360100228:3229.039,407.201,9945.087,0.000,288.782,0.000]"}}
    },
    ["602025"] = {}
}
