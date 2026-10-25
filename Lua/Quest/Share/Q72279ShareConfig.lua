main_id = 72279
local tbl = {}
local n = 7227901
local v = 7227902
local n2 = 7227903
local n3 = 7227916
local n4 = 7227920
local n5 = 7227917
local n6 = 7227912
local n7 = 7227904
local n8 = 7227905
local n9 = 7227918
local n10 = 7227906
local n11 = 7227907
local n12 = 7227911
local n13 = 7227913
local n14 = 7227908
local n15 = 7227921
local n16 = 7227914
local n17 = 7227915
local n18 = 7227909
local n19 = 7227910
tbl[1] = 7227919
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133209098"
tbl3[2] = str
local tbl4 = {}
local str2 = "0"
tbl4[1] = "133209091"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl6 = {}
local str3 = ""
tbl6[1] = "133209091"
tbl6[2] = str3
local tbl7 = {}
local str4 = ""
tbl7[1] = "133209098"
tbl7[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl7
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
server2.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101648"}}
tbl5.SERVER = server2
cancel_action = tbl5

rewind_data = {
    ["7227901"] = {},
    ["7227902"] = {},
    ["7227903"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227902_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227902_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227902_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227902_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7227904"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7227909"] = {},
    ["7227914"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20566,
                alias = "Npc20566",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227908_N20569",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7227916"] = {},
    ["7227919"] = {},
    ["7227921"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20568,
                alias = "Npc20568",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227908",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20565,
                alias = "Npc20565",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7227810",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20566,
                alias = "Npc20566",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227908_N20569",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7227907"] = {
        npcs = {
            {
                id = 20565,
                alias = "Npc20565",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7227810",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    }
}

quest_data = {
    ["7227901"] = {
        npcs = {
            {
                id = 20567,
                alias = "Npc20567",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227901",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227902"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227902_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227902_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227902_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227902_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7227903"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227916_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227904"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20568,
                alias = "Npc20568",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227908",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7227905"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7227906"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7227907"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20565,
                alias = "Npc20565",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7227810",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7227908"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20568,
                alias = "Npc20568",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227908",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 20565,
                alias = "Npc20565",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7227810",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 20566,
                alias = "Npc20566",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227908_N20569",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["7227909"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227910_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227909_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227909_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227909_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227910_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3081,
                alias = "Npc3081",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7227909_N3081",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30163,
                alias = "Npc30163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7227910_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["7227910"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227910_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227909_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227909_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227909_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227910_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3081,
                alias = "Npc3081",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7227909_N3081",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30163,
                alias = "Npc30163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7227910_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["7227911"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20565,
                alias = "Npc20565",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7227810",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7227912"] = {},
    ["7227913"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20565,
                alias = "Npc20565",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7227810",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7227914"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20569,
                alias = "Npc20569",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227914_N20566",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7227915"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20569,
                alias = "Npc20569",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227914_N20566",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 20566,
                alias = "Npc20566",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227908_N20569",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["7227916"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227916_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7227917"] = {},
    ["7227918"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227905_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7227919"] = {},
    ["7227920"] = {},
    ["7227921"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227904_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227917_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
