main_id = 40064
local tbl = {}
local n = 4006402
local v = 4006403
local n2 = 4006404
local n3 = 4006416
local n4 = 4006405
local n5 = 4006406
local n6 = 4006407
local n7 = 4006408
local n8 = 4006409
local n9 = 4006410
local n10 = 4006411
local n11 = 4006412
local n12 = 4006413
local n13 = 4006414
local n14 = 4006417
local n15 = 4006415
tbl[1] = 4006401
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
tbl3[1] = "133004071"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "199001024"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "199001088"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl6 = {}
local str4 = "199001025,1"
tbl6[1] = "9"
tbl6[2] = str4
local tbl7 = {}
local str5 = "201009001,1"
tbl7[1] = "1009"
tbl7[2] = str5
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl7
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4006401"] = {},
    ["4006402"] = {},
    ["4006403"] = {},
    ["4006405"] = {
        npcs = {
            {
                id = 1477,
                alias = "Npc1477",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1410Born",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710037,
                alias = "Gadget70710037",
                pos = "Q4006404_winecup",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4006406"] = {},
    ["4006407"] = {},
    ["4006408"] = {},
    ["4006409"] = {},
    ["4006410"] = {},
    ["4006411"] = {
        npcs = {
            {
                id = 12732,
                alias = "Npc12732",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710349,
                alias = "Gadget70710349",
                pos = "Q4006410_footprint",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710136,
                alias = "Gadget70710136",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4006413"] = {
        npcs = {
            {
                id = 12732,
                alias = "Npc12732",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710349,
                alias = "Gadget70710349",
                pos = "Q4006410_footprint",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710136,
                alias = "Gadget70710136",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4006414"] = {
        gadgets = {
            {
                id = 70710349,
                alias = "Gadget70710349",
                pos = "Q4006410_footprint",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710136,
                alias = "Gadget70710136",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4006415"] = {
        gadgets = {
            {
                id = 70710349,
                alias = "Gadget70710349",
                pos = "Q4006410_footprint",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710136,
                alias = "Gadget70710136",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4006416"] = {
        gadgets = {
            {
                id = 70710037,
                alias = "Gadget70710037",
                pos = "Q4006404_winecup",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4006401"] = {
        npcs = {
            {
                id = 1512,
                alias = "NPC1512",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4006401_N1512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4006402"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006402_N10095",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006402_N10011",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006402_N10012",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4006403"] = {
        npcs = {
            {
                id = 1477,
                alias = "Npc1477",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1410Born",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1404,
                alias = "Npc1404",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1404Sit",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1414Born",
                scene_id = 1009,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1403,
                alias = "Npc1403",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1404Sit",
                scene_id = 1009,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4006404"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4006403_N1001",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006403_N1032",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006403_N1042",
                scene_id = 1009,
                room_id = 1,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710037,
                alias = "Gadget70710037",
                pos = "Q4006404_winecup",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4006405"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006403_N1032",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006416_N1042",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4006406"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006406_N10095",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006406_N10011",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006406_N1032",
                scene_id = 3,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006406_N1042",
                scene_id = 3,
                room_id = 1,
                data_index = 4
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006406_N10012",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4006407"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "T4006406_mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "T4006406_fischl",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006407_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4006406_xinyan",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 9, pos = "Q4006407_transmit"}}
    },
    ["4006408"] = {},
    ["4006409"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "T4006407_mona",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "T4006407_fischl",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "T4006407_kazuha",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006409_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4006410"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006410_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006410_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12732,
                alias = "Npc12732",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710771,
                alias = "Gadget70710771",
                pos = "Q4006410_SkirmishHat",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710349,
                alias = "Gadget70710349",
                pos = "Q4006410_footprint",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710136,
                alias = "Gadget70710136",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4006411"] = {
        gadgets = {
            {
                id = 70710810,
                alias = "Gadget70710810",
                pos = "Q4006411_TrackSkir",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4006412"] = {
        npcs = {
            {
                id = 12732,
                alias = "Npc12732",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4006410_N12624",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4006413"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "T4006409_kazuha",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12604,
                alias = "Npc12604",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006413_N12604",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12605,
                alias = "Npc12605",
                script = "Actor/Npc/TempNPC",
                pos = "T4006409_persikov",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4006414"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006414_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006414_N10011",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006414_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006414_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4006415"] = {
        npcs = {
            {
                id = 12625,
                alias = "Npc12625",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006415_N12625",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4006416"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4006416_N1001",
                scene_id = 1009,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006403_N1032",
                scene_id = 1009,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006416_N1042",
                scene_id = 1009,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1477,
                alias = "Npc1477",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1410Born",
                scene_id = 1009,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4006417"] = {}
}
