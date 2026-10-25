main_id = 40078
local tbl = {}
local n = 4007802
local v = 4007803
local n2 = 4007814
local n3 = 4007804
local n4 = 4007805
local n5 = 4007806
local n6 = 4007807
local n7 = 4007808
local n8 = 4007809
local n9 = 4007810
local n10 = 4007811
local n11 = 4007815
local n12 = 4007812
local n13 = 4007813
tbl[1] = 4007801
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133002041"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133004048"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4007801"] = {},
    ["4007802"] = {},
    ["4007803"] = {},
    ["4007804"] = {},
    ["4007805"] = {},
    ["4007806"] = {
        npcs = {
            {
                id = 1539,
                alias = "Npc1539",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007805_N1539",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007807"] = {
        npcs = {
            {
                id = 1539,
                alias = "Npc1539",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007805_N1539",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007808"] = {
        npcs = {
            {
                id = 1539,
                alias = "Npc1539",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007805_N1539",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007809"] = {},
    ["4007810"] = {},
    ["4007811"] = {},
    ["4007812"] = {},
    ["4007813"] = {},
    ["4007814"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4007804_N1004",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4007803_N1006",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4007803_N1007",
                scene_id = 1004,
                room_id = 100402,
                data_index = 3
            },
            {
                id = 30274,
                alias = "Npc30274",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007803_N30234",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            },
            {
                id = 30233,
                alias = "Npc30233",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007803_N30233",
                scene_id = 1004,
                room_id = 4,
                data_index = 5
            }
        }
    },
    ["4007815"] = {}
}

quest_data = {
    ["4007801"] = {
        npcs = {
            {
                id = 1512,
                alias = "NPC1512",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007801_N1512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007802"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4007804_N1004",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4007802_N1006",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4007802_N1007",
                scene_id = 1004,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4007803"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4007804_N1004",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4007803_N1006",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4007803_N1007",
                scene_id = 1004,
                room_id = 100402,
                data_index = 3
            },
            {
                id = 30274,
                alias = "Npc30274",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007803_N30234",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007804_N1060",
                scene_id = 1004,
                room_id = 1,
                data_index = 5
            },
            {
                id = 30233,
                alias = "Npc30233",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007803_N30233",
                scene_id = 1004,
                room_id = 1,
                data_index = 6
            },
            {
                id = 30234,
                alias = "Npc30234",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007803_N30234",
                scene_id = 1004,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["4007804"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007809_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12917,
                alias = "Npc12917",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007804_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007805"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007809_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1539,
                alias = "Npc1539",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007805_N1539",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007806"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007809_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007807"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007809_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007808"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007809_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007809"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007809_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007810"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4007810_N1007",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            }
        }
    },
    ["4007811"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4007811_N1007",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            }
        }
    },
    ["4007812"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "T4007812_N1006",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007812_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4007812_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30274,
                alias = "Npc30274",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4007812_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30237,
                alias = "Npc30237",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4007812_N30237",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30173,
                alias = "Npc30173",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4007812_N30173",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30240,
                alias = "Npc30240",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4007812_N30240",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30241,
                alias = "Npc30241",
                script = "Actor/Npc/TempNPC",
                pos = "T4007812_N30241",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30250,
                alias = "Npc30250",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4007812_N30250",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 30234,
                alias = "Npc30234",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4007812_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4007813"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007812_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4007812_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007814"] = {
        npcs = {
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007804_N1060",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 30234,
                alias = "Npc30234",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007803_N30234",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4007815"] = {}
}
