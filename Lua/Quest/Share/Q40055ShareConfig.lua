main_id = 40055
local tbl = {}
local n = 4005501
local v = 4005502
local n2 = 4005503
local n3 = 4005504
local n4 = 4005505
local n5 = 4005506
local n6 = 4005507
local n7 = 4005508
local n8 = 4005509
local n9 = 4005511
local n10 = 4005512
local n11 = 4005513
tbl[1] = 4005510
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133209070"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101726"}, {"101727"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4005501"] = {},
    ["4005503"] = {},
    ["4005505"] = {},
    ["4005507"] = {
        npcs = {
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005505_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005508"] = {
        npcs = {
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005505_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005507_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005507_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30141,
                alias = "Npc30141",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005507_N30141",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30142,
                alias = "Npc30142",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005507_N30142",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005508_N3000",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4005510"] = {},
    ["4005511"] = {
        npcs = {
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005505_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005513"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005513_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005509"] = {
        npcs = {
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005508_N3000",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["4005501"] = {},
    ["4005502"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005502_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005502_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3205,
                alias = "Npc3205",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005501_N3205",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3206,
                alias = "Npc3206",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005501_N3206",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3207,
                alias = "Npc3207",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005501_N3207",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005503"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005502_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005502_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3205,
                alias = "Npc3205",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005501_N3205",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3206,
                alias = "Npc3206",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005501_N3206",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3207,
                alias = "Npc3207",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005501_N3207",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005504"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005504_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005504_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3205,
                alias = "Npc3205",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005504_N3205",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3206,
                alias = "Npc3206",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005504_N3206",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3207,
                alias = "Npc3207",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005504_N3207",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005505"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005504_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005505_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3030,
                alias = "Npc3030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005505_N3030",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005505_N3029",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4005506"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005506_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005507"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005506_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005507_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005507_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30141,
                alias = "Npc30141",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005507_N30141",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30142,
                alias = "Npc30142",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005507_N30142",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005508_N3000",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4005508"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005508_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005509"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005508_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005507_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4005510"] = {},
    ["4005511"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005508_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005509_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4005512"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005508_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005509_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 4005512, scene_id = 3, pos = "Q4005513_N10000005"}}
    },
    ["4005513"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005513_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
