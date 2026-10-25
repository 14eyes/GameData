main_id = 3020
local tbl = {}
local n = 302001
local v = 302002
local n2 = 302003
local n3 = 302004
local n4 = 302005
local n5 = 302020
local n6 = 302023
local n7 = 302006
local n8 = 302007
local n9 = 302016
local n10 = 302015
local n11 = 302008
local n12 = 302009
local n13 = 302010
local n14 = 302011
local n15 = 302017
local n16 = 302013
local n17 = 302012
local n18 = 302021
local n19 = 302022
local n20 = 302019
local n21 = 302014
tbl[1] = 302018
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["302001"] = {},
    ["302002"] = {},
    ["302004"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302004_T302004_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302007"] = {},
    ["302008"] = {},
    ["302010"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302010_T302110_N1053",
                scene_id = 1077,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["302011"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q302010_T302110_N1059",
                scene_id = 1077,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["302013"] = {},
    ["302018"] = {},
    ["302019"] = {}
}

quest_data = {
    ["302001"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302018_N1053_guide_Q302017_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12867,
                alias = "Npc12867",
                script = "Actor/Npc/TempNPC",
                pos = "Q302001_N12867_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4402,
                alias = "Npc4402",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q301904_N12703",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["302002"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302018_N1053_guide_Q302017_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302003"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302004_T302004_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302004"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q302006_N1053"}}},
    ["302005"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302004_T302004_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302006"] = {},
    ["302007"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302006_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302008"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302006_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12704,
                alias = "Npc12704",
                script = "Actor/Npc/TempNPC",
                pos = "Q302009_T302009_N12704",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["302009"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302006_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12704,
                alias = "Npc12704",
                script = "Actor/Npc/TempNPC",
                pos = "Q302009_T302009_N12704",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["302010"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302010_T302110_N1058",
                scene_id = 1077,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q302010_T302110_N1059",
                scene_id = 1077,
                room_id = 1,
                data_index = 2
            },
            {
                id = 4317,
                alias = "Npc4317",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302010_T302110_N4317",
                scene_id = 1077,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["302011"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "T302011_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4317,
                alias = "Npc4317",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302010_T302110_N4317",
                scene_id = 1077,
                room_id = 1,
                data_index = 2
            },
            {
                id = 4319,
                alias = "Npc4319",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q301902_T301902_N1059",
                scene_id = 1077,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["302012"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302012_T302012_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302013_Route4",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["302013"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302013_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302014"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302014_T302014_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q301918_Transmit"}}
    },
    ["302015"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302006_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302016"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302006_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302017"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302013_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302018"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302018_N1053_guide_Q302017_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q301921_T301921_N1058",
                scene_id = 1077,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q301921_T301921_N1052",
                scene_id = 1077,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q301921_T301921_N1059",
                scene_id = 1077,
                room_id = 1,
                data_index = 4
            },
            {
                id = 4317,
                alias = "Npc4317",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q301902_T301902_N4317",
                scene_id = 1077,
                room_id = 1,
                data_index = 5
            },
            {
                id = 12706,
                alias = "Npc12706",
                script = "Actor/Npc/TempNPC",
                pos = "T301920_N12706",
                scene_id = 1077,
                room_id = 1,
                data_index = 6
            },
            {
                id = 12707,
                alias = "Npc12707",
                script = "Actor/Npc/TempNPC",
                pos = "T301920_N12707",
                scene_id = 1077,
                room_id = 1,
                data_index = 7
            },
            {
                id = 12708,
                alias = "Npc12708",
                script = "Actor/Npc/TempNPC",
                pos = "T301920_N12708",
                scene_id = 1077,
                room_id = 1,
                data_index = 8
            },
            {
                id = 4319,
                alias = "Npc4319",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q301902_T301902_N1059",
                scene_id = 1077,
                room_id = 1,
                data_index = 9
            }
        }
    },
    ["302019"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302013_Route4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q301921_T301921_N1052",
                scene_id = 1077,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["302020"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302004_T302004_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302021"] = {},
    ["302022"] = {},
    ["302023"] = {}
}
