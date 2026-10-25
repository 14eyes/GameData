main_id = 8005
local tbl = {}
local n = 800502
local v = 800503
local n2 = 800504
local n3 = 800520
local n4 = 800505
local n5 = 800506
local n6 = 800508
local n7 = 800509
local n8 = 800510
local n9 = 800511
local n10 = 800512
local n11 = 800513
local n12 = 800514
local n13 = 800516
local n14 = 800518
local n15 = 800515
local n16 = 800517
local n17 = 800519
tbl[1] = 800501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "166001123"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "166001124"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "166001248"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "166001125"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["800501"] = {},
    ["800503"] = {},
    ["800504"] = {},
    ["800505"] = {},
    ["800508"] = {},
    ["800510"] = {},
    ["800511"] = {},
    ["800512"] = {},
    ["800513"] = {
        npcs = {
            {
                id = 12454,
                alias = "Npc12454",
                script = "Actor/Npc/TempNPC",
                pos = "T800520_N12454",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12455,
                alias = "Npc12455",
                script = "Actor/Npc/TempNPC",
                pos = "T800521_N12455",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12456,
                alias = "Npc12456",
                script = "Actor/Npc/TempNPC",
                pos = "T800522_N12456",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12457,
                alias = "Npc12457",
                script = "Actor/Npc/TempNPC",
                pos = "T800523_N12457",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["800514"] = {
        npcs = {
            {
                id = 12454,
                alias = "Npc12454",
                script = "Actor/Npc/TempNPC",
                pos = "T800520_N12454",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12455,
                alias = "Npc12455",
                script = "Actor/Npc/TempNPC",
                pos = "T800521_N12455",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12456,
                alias = "Npc12456",
                script = "Actor/Npc/TempNPC",
                pos = "T800522_N12456",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12457,
                alias = "Npc12457",
                script = "Actor/Npc/TempNPC",
                pos = "T800523_N12457",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["800515"] = {},
    ["800518"] = {}
}

quest_data = {
    ["800501"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800501_T800501_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800501_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12429,
                alias = "Npc12429",
                script = "Actor/Npc/TempNPC",
                pos = "Q800501_T800501_Moster_1",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12452,
                alias = "Npc12452",
                script = "Actor/Npc/TempNPC",
                pos = "Q800501_T800501_Moster_2",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["800502"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800501_T800501_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800503"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800501_T800501_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800504"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800504_T800504_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800504_T800504_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800505"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800505_T800505_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800506_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12429,
                alias = "Npc12429",
                script = "Actor/Npc/TempNPC",
                pos = "Q800505_T800505_Moster_1",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12453,
                alias = "Npc12453",
                script = "Actor/Npc/TempNPC",
                pos = "Q800505_T800505_Moster_3",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["800506"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800505_T800505_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800508"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800509_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12429,
                alias = "Npc12429",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_Moster_1",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12452,
                alias = "Npc12452",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_Moster_2",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12453,
                alias = "Npc12453",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_Moster_3",
                scene_id = 6,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["800509"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800510"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "T800520_N12454",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12429,
                alias = "Npc12429",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_Moster_1",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12452,
                alias = "Npc12452",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_Moster_2",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12453,
                alias = "Npc12453",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_Moster_3",
                scene_id = 6,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12514,
                alias = "Npc12514",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_Moster_1",
                scene_id = 6,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["800511"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12454,
                alias = "Npc12454",
                script = "Actor/Npc/TempNPC",
                pos = "T800520_N12454",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12455,
                alias = "Npc12455",
                script = "Actor/Npc/TempNPC",
                pos = "T800521_N12455",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12456,
                alias = "Npc12456",
                script = "Actor/Npc/TempNPC",
                pos = "T800522_N12456",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12457,
                alias = "Npc12457",
                script = "Actor/Npc/TempNPC",
                pos = "T800523_N12457",
                scene_id = 6,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["800512"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12454,
                alias = "Npc12454",
                script = "Actor/Npc/TempNPC",
                pos = "T800520_N12454",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12455,
                alias = "Npc12455",
                script = "Actor/Npc/TempNPC",
                pos = "T800521_N12455",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12456,
                alias = "Npc12456",
                script = "Actor/Npc/TempNPC",
                pos = "T800522_N12456",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12457,
                alias = "Npc12457",
                script = "Actor/Npc/TempNPC",
                pos = "T800523_N12457",
                scene_id = 6,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["800513"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800514"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800515_T800515_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800514_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800515"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800515_T800515_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12424,
                alias = "Npc12424",
                script = "Actor/Npc/TempNPC",
                pos = "Q800515_T800515_N12424",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800515_T800515_N10000005",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12454,
                alias = "Npc12454",
                script = "Actor/Npc/TempNPC",
                pos = "T800520_N12454",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12455,
                alias = "Npc12455",
                script = "Actor/Npc/TempNPC",
                pos = "T800521_N12455",
                scene_id = 6,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12456,
                alias = "Npc12456",
                script = "Actor/Npc/TempNPC",
                pos = "T800522_N12456",
                scene_id = 6,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12457,
                alias = "Npc12457",
                script = "Actor/Npc/TempNPC",
                pos = "T800523_N12457",
                scene_id = 6,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["800516"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12424,
                alias = "Npc12424",
                script = "Actor/Npc/TempNPC",
                pos = "Q800515_T800515_N12424",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12458,
                alias = "Npc12458",
                script = "Actor/Npc/TempNPC",
                pos = "Q800515_T800515_N10000005",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["800517"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800518"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12424,
                alias = "Npc12424",
                script = "Actor/Npc/TempNPC",
                pos = "Q800515_T800515_N12424",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800519"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800508_T800508_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800520"] = {}
}
