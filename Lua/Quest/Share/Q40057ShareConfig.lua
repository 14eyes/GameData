main_id = 40057
local tbl = {}
local n = 4005702
local v = 4005703
local n2 = 4005704
local n3 = 4005705
local n4 = 4005706
local n5 = 4005707
local n6 = 4005708
local n7 = 4005709
local n8 = 4005710
local n9 = 4005711
local n10 = 4005712
local n11 = 4005713
local n12 = 4005714
tbl[1] = 4005701
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133209070"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101729"}, {"101730"}, {"101731"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "201066002,1"
tbl4[1] = "1066"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4005701"] = {},
    ["4005702"] = {},
    ["4005704"] = {},
    ["4005705"] = {},
    ["4005706"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005705_N10045",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005705_N30139",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005705_N3000",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005705_N3190",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4005707"] = {
        npcs = {
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005705_N30139",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            },
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005705_N3000",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005705_N3190",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4005708"] = {},
    ["4005709"] = {},
    ["4005712"] = {},
    ["4005713"] = {},
    ["4005714"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005713_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4005701"] = {},
    ["4005702"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005702_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005703"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005702_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005704"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005704_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005704_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4005705"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
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
                pos = "Q4005704_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005705_N10045",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005705_N30139",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            },
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005705_N3000",
                scene_id = 1066,
                room_id = 1,
                data_index = 5
            },
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005705_N3190",
                scene_id = 1066,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4005706"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005706_N1032",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005706_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005706_N12435",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005706_N30150",
                scene_id = 1066,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4005707"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005706_N1032",
                scene_id = 1066,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005706_N1018",
                scene_id = 1066,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005705_N10045",
                scene_id = 1066,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4005708"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005708_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005709"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005708_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005708_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005710"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005709_BesideWater",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005710_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005711"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005709_BesideWater",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005710_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005712"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005710_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005709_BesideWater",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005710_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 4005712, scene_id = 3, pos = "Q4005403_guide_WuGeXianGuangChang"}}
    },
    ["4005713"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005713_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005713_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005713_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005713_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005713_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4005714"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005713_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005713_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005713_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005713_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
