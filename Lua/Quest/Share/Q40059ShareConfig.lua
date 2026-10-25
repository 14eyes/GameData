main_id = 40059
local tbl = {}
local n = 4005902
local v = 4005903
local n2 = 4005904
local n3 = 4005905
local n4 = 4005906
local n5 = 4005907
local n6 = 4005908
local n7 = 4005909
local n8 = 4005910
local n9 = 4005911
local n10 = 4005917
local n11 = 4005912
local n12 = 4005913
local n13 = 4005914
local n14 = 4005916
local n15 = 4005915
tbl[1] = 4005901
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133209072"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED = {{"0"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4005901"] = {},
    ["4005902"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005908"] = {},
    ["4005909"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005903_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30139",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N12435",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30150",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4005910"] = {
        npcs = {
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005901_N3000",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710699,
                alias = "Gadget70710699",
                pos = "Q4005909_Gadget70710699",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005911"] = {},
    ["4005912"] = {},
    ["4005913"] = {}
}

quest_data = {
    ["4005901"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005902"] = {},
    ["4005903"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005903_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N12435",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30150",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4005904"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005903_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N12435",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30150",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4005905"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005903_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N12435",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30150",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4005906"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005903_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N12435",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30150",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4005907"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005903_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N12435",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30150",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4005908"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005901_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005903_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30139",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N12435",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005903_N30150",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4005909"] = {
        npcs = {
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005901_N3000",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710699,
                alias = "Gadget70710699",
                pos = "Q4005909_Gadget70710699",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005910"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005909_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005909_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005909_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005909_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005909_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005909_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005910_N30139",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12435,
                alias = "Npc12435",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005910_N12435",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30150,
                alias = "Npc30150",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005910_N30150",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4005911"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005911_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4005912"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005911_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4005913"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005911_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4005914"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005911_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30151,
                alias = "Npc30151",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005914_N30151",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4005915"] = {},
    ["4005916"] = {},
    ["4005917"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1018",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4005911_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005911_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    }
}
