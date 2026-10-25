main_id = 3024
local tbl = {}
local n = 302410
local v = 302401
local n2 = 302413
local n3 = 302411
local n4 = 302412
local n5 = 302402
local n6 = 302403
local n7 = 302404
local n8 = 302405
local n9 = 302406
local n10 = 302407
local n11 = 302408
local n12 = 302409
tbl[1] = 302414
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133304400"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133303642"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133310582"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133310589"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["302401"] = {},
    ["302402"] = {},
    ["302403"] = {},
    ["302404"] = {},
    ["302405"] = {},
    ["302406"] = {},
    ["302407"] = {},
    ["302409"] = {},
    ["302410"] = {},
    ["302411"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q302413_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302413"] = {},
    ["302414"] = {}
}

quest_data = {
    ["302401"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q302401_T302401_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["302402"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q302402_N1059_3173",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302402_T302402_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302402_T302402_N12709",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302402_T302402_N12709",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["302403"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302403_T302403_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12765,
                alias = "Npc12765",
                script = "Actor/Npc/TempNPC",
                pos = "Q302403_T302403_N12805",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12766,
                alias = "Npc12766",
                script = "Actor/Npc/TempNPC",
                pos = "Q302403_T302403_N12806",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["302404"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302404_T302404_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302404_T302404_N12709",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302404_T302404_N12709",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["302405"] = {
        npcs = {
            {
                id = 12801,
                alias = "Npc12801",
                script = "Actor/Npc/TempNPC",
                pos = "Q302405_T302405_N12801",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12802,
                alias = "Npc12802",
                script = "Actor/Npc/TempNPC",
                pos = "Q302405_T302405_N12802",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13123,
                alias = "Npc13123",
                script = "Actor/Npc/TempNPC",
                pos = "T302405_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["302406"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302407"] = {
        npcs = {
            {
                id = 12801,
                alias = "Npc12801",
                script = "Actor/Npc/TempNPC",
                pos = "Q302407_T302407_N12801",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12802,
                alias = "Npc12802",
                script = "Actor/Npc/TempNPC",
                pos = "Q302407_T302407_N12802",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12803,
                alias = "Npc12803",
                script = "Actor/Npc/TempNPC",
                pos = "Q302407_T302407_N12803",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12804,
                alias = "Npc12804",
                script = "Actor/Npc/TempNPC",
                pos = "Q302407_T302407_N12804",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["302408"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302409"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302409_T302409_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12801,
                alias = "Npc12801",
                script = "Actor/Npc/TempNPC",
                pos = "Q302407_T302407_N12801",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12802,
                alias = "Npc12802",
                script = "Actor/Npc/TempNPC",
                pos = "Q302407_T302407_N12802",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12803,
                alias = "Npc12803",
                script = "Actor/Npc/TempNPC",
                pos = "T302409_N12803",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12709,
                alias = "Npc12709",
                script = "Actor/Npc/TempNPC",
                pos = "Q302409_T302409_N12709",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 4428,
                alias = "Npc4428",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q302409_T302409_N12709",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["302410"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302411"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302411_T302411_N1053",
                scene_id = 1077,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302411_T302411_N1058",
                scene_id = 1077,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302411_T302411_N1052",
                scene_id = 1077,
                room_id = 1,
                data_index = 3
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "T302412_N10000005"}}
    },
    ["302412"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q302412_T302412_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302412_T302412_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302412_T302412_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302412_T302412_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["302413"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q302413_N1059",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["302414"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
