main_id = 12038
local tbl = {}
local n = 1203802
local v = 1203803
local n2 = 1203804
local n3 = 1203805
local n4 = 1203806
local n5 = 1203807
local n6 = 1203815
local n7 = 1203818
local n8 = 1203817
local n9 = 1203808
local n10 = 1203816
local n11 = 1203809
local n12 = 1203819
local n13 = 1203810
local n14 = 1203820
local n15 = 1203822
local n16 = 1203821
local n17 = 1203811
local n18 = 1203812
local n19 = 1203813
local n20 = 1203823
local n21 = 1203814
tbl[1] = 1203801
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
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10503"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220778"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133221086"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133221087"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133221088"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1203801"] = {},
    ["1203802"] = {},
    ["1203803"] = {
        npcs = {
            {
                id = 3027,
                alias = "Npc3027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q1203902",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203804"] = {
        npcs = {
            {
                id = 12593,
                alias = "Npc12593",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203803",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203806"] = {
        npcs = {
            {
                id = 12593,
                alias = "Npc12593",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203803",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203811"] = {},
    ["1203815"] = {},
    ["1203816"] = {},
    ["1203820"] = {},
    ["1203823"] = {}
}

quest_data = {
    ["1203801"] = {
        npcs = {
            {
                id = 3054,
                alias = "Npc3054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203706_N1005",
                scene_id = 1064,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "C1203801_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3057,
                alias = "Npc3057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203706_N10000005",
                scene_id = 1064,
                room_id = 1064,
                data_index = 4
            }
        }
    },
    ["1203802"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203802_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3027,
                alias = "Npc3027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q1203902",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203803"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203803_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12593,
                alias = "Npc12593",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203803",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3022,
                alias = "Npc3022",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202301NPC3022",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "guide_Q1203804"}}
    },
    ["1203804"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203804_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3022,
                alias = "Npc3022",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202301NPC3022",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203805"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203804_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12593,
                alias = "Npc12593",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203803",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3022,
                alias = "Npc3022",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202301NPC3022",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1203806"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203899_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203807"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203899_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12593,
                alias = "Npc12593",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203803",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203808"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203808_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203809"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203809_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203810"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203809_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203811"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203813",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203812"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203813",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203813"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203813",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203814"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203813",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1203815"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203808_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203816"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203809_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203817"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203808_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203818"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203808_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203819"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203809_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203820"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203821"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203822"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203823"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203813",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
