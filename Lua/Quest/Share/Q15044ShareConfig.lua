main_id = 15044
local tbl = {}
local n = 1504402
local v = 1504403
local n2 = 1504404
local n3 = 1504405
local n4 = 1504406
local n5 = 1504413
local n6 = 1504407
local n7 = 1504408
local n8 = 1504409
local n9 = 1504415
local n10 = 1504418
local n11 = 1504419
local n12 = 1504414
local n13 = 1504410
local n14 = 1504411
local n15 = 1504412
local n16 = 1504416
local n17 = 1504420
local n18 = 1504421
local n19 = 1504430
local n20 = 1504423
local n21 = 1504422
local n22 = 1504417
tbl[1] = 1504401
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1504401"] = {},
    ["1504402"] = {},
    ["1504403"] = {},
    ["1504404"] = {},
    ["1504405"] = {},
    ["1504406"] = {},
    ["1504407"] = {},
    ["1504408"] = {},
    ["1504409"] = {},
    ["1504410"] = {},
    ["1504411"] = {},
    ["1504412"] = {},
    ["1504417"] = {},
    ["1504418"] = {},
    ["1504422"] = {},
    ["1504423"] = {},
    ["1504430"] = {}
}

quest_data = {
    ["1504401"] = {},
    ["1504402"] = {},
    ["1504403"] = {
        npcs = {
            {
                id = 6550,
                alias = "Npc6550",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12428:383.250,210.534,13743.340,0.000,270.919,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1504404"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11204:654.820,229.863,14390.940,0.000,6.107,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11204:654.820,229.863,14390.940,0.000,6.107,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1504405"] = {},
    ["1504406"] = {
        npcs = {
            {
                id = 21847,
                alias = "Npc21847",
                script = "Actor/Npc/TempNPC",
                pos = "[20269_1:-792.501,-603.085,14588.470,0.000,87.317,0.000]",
                scene_id = 20269,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[20269_1:-792.501,-603.085,14588.470,0.000,87.317,0.000]",
                scene_id = 20269,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20269, pos = "[20269_4:-789.571,-603.239,14588.330,0.000,87.603,0.000]"}}
    },
    ["1504407"] = {},
    ["1504408"] = {},
    ["1504409"] = {
        npcs = {
            {
                id = 21847,
                alias = "Npc21847",
                script = "Actor/Npc/TempNPC",
                pos = "[20269_6:-647.613,-553.813,14599.850,0.000,18.216,0.000]",
                scene_id = 20269,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[20269_6:-647.613,-553.813,14599.850,0.000,18.216,0.000]",
                scene_id = 20269,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1504410"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_12547:534.546,228.940,14480.370,0.000,73.720,0.000]"}}
    },
    ["1504411"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11206:535.726,228.940,14483.870,0.000,152.347,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11206:535.726,228.940,14483.870,0.000,152.347,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1504412"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21847,
                alias = "Npc21847",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21845,
                alias = "Npc21845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21846,
                alias = "Npc21846",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21856,
                alias = "Npc21856",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12401:1462.929,206.317,15141.960,0.000,59.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1504413"] = {},
    ["1504414"] = {},
    ["1504415"] = {},
    ["1504416"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21847,
                alias = "Npc21847",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21845,
                alias = "Npc21845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21846,
                alias = "Npc21846",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21856,
                alias = "Npc21856",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12401:1462.929,206.317,15141.960,0.000,59.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1504417"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21847,
                alias = "Npc21847",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11213:1460.259,206.273,15147.160,0.000,234.655,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21845,
                alias = "Npc21845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 6570,
                alias = "Npc6570",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11714:1465.746,206.273,15146.250]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 6572,
                alias = "Npc6572",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11714:1465.746,206.273,15146.250]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 6600,
                alias = "Npc6600",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11714:1465.746,206.273,15146.250]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 6603,
                alias = "Npc6603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11714:1465.746,206.273,15146.250]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 6601,
                alias = "Npc6601",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11714:1465.746,206.273,15146.250]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 6604,
                alias = "Npc6604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11714:1465.746,206.273,15146.250]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 21856,
                alias = "Npc21856",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12401:1462.929,206.317,15141.960,0.000,59.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_11213:1460.259,206.273,15147.160,0.000,234.655,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1504418"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[20269_7:-652.271,-545.582,14682.490]",
                scene_id = 20269,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[20269_7:-652.271,-545.582,14682.490]",
                scene_id = 20269,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_12547:534.546,228.940,14480.370,0.000,73.720,0.000]"}}
    },
    ["1504419"] = {},
    ["1504420"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21847,
                alias = "Npc21847",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21845,
                alias = "Npc21845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21846,
                alias = "Npc21846",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21856,
                alias = "Npc21856",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12401:1462.929,206.317,15141.960,0.000,59.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1504421"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21847,
                alias = "Npc21847",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21845,
                alias = "Npc21845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21846,
                alias = "Npc21846",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21856,
                alias = "Npc21856",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12401:1462.929,206.317,15141.960,0.000,59.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1504422"] = {},
    ["1504423"] = {},
    ["1504430"] = {
        npcs = {
            {
                id = 21844,
                alias = "Npc21844",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21847,
                alias = "Npc21847",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21845,
                alias = "Npc21845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21846,
                alias = "Npc21846",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 21856,
                alias = "Npc21856",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12401:1462.929,206.317,15141.960,0.000,59.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12400:1462.356,206.273,15142.800,0.000,82.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_12405:1459.883,206.343,15140.600,0.000,253.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12604:1465.199,206.273,15145.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12399:1462.785,206.273,15144.390,0.000,163.839,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    }
}
