main_id = 3021
local tbl = {}
local n = 302112
local v = 302101
local n2 = 302103
local n3 = 302115
local n4 = 302111
local n5 = 302104
local n6 = 302113
local n7 = 302116
local n8 = 302105
local n9 = 302106
local n10 = 302107
local n11 = 302108
local n12 = 302109
local n13 = 302110
local n14 = 302102
tbl[1] = 302114
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
    ["302101"] = {},
    ["302104"] = {},
    ["302105"] = {},
    ["302107"] = {},
    ["302108"] = {},
    ["302110"] = {},
    ["302111"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302112_N1052_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302113"] = {},
    ["302114"] = {},
    ["302116"] = {}
}

quest_data = {
    ["302101"] = {
        npcs = {
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302103_N12709_Q302111",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302112_N1052_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12796,
                alias = "Npc12796",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N12796",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12865,
                alias = "Npc12865",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N12865",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12881,
                alias = "Npc12881",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N12881",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12864,
                alias = "Npc12864",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N12864",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302103_N12709_Q302111",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["302102"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302112_N1052_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["302103"] = {
        npcs = {
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302103_N12709_Q302111",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302112_N1052_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12796,
                alias = "Npc12796",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N12796",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12865,
                alias = "Npc12865",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N12865",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12881,
                alias = "Npc12881",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N12881",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12864,
                alias = "Npc12864",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N12864",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302103_N12709_Q302111",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["302104"] = {
        npcs = {
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302103_N12709_Q302111",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302112_N1052_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12796,
                alias = "Npc12796",
                script = "Actor/Npc/TempNPC",
                pos = "Q302104_N12796",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12865,
                alias = "Npc12865",
                script = "Actor/Npc/TempNPC",
                pos = "Q302104_N12865",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13002,
                alias = "Npc13002",
                script = "Actor/Npc/TempNPC",
                pos = "Q302104_N13002",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12701,
                alias = "Npc12701",
                script = "Actor/Npc/TempNPC",
                pos = "Q302104_N12701",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12881,
                alias = "Npc12881",
                script = "Actor/Npc/TempNPC",
                pos = "Q302104_N12881",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302103_N12709_Q302111",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 4400,
                alias = "Npc4400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302104_N12701",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            }
        }
    },
    ["302105"] = {},
    ["302106"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302106_T302106_N1053",
                scene_id = 20151,
                room_id = 20151,
                data_index = 1
            }
        }
    },
    ["302107"] = {},
    ["302108"] = {
        npcs = {
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302109_N12709_T302109",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302109_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "T302109_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302109_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302109_N12709_T302109",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["302109"] = {
        npcs = {
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302109_N12709_T302109",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302109_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "T302109_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302109_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302109_N12709_T302109",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["302110"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302110_T302110_N1053",
                scene_id = 1077,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302110_T302110_N1052",
                scene_id = 1077,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q302110_T302110_N1059",
                scene_id = 1077,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302110_T302110_N1058",
                scene_id = 1077,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["302111"] = {
        npcs = {
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "T302111_N12709",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T302111_N12709",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["302112"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302101_Q302112_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302112_N1052_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "T302101_Q302112_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302101_Q302112_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12701,
                alias = "Npc12701",
                script = "Actor/Npc/TempNPC",
                pos = "T302101_Q302112_N12701",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 4403,
                alias = "Npc4403",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T302101_Q302112_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 4400,
                alias = "Npc4400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T302101_Q302112_N12701",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q301918_Transmit"}}
    },
    ["302113"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302113_N1053",
                scene_id = 20151,
                room_id = 20151,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302106_T302106_N1052",
                scene_id = 20151,
                room_id = 20151,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302106_T302106_N1058",
                scene_id = 20151,
                room_id = 20151,
                data_index = 3
            }
        }
    },
    ["302114"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302101_Q302112_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302112_N1052_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "T302101_Q302112_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302101_Q302112_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12701,
                alias = "Npc12701",
                script = "Actor/Npc/TempNPC",
                pos = "T302101_Q302112_N12701",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 4403,
                alias = "Npc4403",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T302101_Q302112_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 4400,
                alias = "Npc4400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T302101_Q302112_N12701",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["302115"] = {
        npcs = {
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302103_N12709_Q302111",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302112_N1052_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302103_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302103_N12709_Q302111",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "T302111_N10000005"}}
    },
    ["302116"] = {}
}
