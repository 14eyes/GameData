main_id = 4001
local tbl = {}
local n = 400101
local v = 400102
local n2 = 400112
local n3 = 400103
local n4 = 400104
local n5 = 400115
local n6 = 400116
local n7 = 400113
local n8 = 400114
local n9 = 400106
local n10 = 400107
local n11 = 400108
local n12 = 400109
local n13 = 400110
local n14 = 400111
tbl[1] = 400105
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["400101"] = {},
    ["400102"] = {},
    ["400103"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_5:-51.956,0.352,-15.368,0.000,90.000,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["400104"] = {},
    ["400105"] = {},
    ["400106"] = {},
    ["400107"] = {},
    ["400108"] = {},
    ["400109"] = {
        npcs = {
            {
                id = 13321,
                alias = "Npc13321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300036:2782.641,380.781,4158.385,0.000,205.720,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13399,
                alias = "Npc13399",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300079:2782.339,380.785,4158.933,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["400110"] = {
        npcs = {
            {
                id = 13321,
                alias = "Npc13321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300036:2782.641,380.781,4158.385,0.000,205.720,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13323,
                alias = "Npc13323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300022:2762.478,385.073,4228.072,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13399,
                alias = "Npc13399",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300079:2782.339,380.785,4158.933,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["400111"] = {
        npcs = {
            {
                id = 13321,
                alias = "Npc13321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300036:2782.641,380.781,4158.385,0.000,205.720,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13323,
                alias = "Npc13323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300022:2762.478,385.073,4228.072,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13322,
                alias = "Npc13322",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300023:3603.588,506.535,4606.801,0.000,27.350,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13399,
                alias = "Npc13399",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300079:2782.339,380.785,4158.933,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["400112"] = {},
    ["400116"] = {}
}

quest_data = {
    ["400101"] = {},
    ["400102"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_2:-1.374,0.039,-12.193,0.000,183.823,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 5087,
                alias = "Npc5087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1083_1:0.037,1.264,-27.019]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["400103"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_6:-47.655,0.352,-15.895,0.000,275.739,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["400104"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100026:3598.219,506.533,4608.778,0.000,220.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_340300008:2737.306,440.945,4305.571,0.000,191.615,0.000]"},
            {point_id = 2, scene_id = 3, pos = "[3_340100027:3596.633,506.533,4606.595,0.000,40.000,0.000]"}
        }
    },
    ["400105"] = {},
    ["400106"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300012:2845.310,398.004,4164.147,0.000,286.236,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13311,
                alias = "Npc13311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300010:2845.893,398.003,4163.661,0.000,108.678,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["400107"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300017:2781.333,380.730,4155.753,0.000,18.698,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13311,
                alias = "Npc13311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300015:2780.331,380.669,4157.210,0.000,68.901,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13321,
                alias = "Npc13321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4333:2782.641,380.781,4158.385,0.000,205.720,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13399,
                alias = "Npc13399",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300078:2782.339,380.785,4158.933,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["400108"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300024:2764.068,385.149,4227.815,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13321,
                alias = "Npc13321",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300036:2782.641,380.781,4158.385,0.000,205.720,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13323,
                alias = "Npc13323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300022:2762.478,385.073,4228.072,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13399,
                alias = "Npc13399",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300079:2782.339,380.785,4158.933,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["400109"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300027:3602.217,506.535,4605.915,0.000,46.472,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13323,
                alias = "Npc13323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300022:2762.478,385.073,4228.072,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13322,
                alias = "Npc13322",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300023:3603.588,506.535,4606.801,0.000,27.350,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["400110"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100030:3543.821,427.029,4472.337,0.000,241.469,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13322,
                alias = "Npc13322",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300023:3603.588,506.535,4606.801,0.000,27.350,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5027,
                alias = "Npc5027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100029:3543.062,427.029,4471.026]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13315,
                alias = "Npc13315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100129:3543.663,427.029,4471.307]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["400111"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100037:3518.651,441.525,4455.451,0.000,213.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13311,
                alias = "Npc13311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100131:3521.442,441.526,4454.435,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13312,
                alias = "Npc13312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100132:3521.387,441.525,4455.867,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13315,
                alias = "Npc13315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100129:3543.663,427.029,4471.307]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["400112"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_5:-51.956,0.352,-15.368,0.000,90.000,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["400113"] = {},
    ["400114"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300095:2711.430,399.248,4228.993,0.000,310.573,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["400115"] = {},
    ["400116"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300095:2711.430,399.248,4228.993,0.000,310.573,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
