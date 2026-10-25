main_id = 72677
local tbl = {}
local n = 7267701
local v = 7267710
local n2 = 7267702
local n3 = 7267708
local n4 = 7267703
local n5 = 7267704
local n6 = 7267705
local n7 = 7267706
local n8 = 7267707
tbl[1] = 7267709
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
tbl3[1] = "133104814"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7267701"] = {},
    ["7267702"] = {},
    ["7267703"] = {},
    ["7267705"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267703_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7267706"] = {},
    ["7267707"] = {},
    ["7267708"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267701_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7267709"] = {}
}

quest_data = {
    ["7267701"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267701_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12354,
                alias = "Npc12354",
                script = "Actor/Npc/TempNPC",
                pos = "Q7267701_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7267702"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267701_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7267703"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267703_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12354,
                alias = "Npc12354",
                script = "Actor/Npc/TempNPC",
                pos = "Q7267703_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7267704"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267703_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12354,
                alias = "Npc12354",
                script = "Actor/Npc/TempNPC",
                pos = "Q7267703_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7267705"] = {
        npcs = {
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7267706"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267703_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7267707"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267703_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12354,
                alias = "Npc12354",
                script = "Actor/Npc/TempNPC",
                pos = "Q7267703_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7267708"] = {
        npcs = {
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7267709"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267701_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7267710"] = {
        npcs = {
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267403_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
