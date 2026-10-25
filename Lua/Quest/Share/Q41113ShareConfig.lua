main_id = 41113
local tbl = {}
local n = 4111318
local v = 4111302
local n2 = 4111303
local n3 = 4111304
local n4 = 4111305
local n5 = 4111306
local n6 = 4111310
local n7 = 4111312
local n8 = 4111313
local n9 = 4111314
local n10 = 4111320
local n11 = 4111311
local n12 = 4111315
local n13 = 4111307
local n14 = 4111316
local n15 = 4111308
local n16 = 4111319
local n17 = 4111317
local n18 = 4111309
tbl[1] = 4111301
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
    ["4111301"] = {},
    ["4111302"] = {},
    ["4111303"] = {},
    ["4111304"] = {},
    ["4111305"] = {},
    ["4111306"] = {},
    ["4111307"] = {},
    ["4111308"] = {
        avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q4111308Player"},
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111308Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111309"] = {},
    ["4111310"] = {},
    ["4111311"] = {
        npcs = {
            {
                id = 30026,
                alias = "Npc30026",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4111314GaoSix",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111312"] = {},
    ["4111313"] = {},
    ["4111314"] = {},
    ["4111315"] = {
        npcs = {
            {
                id = 30026,
                alias = "Npc30026",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4111311GaoSix",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111316"] = {},
    ["4111317"] = {},
    ["4111318"] = {},
    ["4111320"] = {
        npcs = {
            {
                id = 30026,
                alias = "Npc30026",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4111314GaoSix",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4111301"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111302"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111303"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70300118,
                alias = "Q4111303Target",
                pos = "Q4111303Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111304"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70300118,
                alias = "Q4111304Target",
                pos = "Q4111304Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111305"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111306"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111307"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111307Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111308"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111308Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {},
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4111308Player"}}
    },
    ["4111309"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111309Fischl",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111310"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111311"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111312"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111313"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111314"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30026,
                alias = "Npc30026",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4111314GaoSix",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111315"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30007,
                alias = "Npc30007",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111302NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30008,
                alias = "Npc30008",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111303NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30009,
                alias = "Npc30009",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111304NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4111316"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111308Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        gadgets = {
            {
                id = 70710041,
                alias = "Q4111303Meteorite1",
                pos = "Q4111303Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710041,
                alias = "Q4111303Meteorite2",
                pos = "Q4111303Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite1",
                pos = "Q4111304Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710042,
                alias = "Q4111304Meteorite2",
                pos = "Q4111304Target3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4111308Player"}}
    },
    ["4111317"] = {},
    ["4111318"] = {},
    ["4111319"] = {},
    ["4111320"] = {}
}
