main_id = 40039
local tbl = {}
local n = 4003902
local v = 4003903
local n2 = 4003904
local n3 = 4003922
local n4 = 4003905
local n5 = 4003917
local n6 = 4003910
local n7 = 4003915
local n8 = 4003906
local n9 = 4003907
local n10 = 4003921
local n11 = 4003908
local n12 = 4003916
local n13 = 4003923
local n14 = 4003918
local n15 = 4003909
local n16 = 4003919
local n17 = 4003920
local n18 = 4003911
local n19 = 4003913
local n20 = 4003924
local n21 = 4003925
local n22 = 4003914
local n23 = 4003912
tbl[1] = 4003901
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
tbl[24] = n22
tbl[25] = n23
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"34"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133108200"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133108197"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133108196"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133108199"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133108257"
tbl7[2] = str5
local tbl8 = {}
local str6 = ""
tbl8[1] = "133108258"
tbl8[2] = str6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[6] = tbl8
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4003901"] = {},
    ["4003902"] = {},
    ["4003903"] = {},
    ["4003904"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003903_N1042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4003905"] = {},
    ["4003906"] = {},
    ["4003908"] = {},
    ["4003909"] = {},
    ["4003910"] = {},
    ["4003911"] = {},
    ["4003912"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "T4003911_N1031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4003911_N1042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4003914"] = {},
    ["4003915"] = {},
    ["4003916"] = {},
    ["4003917"] = {},
    ["4003918"] = {},
    ["4003919"] = {},
    ["4003920"] = {},
    ["4003922"] = {}
}

quest_data = {
    ["4003901"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003901_N10211",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4003902"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003901_N10211",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4003903"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "T4003901_N1005",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003903_N1042",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2437,
                alias = "Npc2437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4003904"] = {
        npcs = {
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2437,
                alias = "Npc2437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003905"] = {
        npcs = {
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2437,
                alias = "Npc2437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003906"] = {},
    ["4003907"] = {},
    ["4003908"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "T4003908_N1031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30086,
                alias = "Npc30086",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003906_311300037",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4003908_N1042",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30101,
                alias = "Npc30101",
                script = "Actor/Npc/TempNPC",
                pos = "T4003908_N30101",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30134,
                alias = "Npc30134",
                script = "Actor/Npc/TempNPC",
                pos = "T4003908_N1031",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4003909"] = {},
    ["4003910"] = {
        npcs = {
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2437,
                alias = "Npc2437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003911"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "T4003911_N1031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30087,
                alias = "Npc30087",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003910_N30087",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4003911_N1042",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30101,
                alias = "Npc30101",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003910_N30101",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30109,
                alias = "Npc30109",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003910daobaotuan1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30111,
                alias = "Npc30111",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003910daobaotuan2",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4003912"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003912_N10211",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4003913"] = {},
    ["4003914"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "T4003911_N1031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4003911_N1042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4003915"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003905_guide_311300039",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003905_guide_311300039",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30101,
                alias = "Npc30101",
                script = "Actor/Npc/TempNPC",
                pos = "T4003908_N30101",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30134,
                alias = "Npc30134",
                script = "Actor/Npc/TempNPC",
                pos = "T4003908_N1031",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30135,
                alias = "Npc30135",
                script = "Actor/Npc/TempNPC",
                pos = "T4003908_N1042",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30136,
                alias = "Npc30136",
                script = "Actor/Npc/TempNPC",
                pos = "T4003908_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 2437,
                alias = "Npc2437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4003916"] = {},
    ["4003917"] = {
        npcs = {
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2437,
                alias = "Npc2437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003918"] = {},
    ["4003919"] = {},
    ["4003920"] = {},
    ["4003921"] = {},
    ["4003922"] = {
        npcs = {
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2437,
                alias = "Npc2437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003903_N1031_311300036",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003923"] = {},
    ["4003924"] = {},
    ["4003925"] = {}
}
