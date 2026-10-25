main_id = 12039
local tbl = {}
local n = 1203905
local v = 1203906
local n2 = 1203907
local n3 = 1203908
local n4 = 1203909
local n5 = 1203921
local n6 = 1203923
local n7 = 1203910
local n8 = 1203922
local n9 = 1203911
local n10 = 1203912
local n11 = 1203913
local n12 = 1203914
local n13 = 1203915
local n14 = 1203916
local n15 = 1203917
local n16 = 1203918
local n17 = 1203902
local n18 = 1203919
local n19 = 1203920
local n20 = 1203903
local n21 = 1203904
tbl[1] = 1203901
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10500"}, {"10501"}, {"10503"}, {"10502"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220762"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1203901"] = {},
    ["1203902"] = {},
    ["1203904"] = {},
    ["1203905"] = {},
    ["1203906"] = {},
    ["1203907"] = {},
    ["1203908"] = {},
    ["1203909"] = {},
    ["1203910"] = {},
    ["1203911"] = {},
    ["1203912"] = {},
    ["1203913"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N12589",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            }
        }
    },
    ["1203914"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N12589",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            }
        }
    },
    ["1203915"] = {},
    ["1203918"] = {},
    ["1203920"] = {},
    ["1203921"] = {},
    ["1203922"] = {},
    ["1203923"] = {}
}

quest_data = {
    ["1203901"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203811",
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
            }
        }
    },
    ["1203902"] = {
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
                id = 3027,
                alias = "Npc3027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q1203902",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12636,
                alias = "Npc12636",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203902",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3028,
                alias = "Npc3028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q1203902",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1203903"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203998_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203904"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203997_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3054,
                alias = "Npc3054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203997_N3054",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1203905"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203905_N1032",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203905_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203906"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203905_N1032",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203905_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203907"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203907_N1005",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203907_N1005",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203908"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203907_N1005",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203907_N1005",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203909"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203910"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N12589",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203911"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N12589",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203912"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N12589",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203913"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203910_N1032",
                scene_id = 1071,
                room_id = 1071,
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
    ["1203914"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
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
    ["1203915"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q12039_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q12039_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12636,
                alias = "Npc12636",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203915_N12636",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1203916"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q12039_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q12039_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12636,
                alias = "Npc12636",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203915_N12636",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1203917"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q12039_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q12039_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12636,
                alias = "Npc12636",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203915_N12636",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1203918"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q12039_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q12039_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12636,
                alias = "Npc12636",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203915_N12636",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1203919"] = {
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
                id = 12636,
                alias = "Npc12636",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203902",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3028,
                alias = "Npc3028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q1203902",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203801_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1203998_N10000005"}}
    },
    ["1203920"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203998_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203921"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N12589",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203922"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N12589",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    },
    ["1203923"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N12589",
                scene_id = 1071,
                room_id = 1071,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203909_N1032",
                scene_id = 1071,
                room_id = 1071,
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
            }
        }
    }
}
