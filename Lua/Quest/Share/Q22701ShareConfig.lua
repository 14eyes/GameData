main_id = 22701
local tbl = {}
local n = 2270101
local v = 2270102
local n2 = 2270103
local n3 = 2270107
local n4 = 2270108
local n5 = 2270104
local n6 = 2270109
local n7 = 2270110
local n8 = 2270105
tbl[1] = 2270106
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133103531,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133103817,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133103817,1"
tbl6[1] = "3"
tbl6[2] = str3
local tbl7 = {}
local str4 = "133103531,1"
tbl7[1] = "3"
tbl7[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl7
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl8 = {}
local str5 = "10"
tbl8[1] = "100541"
tbl8[2] = str5
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl8
server2.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl5.SERVER = server2
cancel_action = tbl5

rewind_data = {
    ["2270101"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270102"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270103"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Route_End",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270104"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270105"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270106"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270107"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270108"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270109"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270110"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2270101"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270102"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270103"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Route_End",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270104"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270105"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270106"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270107"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270108"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270109"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2270110"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22701_shimei_Talk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
