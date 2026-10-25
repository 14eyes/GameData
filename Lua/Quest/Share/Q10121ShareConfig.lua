main_id = 10121
local tbl = {}
local n = 1012102
local v = 1012103
local n2 = 1012104
local n3 = 1012105
local n4 = 1012106
local n5 = 1012107
local n6 = 1012115
local n7 = 1012116
local n8 = 1012117
local n9 = 1012109
local n10 = 1012118
local n11 = 1012110
local n12 = 1012111
local n13 = 1012112
local n14 = 1012113
local n15 = 1012114
local n16 = 1012108
local n17 = 1012119
local n18 = 1012120
tbl[1] = 1012101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1012101"] = {},
    ["1012102"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_YOULA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012103"] = {},
    ["1012104"] = {},
    ["1012105"] = {
        npcs = {
            {
                id = 10388,
                alias = "Npc10388",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10121_NPCB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012106"] = {
        npcs = {
            {
                id = 10388,
                alias = "Npc10388",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10121_NPCB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10389,
                alias = "Npc10389",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10121_NPCC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1012107"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012109"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012110"] = {},
    ["1012112"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012113"] = {},
    ["1012120"] = {}
}

quest_data = {
    ["1012101"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_YOULA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012102"] = {},
    ["1012103"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_YOULA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10387,
                alias = "Npc10387",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10121_NPCA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1012104"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_YOULA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10388,
                alias = "Npc10388",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10121_NPCB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1012105"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_YOULA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10389,
                alias = "Npc10389",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10121_NPCC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1012106"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012107"] = {},
    ["1012108"] = {},
    ["1012109"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10121_TALK6"}}},
    ["1012110"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012111"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012112"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10121_TALK7"}}},
    ["1012113"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q10121_ANBO",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1419,
                alias = "Npc1419",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10121_Sara",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1012114"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q10121_ANBO",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1012115"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10121_Return"}}
    },
    ["1012116"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10121_Return"}}
    },
    ["1012117"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10121_youla3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10121_Return"}}
    },
    ["1012118"] = {},
    ["1012119"] = {},
    ["1012120"] = {
        npcs = {
            {
                id = 1419,
                alias = "Npc1419",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10121_Sara",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
