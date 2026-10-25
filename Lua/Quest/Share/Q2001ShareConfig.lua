main_id = 2001
local tbl = {}
local n = 200102
local v = 200114
local n2 = 200103
local n3 = 200104
local n4 = 200105
local n5 = 200106
local n6 = 200107
local n7 = 200108
local n8 = 200109
local n9 = 200110
local n10 = 200111
local n11 = 200112
local n12 = 200113
tbl[1] = 200101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200101"] = {},
    ["200102"] = {},
    ["200103"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200104"] = {},
    ["200105"] = {},
    ["200106"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10413,
                alias = "Npc10413",
                script = "Actor/Npc/TempNPC",
                pos = "Q200106Heima",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200107"] = {},
    ["200108"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200109"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200110"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200111"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200111Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200113"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200111Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["200101"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10419,
                alias = "Npc10419",
                script = "Actor/Npc/TempNPC",
                pos = "Q200112Target",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10420,
                alias = "Npc10420",
                script = "Actor/Npc/TempNPC",
                pos = "Q200112Target",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10421,
                alias = "Npc10421",
                script = "Actor/Npc/TempNPC",
                pos = "Q200112Target",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2000102Player"}}
    },
    ["200102"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200103"] = {},
    ["200104"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103BeidouT",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103KazuhaT",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2000102Player"}}
    },
    ["200105"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10413,
                alias = "Npc10413",
                script = "Actor/Npc/TempNPC",
                pos = "Q200106Heima",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200106"] = {},
    ["200107"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103BeidouT",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103KazuhaT",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200108"] = {},
    ["200109"] = {},
    ["200110"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200111Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200111"] = {},
    ["200112"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200111Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200113"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2002BattleTrans"}}},
    ["200114"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
