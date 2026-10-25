main_id = 40083
local tbl = {}
local n = 4008303
local v = 4008320
local n2 = 4008322
local n3 = 4008302
local n4 = 4008304
local n5 = 4008316
local n6 = 4008314
local n7 = 4008305
local n8 = 4008306
local n9 = 4008307
local n10 = 4008318
local n11 = 4008319
local n12 = 4008309
local n13 = 4008311
local n14 = 4008321
local n15 = 4008323
local n16 = 4008310
local n17 = 4008312
local n18 = 4008317
local n19 = 4008315
local n20 = 4008313
local n21 = 4008308
tbl[1] = 4008301
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
tbl[18] = n16
tbl[19] = n17
tbl[20] = n18
tbl[21] = n19
tbl[22] = n20
tbl[23] = n21
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133304569"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133302711"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120157"}, {"120155"}, {"120158"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4008301"] = {},
    ["4008302"] = {},
    ["4008303"] = {},
    ["4008304"] = {},
    ["4008305"] = {},
    ["4008306"] = {},
    ["4008307"] = {},
    ["4008308"] = {},
    ["4008309"] = {},
    ["4008310"] = {},
    ["4008311"] = {},
    ["4008312"] = {},
    ["4008313"] = {},
    ["4008314"] = {},
    ["4008315"] = {},
    ["4008316"] = {},
    ["4008317"] = {},
    ["4008318"] = {},
    ["4008319"] = {},
    ["4008320"] = {},
    ["4008321"] = {},
    ["4008322"] = {},
    ["4008323"] = {}
}

quest_data = {
    ["4008301"] = {},
    ["4008302"] = {
        npcs = {
            {
                id = 12859,
                alias = "Npc12859",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008302_N12859",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008303"] = {},
    ["4008304"] = {
        npcs = {
            {
                id = 12859,
                alias = "Npc12859",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008206_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 47103, pos = "Q4008206"}}
    },
    ["4008305"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008305_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008305_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4008306"] = {},
    ["4008307"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4008307_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30253,
                alias = "Npc30253",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30255,
                alias = "Npc30255",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4008308"] = {},
    ["4008309"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008309_N1055",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30253,
                alias = "Npc30253",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30255,
                alias = "Npc30255",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4008310"] = {
        npcs = {
            {
                id = 12860,
                alias = "Npc12860",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008310_N12860",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008311"] = {},
    ["4008312"] = {
        npcs = {
            {
                id = 12860,
                alias = "Npc12860",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008206_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 47103, pos = "Q4008206"}}
    },
    ["4008313"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008313_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008314"] = {},
    ["4008315"] = {},
    ["4008316"] = {
        npcs = {
            {
                id = 12859,
                alias = "Npc12859",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008302_N12859",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008317"] = {
        npcs = {
            {
                id = 12860,
                alias = "Npc12860",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008310_N12860",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008318"] = {
        npcs = {
            {
                id = 30253,
                alias = "Npc30253",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30255,
                alias = "Npc30255",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4008319"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008319_N12855",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30253,
                alias = "Npc30253",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30255,
                alias = "Npc30255",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008113_N30253",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4008320"] = {},
    ["4008321"] = {},
    ["4008322"] = {},
    ["4008323"] = {}
}
