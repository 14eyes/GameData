main_id = 40047
local tbl = {}
local n = 4004702
local v = 4004703
local n2 = 4004704
local n3 = 4004718
local n4 = 4004719
local n5 = 4004705
local n6 = 4004706
local n7 = 4004707
local n8 = 4004708
local n9 = 4004709
local n10 = 4004710
local n11 = 4004711
local n12 = 4004712
local n13 = 4004713
local n14 = 4004714
local n15 = 4004715
local n16 = 4004716
local n17 = 4004717
tbl[1] = 4004701
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
tbl3[1] = "177007001"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "177007002"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101703"}, {"101706"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl5 = {}
local str3 = "177005004,1"
tbl5[1] = "7"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4004701"] = {},
    ["4004702"] = {},
    ["4004703"] = {
        npcs = {
            {
                id = 3193,
                alias = "Npc3193",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004702_N3193",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4004704"] = {},
    ["4004705"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004705_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4004706"] = {},
    ["4004707"] = {},
    ["4004708"] = {},
    ["4004709"] = {},
    ["4004710"] = {
        npcs = {
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4004711"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4004713"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4004714"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30106",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30107",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4004715"] = {
        npcs = {
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30106",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30107",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4004716"] = {
        npcs = {
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30106",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30107",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4004717"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004717_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30106",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30107",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4004718"] = {},
    ["4004719"] = {
        npcs = {
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30108,
                alias = "Npc30108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4004719_N30108",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4004712"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["4004701"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004701_N1037",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30104,
                alias = "Npc30104",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004701_N30104",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4004702"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004702_N3193",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3193,
                alias = "Npc3193",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004702_N3193",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30104,
                alias = "Npc30104",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004701_N30104",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4004703"] = {
        npcs = {
            {
                id = 30104,
                alias = "Npc30104",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004703_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4004704"] = {
        npcs = {
            {
                id = 30104,
                alias = "Npc30104",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004704_N30104",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 7, pos = "Q4004704_transmit"}}
    },
    ["4004705"] = {},
    ["4004706"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30175,
                alias = "Npc30175",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_N30175",
                scene_id = 7,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4004707"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30175,
                alias = "Npc30175",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_N30175",
                scene_id = 7,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4004708"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30175,
                alias = "Npc30175",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_N30175",
                scene_id = 7,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4004709"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30175,
                alias = "Npc30175",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_N30175",
                scene_id = 7,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4004710"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004710_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30175,
                alias = "Npc30175",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_N30175",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4004711"] = {},
    ["4004712"] = {
        npcs = {
            {
                id = 1005,
                alias = "Npc1005",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004711_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4004713"] = {
        npcs = {
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30106",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004713_N30107",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4004714"] = {},
    ["4004715"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004715_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4004716"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004717_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4004717"] = {},
    ["4004718"] = {
        npcs = {
            {
                id = 30104,
                alias = "Npc30104",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004704_N30104",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30105,
                alias = "Npc30105",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004706_T4004706",
                scene_id = 7,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30106,
                alias = "Npc30106",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004707_T4004707",
                scene_id = 7,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30107,
                alias = "Npc30107",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004708_T4004708",
                scene_id = 7,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30108,
                alias = "Npc30108",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4004719_N30108",
                scene_id = 7,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4004719"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4004705_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
