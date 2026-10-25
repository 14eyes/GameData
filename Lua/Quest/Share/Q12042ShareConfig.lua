main_id = 12042
local tbl = {}
local n = 1204202
local v = 1204203
local n2 = 1204204
local n3 = 1204205
local n4 = 1204211
local n5 = 1204206
local n6 = 1204207
local n7 = 1204208
local n8 = 1204210
local n9 = 1204209
tbl[1] = 1204201
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
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133220740"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1204201"] = {},
    ["1204203"] = {},
    ["1204206"] = {},
    ["1204207"] = {},
    ["1204208"] = {},
    ["1204209"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204209_T1204205_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204209_N1036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1204211"] = {}
}

quest_data = {
    ["1204201"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204201_guide_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1204201_Transmit1"}}
    },
    ["1204202"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204201_guide_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1204203"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204201_guide_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204209_N1036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1204204"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204204_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204209_N1036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1204205"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204204_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204209_N1036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1204206"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204201_guide_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204206_N1036",
                scene_id = 20122,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12379,
                alias = "Npc12379",
                script = "Actor/Npc/TempNPC",
                pos = "T1204203_T1204204_T1204105_T1204106_N12379",
                scene_id = 20122,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "T1204203_T1204204_T1204105_T1204106_N12379",
                scene_id = 20122,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1204207"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204201_guide_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204206_N1036",
                scene_id = 20122,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1204208"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204201_guide_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204208_N1036",
                scene_id = 20122,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12379,
                alias = "Npc12379",
                script = "Actor/Npc/TempNPC",
                pos = "T1204203_T1204204_T1204105_T1204106_N12379",
                scene_id = 20122,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "T1204203_T1204204_T1204105_T1204106_N12379",
                scene_id = 20122,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1204209"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204209_T1204205_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204209_N1036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1204210"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204201_guide_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204209_N1036",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1204209_N10000005"}}
    },
    ["1204211"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204201_guide_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1204206_N1036",
                scene_id = 20122,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3109,
                alias = "Npc3109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1204209_N3109",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
