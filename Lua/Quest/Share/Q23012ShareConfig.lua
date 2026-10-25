main_id = 23012
local tbl = {}
local n = 2301209
local v = 2301206
local n2 = 2301207
local n3 = 2301208
local n4 = 2301202
local n5 = 2301203
local n6 = 2301204
local n7 = 2301205
tbl[1] = 2301201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133304119"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133304095"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133304090"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101948"}, {"101949"}, {"101950"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl6 = {}
local str4 = "133304191,1"
tbl6[1] = "3"
tbl6[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl6
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2301201"] = {},
    ["2301205"] = {
        npcs = {
            {
                id = 4136,
                alias = "Npc4136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301201_N4136",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2301209"] = {
        npcs = {
            {
                id = 4136,
                alias = "Npc4136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301201_N4136",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2301201"] = {
        npcs = {
            {
                id = 4136,
                alias = "Npc4136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301201_N4136",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["2301202"] = {
        npcs = {
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2301203"] = {
        npcs = {
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2301204"] = {
        npcs = {
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2301205"] = {
        npcs = {
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301203_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301203_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301203_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2301206"] = {
        npcs = {
            {
                id = 4136,
                alias = "Npc4136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301201_N4136",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["2301207"] = {
        npcs = {
            {
                id = 4136,
                alias = "Npc4136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301201_N4136",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["2301208"] = {
        npcs = {
            {
                id = 4136,
                alias = "Npc4136",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301201_N4136",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["2301209"] = {
        npcs = {
            {
                id = 12679,
                alias = "Npc12679",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12719,
                alias = "Npc12719",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12720,
                alias = "Npc12720",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301202_N12679",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
