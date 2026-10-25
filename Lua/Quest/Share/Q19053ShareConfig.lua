main_id = 19053
local tbl = {}
local n = 1905302
local v = 1905303
local n2 = 1905304
local n3 = 1905305
local n4 = 1905310
local n5 = 1905306
local n6 = 1905307
local n7 = 1905308
local n8 = 1905309
tbl[1] = 1905301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133104576"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133104656"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133104811"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133104812"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101589"}, {"101616"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1905301"] = {},
    ["1905302"] = {
        npcs = {
            {
                id = 12219,
                alias = "Npc12219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Daobao01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12229,
                alias = "Npc12229",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaobaoXiaoDi01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12288,
                alias = "Npc12288",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaobaoXiaoDi02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12289,
                alias = "Npc12289",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaobaoXiaoDi03",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1905303"] = {},
    ["1905304"] = {},
    ["1905306"] = {},
    ["1905308"] = {},
    ["1905310"] = {}
}

quest_data = {
    ["1905301"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101GuiLi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12219,
                alias = "Npc12219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Daobao01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12229,
                alias = "Npc12229",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaobaoXiaoDi01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12288,
                alias = "Npc12288",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaobaoXiaoDi02",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12289,
                alias = "Npc12289",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaobaoXiaoDi03",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101GuiLi01",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1905302"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou13",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou13",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905303"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou13",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou13",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905304"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou13",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou13",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905305"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou14",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12219,
                alias = "Npc12219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Daobao02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12229,
                alias = "Npc12229",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaobaoXiaoDi11",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12288,
                alias = "Npc12288",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaobaoXiaoDi12",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou14",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1905306"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou14",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12219,
                alias = "Npc12219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Daobao02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou14",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905307"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou15",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12219,
                alias = "Npc12219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Daobao03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou15",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905308"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou15",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12219,
                alias = "Npc12219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Daobao03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12220,
                alias = "Npc12220",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Older01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou15",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1905309"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou16",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12219,
                alias = "Npc12219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Daobao04",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12220,
                alias = "Npc12220",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Older01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou16",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1905310"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou24",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12219,
                alias = "Npc12219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Daobao05",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou24",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
