main_id = 40027
local tbl = {}
local n = 4002702
local v = 4002704
local n2 = 4002719
local n3 = 4002705
local n4 = 4002703
local n5 = 4002706
local n6 = 4002707
local n7 = 4002708
local n8 = 4002720
local n9 = 4002709
local n10 = 4002710
local n11 = 4002711
local n12 = 4002712
local n13 = 4002713
local n14 = 4002714
local n15 = 4002715
local n16 = 4002716
local n17 = 4002717
local n18 = 4002718
tbl[1] = 4002701
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133002055"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002056"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED = {{"0"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4002701"] = {},
    ["4002702"] = {},
    ["4002704"] = {},
    ["4002705"] = {},
    ["4002706"] = {},
    ["4002707"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40027_ambor_02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_bannett",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002708"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40027_ambor_02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_bannett",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002709"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002709_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40027_ambor_02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_eula_02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_bnt_02",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002710"] = {},
    ["4002711"] = {}
}

quest_data = {
    ["4002701"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_abd_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002702"] = {},
    ["4002703"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002705_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q4002705_ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002705_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002705_bannett",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002704"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_abd_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40027_ambor_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_eula_01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_bnt_01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002705"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_abd_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q4002705_ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002705_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002705_bannett",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002706"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q4002706_ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_bannett",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002707"] = {},
    ["4002708"] = {},
    ["4002709"] = {},
    ["4002710"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_albedo_pre",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_bnt_02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002711"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_abd_draw",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40027_bnt_02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12256,
                alias = "Npc12256",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002711_N12256",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710566,
                alias = "Gadget70710566",
                pos = "Q40027_NPCdraw",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710567,
                alias = "Gadget70710567",
                pos = "Q40027_NPCdraw",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710568,
                alias = "Gadget70710568",
                pos = "Q40027_NPCdraw",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710569,
                alias = "Gadget70710569",
                pos = "Q40027_NPCdraw",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 70710570,
                alias = "Gadget70710570",
                pos = "Q40027_NPCdraw",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 70710571,
                alias = "Gadget70710571",
                pos = "Q40027_NPCdraw",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 70710572,
                alias = "Gadget70710572",
                pos = "Q40027_NPCdraw",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 70710565,
                alias = "Gadget70710565",
                pos = "Q40027_NPCdraw",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4002712"] = {},
    ["4002713"] = {},
    ["4002714"] = {},
    ["4002715"] = {},
    ["4002716"] = {},
    ["4002717"] = {},
    ["4002718"] = {},
    ["4002719"] = {},
    ["4002720"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40027_ambor_02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002706_bannett",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
