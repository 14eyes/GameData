main_id = 19145
local tbl = {}
local n = 1914502
local v = 1914503
local n2 = 1914505
local n3 = 1914506
local n4 = 1914507
local n5 = 1914508
local n6 = 1914509
local n7 = 1914511
local n8 = 1914512
local n9 = 1914510
local n10 = 1914504
tbl[1] = 1914501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220759"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "132203486"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133220758"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl6 = {}
local str4 = "1"
tbl6[1] = "101758"
tbl6[2] = str4
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl6
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1914501"] = {},
    ["1914502"] = {},
    ["1914503"] = {},
    ["1914508"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914507_N3107",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1914509"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914507_N3107",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1914511"] = {},
    ["1914512"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914511_C1914511_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1914501"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914501_C1914501_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12503,
                alias = "Npc12503",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914501_C1914501_N12503",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914501_C1914501_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1914502"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914502_C1914502_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12506,
                alias = "Npc12506",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914502_C1914502_N12506",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914502_C1914502_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1914503"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914503_C1914503_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12508,
                alias = "Npc12508",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914503_C1914503_N12508",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914503_C1914503_N3105",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914503_C1914503_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914504"] = {},
    ["1914505"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914504_C1914504_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12508,
                alias = "Npc12508",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914509_C1914509_N12508",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914504_C1914504_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1914506"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914504_C1914504_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12508,
                alias = "Npc12508",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914509_C1914509_N12508",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914504_C1914504_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1914507"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914504_C1914504_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12508,
                alias = "Npc12508",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914509_C1914509_N12508",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914507_N3107",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914504_C1914504_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914508"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914504_C1914504_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12508,
                alias = "Npc12508",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914509_C1914509_N12508",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914509_C1914509_N3105",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914504_C1914504_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914509"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914509_C1914509_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12508,
                alias = "Npc12508",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914510_C1914510_N12508",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914510_C1914510_N3105",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914509_C1914509_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914510"] = {},
    ["1914511"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914511_C1914511_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914511_C1914511_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914511_C1914511_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1914512"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914512_C1914512_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914512_C1914512_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
