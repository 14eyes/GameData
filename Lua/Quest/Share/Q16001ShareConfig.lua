main_id = 16001
local tbl = {}
local n = 1600102
local v = 1600103
local n2 = 1600104
local n3 = 1600110
local n4 = 1600105
local n5 = 1600111
local n6 = 1600106
local n7 = 1600107
local n8 = 1600108
local n9 = 1600112
local n10 = 1600109
tbl[1] = 1600101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1600101"] = {},
    ["1600102"] = {},
    ["1600103"] = {},
    ["1600104"] = {},
    ["1600105"] = {},
    ["1600106"] = {},
    ["1600107"] = {},
    ["1600108"] = {},
    ["1600109"] = {},
    ["1600110"] = {},
    ["1600112"] = {}
}

quest_data = {
    ["1600101"] = {},
    ["1600102"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14073:2256.417,230.083,-808.091]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600103"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13952:2368.205,227.884,-843.246,0.000,112.586,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600104"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13953:1729.820,309.246,-1606.874]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14822:2365.370,223.990,-842.054,0.000,291.857,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1600105"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_11:871.872,64.096,869.396,0.000,149.395,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15876,
                alias = "Npc15876",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_18:876.636,64.819,860.110,0.000,26.817,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15877,
                alias = "Npc15877",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_19:877.502,64.623,865.704,0.000,129.511,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15878,
                alias = "Npc15878",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_20:879.687,64.709,866.006,0.000,204.385,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15879,
                alias = "Npc15879",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_21:875.703,64.623,862.287,0.000,113.442,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 5
            },
            {
                id = 15885,
                alias = "Npc15885",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_17:878.533,64.098,859.922,0.000,346.953,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1600106"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_12:868.996,64.098,860.629]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15876,
                alias = "Npc15876",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_18:876.636,64.819,860.110,0.000,26.817,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15877,
                alias = "Npc15877",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_19:877.502,64.623,865.704,0.000,129.511,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15878,
                alias = "Npc15878",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_20:879.687,64.709,866.006,0.000,204.385,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15879,
                alias = "Npc15879",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_21:875.703,64.623,862.287,0.000,113.442,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 5
            },
            {
                id = 15885,
                alias = "Npc15885",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_17:878.533,64.098,859.922,0.000,346.953,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 6
            },
            {
                id = 15941,
                alias = "Npc15941",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_17:878.533,64.098,859.922,0.000,346.953,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1600107"] = {
        npcs = {
            {
                id = 15893,
                alias = "Npc15893",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_13:867.465,65.114,860.685]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15894,
                alias = "Npc15894",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_14:867.259,65.096,860.980]",
                scene_id = 20297,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15895,
                alias = "Npc15895",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_15:867.045,65.161,861.348]",
                scene_id = 20297,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15896,
                alias = "Npc15896",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_16:867.466,64.098,857.584]",
                scene_id = 20297,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15876,
                alias = "Npc15876",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_18:876.636,64.819,860.110,0.000,26.817,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 5
            },
            {
                id = 15877,
                alias = "Npc15877",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_19:877.502,64.623,865.704,0.000,129.511,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 6
            },
            {
                id = 15878,
                alias = "Npc15878",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_20:879.687,64.709,866.006,0.000,204.385,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 7
            },
            {
                id = 15879,
                alias = "Npc15879",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_21:875.703,64.623,862.287,0.000,113.442,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 8
            },
            {
                id = 15885,
                alias = "Npc15885",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_17:878.533,64.098,859.922,0.000,346.953,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1600108"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_22:877.928,64.901,863.320,0.000,92.166,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15876,
                alias = "Npc15876",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_18:876.636,64.819,860.110,0.000,26.817,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15877,
                alias = "Npc15877",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_19:877.502,64.623,865.704,0.000,129.511,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15878,
                alias = "Npc15878",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_20:879.687,64.709,866.006,0.000,204.385,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15879,
                alias = "Npc15879",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_21:875.703,64.623,862.287,0.000,113.442,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 5
            },
            {
                id = 15885,
                alias = "Npc15885",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_17:878.533,64.098,859.922,0.000,346.953,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1600109"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13953:1729.820,309.246,-1606.874]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13953:1729.820,309.246,-1606.874]"}}
    },
    ["1600110"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 2205, pos = "[20297_11:871.872,64.096,869.396,0.000,149.395,0.000]"}}
    },
    ["1600111"] = {},
    ["1600112"] = {}
}
