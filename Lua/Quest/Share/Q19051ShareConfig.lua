main_id = 19051
local tbl = {}
local n = 1905102
local v = 1905103
local n2 = 1905104
local n3 = 1905111
local n4 = 1905105
local n5 = 1905106
local n6 = 1905113
local n7 = 1905114
local n8 = 1905115
local n9 = 1905107
local n10 = 1905108
local n11 = 1905112
local n12 = 1905109
local n13 = 1905110
tbl[1] = 1905101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133104573"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1905101"] = {},
    ["1905102"] = {
        npcs = {
            {
                id = 2439,
                alias = "Npc2439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_yinxing",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905103"] = {
        npcs = {
            {
                id = 2439,
                alias = "Npc2439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_yinxing",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_huixing",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905104"] = {
        npcs = {
            {
                id = 2439,
                alias = "Npc2439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_yinxing",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_huixing",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2438,
                alias = "Npc2438",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_xuliushi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905105"] = {},
    ["1905106"] = {},
    ["1905107"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101GaoShi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905108"] = {},
    ["1905109"] = {},
    ["1905110"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905114"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905115"] = {}
}

quest_data = {
    ["1905101"] = {
        npcs = {
            {
                id = 2439,
                alias = "Npc2439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_yinxing",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905102"] = {
        npcs = {
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_huixing",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905103"] = {
        npcs = {
            {
                id = 2438,
                alias = "Npc2438",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_xuliushi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905104"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905105"] = {
        npcs = {
            {
                id = 2439,
                alias = "Npc2439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Yinxing02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Huixing02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2438,
                alias = "Npc2438",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101XuLiushi02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou03",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Juza03",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou03",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1905106"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou04",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905107"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101GaoShi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905108"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou05",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905109"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12239,
                alias = "Npc12239",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101PaiZhao01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou05",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905110"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905111"] = {
        npcs = {
            {
                id = 2439,
                alias = "Npc2439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_yinxing",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_huixing",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2438,
                alias = "Npc2438",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QBS_xuliushi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1905112"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou05",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905113"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou04",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905114"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905115"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101GaoShi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101GaoShi01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
