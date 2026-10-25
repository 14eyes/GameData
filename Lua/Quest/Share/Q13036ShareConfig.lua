main_id = 13036
local tbl = {}
local n = 1303602
local v = 1303603
local n2 = 1303609
local n3 = 1303604
local n4 = 1303605
local n5 = 1303606
local n6 = 1303607
local n7 = 1303608
tbl[1] = 1303601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1303601"] = {},
    ["1303602"] = {},
    ["1303604"] = {},
    ["1303607"] = {},
    ["1303608"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7940:-379.286,241.606,2698.812,0.000,181.030,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_113:13.373,0.642,7.963,0.000,200.750,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            },
            {
                id = 4314,
                alias = "Npc4314",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q300404_N4314",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["1303601"] = {},
    ["1303602"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7757:-842.329,160.188,2262.268,0.000,302.101,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7755:-842.727,160.436,2253.112,0.000,358.337,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7756:-844.266,159.801,2272.259,0.000,288.481,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1303603"] = {},
    ["1303604"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7757:-842.329,160.188,2262.268,0.000,302.101,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7755:-842.727,160.436,2253.112,0.000,358.337,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7756:-844.266,159.801,2272.259,0.000,288.481,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7758:-835.276,161.202,2258.733,0.000,301.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7759:-835.090,160.427,2260.255,0.000,286.770,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1303605"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[1079_17:0.756,0.041,8.133,0.000,281.750,0.000]",
                scene_id = 1079,
                room_id = 1079,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[1079_17:0.756,0.041,8.133,0.000,281.750,0.000]",
                scene_id = 1079,
                room_id = 1079,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[1079_17:0.756,0.041,8.133,0.000,281.750,0.000]",
                scene_id = 1079,
                room_id = 1079,
                data_index = 3
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[1079_17:0.756,0.041,8.133,0.000,281.750,0.000]",
                scene_id = 1079,
                room_id = 1079,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[1079_18:-0.519,0.041,8.181,0.000,91.690,0.000]",
                scene_id = 1079,
                room_id = 1079,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1303605, scene_id = 1079, pos = "[1079_17:0.756,0.041,8.133,0.000,281.750,0.000]"}}
    },
    ["1303606"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7757:-842.329,160.188,2262.268,0.000,302.101,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7755:-842.727,160.436,2253.112,0.000,358.337,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7756:-844.266,159.801,2272.259,0.000,288.481,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7758:-835.276,161.202,2258.733,0.000,301.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7759:-835.090,160.427,2260.255,0.000,286.770,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1303606, scene_id = 3, pos = "[3_7597:-836.796,160.496,2257.554,0.000,109.790,0.000]"}}
    },
    ["1303607"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7762:-300.118,241.933,2864.460]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7761:-296.756,241.931,2871.000,0.000,228.130,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7940:-379.286,241.606,2698.812,0.000,181.030,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_112:14.305,0.642,6.299,0.000,277.740,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_113:13.373,0.642,7.963,0.000,200.750,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13239,
                alias = "Npc13239",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7760:-283.930,243.410,2858.178,0.000,304.500,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 4314,
                alias = "Npc4314",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q300404_N4314",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1303608"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_117:12.065,0.642,11.152,0.000,173.500,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_117:12.065,0.642,11.152,0.000,173.500,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_112:14.305,0.642,6.299,0.000,277.740,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13239,
                alias = "Npc13239",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7760:-283.930,243.410,2858.178,0.000,304.500,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13993,
                alias = "Npc13993",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_114:13.958,0.642,19.239,0.000,185.300,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13091,
                alias = "Npc13091",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_115:15.191,0.642,19.111,0.000,205.350,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["1303609"] = {}
}
