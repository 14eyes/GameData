main_id = 40056
local tbl = {}
local n = 4005602
local v = 4005603
local n2 = 4005604
local n3 = 4005605
local n4 = 4005612
local n5 = 4005613
local n6 = 4005614
local n7 = 4005615
local n8 = 4005616
local n9 = 4005617
local n10 = 4005618
local n11 = 4005606
local n12 = 4005607
local n13 = 4005608
local n14 = 4005619
local n15 = 4005620
local n16 = 4005609
local n17 = 4005621
local n18 = 4005610
local n19 = 4005622
tbl[1] = 4005601
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
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101728"}}
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED = {{"0"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "201066001,1"
tbl4[1] = "1066"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4005601"] = {},
    ["4005602"] = {},
    ["4005604"] = {},
    ["4005605"] = {},
    ["4005606"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4005607"] = {},
    ["4005608"] = {
        npcs = {
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N30139",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30141,
                alias = "Npc30141",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N30141",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30142,
                alias = "Npc30142",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N30142",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005607_N3029",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005613"] = {},
    ["4005618"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            },
            {
                id = 30156,
                alias = "Npc30156",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30156",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30157,
                alias = "Npc30157",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30157",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4005619"] = {},
    ["4005621"] = {}
}

quest_data = {
    ["4005601"] = {},
    ["4005602"] = {},
    ["4005603"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005602_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1627,
                alias = "Npc1627",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005501_N3205",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30154,
                alias = "Npc30154",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005501_N3206",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30155,
                alias = "Npc30155",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005501_N3207",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4005604"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1627,
                alias = "Npc1627",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005604_N1627",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30154,
                alias = "Npc30154",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N30154",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30155,
                alias = "Npc30155",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N30155",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005605"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4005606"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N10045",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005605_guide",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4005607"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N10045",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N30139",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30141,
                alias = "Npc30141",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N30141",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30142,
                alias = "Npc30142",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N30142",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005605_guide",
                scene_id = 1066,
                room_id = 1,
                data_index = 7
            },
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005607_N3029",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4005608"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005608_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005608_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005608_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4005609"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005619_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005620_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4005610"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4005611_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30140,
                alias = "Npc30140",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005611_N30140",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30186,
                alias = "Npc30186",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005610_N30186",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4005612"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4005613"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 30156,
                alias = "Npc30156",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30156",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30157,
                alias = "Npc30157",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30157",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4005614"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 30156,
                alias = "Npc30156",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30156",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30157,
                alias = "Npc30157",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30157",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4005615"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 30156,
                alias = "Npc30156",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30156",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30157,
                alias = "Npc30157",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30157",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4005616"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 30156,
                alias = "Npc30156",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30156",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30157,
                alias = "Npc30157",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30157",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4005617"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005606_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 30156,
                alias = "Npc30156",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30156",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30157,
                alias = "Npc30157",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005613_N30157",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4005618"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005604_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005619"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005619_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005620_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005607_N30139",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005608_N3000",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005619_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005608_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4005620"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005619_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005620_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005608_N30139",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005620_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4005621"] = {transmit_points = {{point_id = 4005621, scene_id = 3, pos = "Q4005610_guide"}}},
    ["4005622"] = {}
}
