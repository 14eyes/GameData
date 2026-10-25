main_id = 40098
local tbl = {}
local n = 4009802
local v = 4009803
local n2 = 4009804
local n3 = 4009805
local n4 = 4009806
local n5 = 4009807
local n6 = 4009808
local n7 = 4009809
local n8 = 4009811
local n9 = 4009812
local n10 = 4009813
local n11 = 4009814
local n12 = 4009810
tbl[1] = 4009801
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"59"}, {"61"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133003047"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120257"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4009801"] = {},
    ["4009802"] = {},
    ["4009803"] = {},
    ["4009804"] = {},
    ["4009806"] = {},
    ["4009807"] = {},
    ["4009808"] = {},
    ["4009810"] = {},
    ["4009811"] = {},
    ["4009812"] = {},
    ["4009813"] = {},
    ["4009814"] = {}
}

quest_data = {
    ["4009801"] = {},
    ["4009802"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009802_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009803"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009803_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009803_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1004, pos = "Q4009803"}}
    },
    ["4009804"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009803",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009804_N1051",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4009805_N1007",
                scene_id = 1004,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009805_N1018",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009805_N1050",
                scene_id = 1004,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009805_N1058",
                scene_id = 1004,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4009805"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009803",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009804_N1051",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4009805_N1007",
                scene_id = 1004,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009805_N1018",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009805_N1050",
                scene_id = 1004,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009805_N1058",
                scene_id = 1004,
                room_id = 1,
                data_index = 6
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "Q4009805"}}
    },
    ["4009806"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4009807_N1007",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4009806_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807_N1060",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807_N1028",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807_N1028",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4009807"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4009807_N1007",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807_N1060",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807_N1028",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807_N1028",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "Q4009807"}}
    },
    ["4009808"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009807",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q4009808_N1002",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N1029",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N1027",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N1027",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4009809"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "N1019_T4009808",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q4009808_N1002",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N1029",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N1027",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009808_N1027",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        },
        transmit_points = {{point_id = 4, scene_id = 3, pos = "Q4009809"}}
    },
    ["4009810"] = {},
    ["4009811"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009810_N10095",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009810_N1020",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009810_N158701",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009812"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009812_N1019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009812_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009810_N158701",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009813"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4009813_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1419,
                alias = "Npc1419",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N1419_T4009703",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009810_N158701",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009814"] = {}
}
