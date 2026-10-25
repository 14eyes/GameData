main_id = 19065
local tbl = {}
local n = 1906513
local v = 1906501
local n2 = 1906511
local n3 = 1906502
local n4 = 1906503
local n5 = 1906512
local n6 = 1906504
local n7 = 1906505
local n8 = 1906506
local n9 = 1906507
local n10 = 1906508
local n11 = 1906509
tbl[1] = 1906510
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
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133004446,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133004447"}}
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "133004446,1"
tbl5[1] = "3"
tbl5[2] = str2
local tbl6 = {}
local str3 = "133004451,1"
tbl6[1] = "3"
tbl6[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl6
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl7 = {}
local str4 = ""
tbl7[1] = "133004452"
tbl7[2] = str4
local tbl8 = {}
local str5 = ""
tbl8[1] = "133004447"
tbl8[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl7
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl8
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["1906501"] = {},
    ["1906502"] = {},
    ["1906503"] = {},
    ["1906504"] = {},
    ["1906505"] = {},
    ["1906506"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1906507"] = {},
    ["1906509"] = {
        npcs = {
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906510"] = {}
}

quest_data = {
    ["1906501"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906502"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906503"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906504"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19065ChallengeMidPlayer"}}
    },
    ["1906505"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19065ChallengeMidPlayer"}}
    },
    ["1906506"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906507"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906508"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906509"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906510"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065AddedNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q19065AddedPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1906511"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065AddedNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q19065AddedPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1906512"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065AddedNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q19065AddedPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1906513"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065ChallengeMidNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067RescueNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 11002,
                alias = "Npc11002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19067RescuePos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19065AddedNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q19065AddedPaimon",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
