main_id = 19055
local tbl = {}
local n = 1905501
local v = 1905503
local n2 = 1905504
local n3 = 1905514
local n4 = 1905505
local n5 = 1905512
local n6 = 1905513
local n7 = 1905515
local n8 = 1905506
local n9 = 1905507
local n10 = 1905508
local n11 = 1905510
local n12 = 1905509
local n13 = 1905511
local n14 = 1905517
local n15 = 1905502
tbl[1] = 1905516
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133210533"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133210534"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM = {}
tbl2.SERVER = server
cancel_action = tbl2
local tbl5 = {["1905501"] = {}}

local tbl6 = {
    npcs = {
        {
            id = 12551,
            alias = "Npc12551",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905503_N3139",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 12055,
            alias = "Npc12055",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905506_N10000005",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 12056,
            alias = "Npc12056",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905503_N12056",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        }
    }
}

local quest_var = {}
local n16 = -1
local n17 = -1
local n18 = -1
local n19 = -1
quest_var[1] = 1
quest_var[2] = n16
quest_var[3] = n17
quest_var[4] = n18
quest_var[5] = n19
tbl6.quest_var = quest_var
tbl5["1905504"] = tbl6

tbl5["1905506"] = {
    npcs = {
        {
            id = 511,
            alias = "Coop_Gorou",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905506_N511",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

tbl5["1905507"] = {}

tbl5["1905508"] = {
    npcs = {
        {
            id = 511,
            alias = "Coop_Gorou",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905507_N511",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 12548,
            alias = "Npc12548",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905507_N12548",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 12680,
            alias = "Npc12680",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905507_N12680",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 12681,
            alias = "Npc12681",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905507_N12681",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        }
    }
}

tbl5["1905509"] = {}

tbl5["1905510"] = {
    npcs = {
        {
            id = 12548,
            alias = "Npc12548",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905507_N12548",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 12680,
            alias = "Npc12680",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905507_N12680",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 12681,
            alias = "Npc12681",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905507_N12681",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        }
    }
}

tbl5["1905511"] = {
    npcs = {
        {
            id = 1039,
            alias = "Npc1039",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905509_N505",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

tbl5["1905514"] = {
    npcs = {
        {
            id = 511,
            alias = "Coop_Gorou",
            script = "Actor/Npc/TempNPC",
            pos = "Q1905506_N511",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

tbl5["1905516"] = {}
rewind_data = tbl5

quest_data = {
    ["1905501"] = {
        npcs = {
            {
                id = 12551,
                alias = "Npc12551",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905501_N12551",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905501_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12055,
                alias = "Npc12055",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905501_N12055",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3130,
                alias = "Npc3130",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905501_N12551",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905501_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1905502"] = {},
    ["1905503"] = {
        npcs = {
            {
                id = 12056,
                alias = "Npc12056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905503_N12056",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12650,
                alias = "Npc12650",
                script = "Actor/Npc/TodorokuSneakNPC",
                pos = "Q1905501_N12551",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12651,
                alias = "Npc12651",
                script = "Actor/Npc/TokudaSneakNPC",
                pos = "Q1905501_N12055",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3130,
                alias = "Npc3130",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905501_N12551",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12551,
                alias = "Npc12551",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905501_N12551",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12055,
                alias = "Npc12055",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905501_N12055",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1905504"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N1055",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N1055",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905505"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905506"] = {
        npcs = {
            {
                id = 12055,
                alias = "Npc12055",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905503_N3139",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12056,
                alias = "Npc12056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905503_N12056",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905507"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12548,
                alias = "Npc12548",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905507_N12548",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12680,
                alias = "Npc12680",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905507_N12680",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12681,
                alias = "Npc12681",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905507_N12681",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1905508"] = {
        npcs = {
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905507_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905509"] = {
        npcs = {
            {
                id = 12551,
                alias = "Npc12551",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905509_N12551",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905509_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12055,
                alias = "Npc12055",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905509_N12055",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12056,
                alias = "Npc12056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905509_N12056",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905509_N505",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905509_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1905510"] = {},
    ["1905511"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905511_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905511_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905512"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905513"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905514"] = {
        npcs = {
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905515"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905506_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905516"] = {},
    ["1905517"] = {}
}
