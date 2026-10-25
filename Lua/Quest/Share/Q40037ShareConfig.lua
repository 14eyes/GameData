main_id = 40037
local tbl = {}
local n = 4003702
local v = 4003703
local n2 = 4003710
local n3 = 4003704
local n4 = 4003705
local n5 = 4003706
local n6 = 4003707
local n7 = 4003708
local n8 = 4003709
local n9 = 4003711
local n10 = 4003712
tbl[1] = 4003701
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"33"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133102211"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133102210"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133102177"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133102218"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133107209"
tbl7[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4003701"] = {},
    ["4003702"] = {},
    ["4003703"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003702_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003705"] = {},
    ["4003706"] = {},
    ["4003707"] = {
        npcs = {
            {
                id = 30092,
                alias = "Npc30092",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003706_N30092_310200476",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30090,
                alias = "Npc30090",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003706_N30090",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4003709"] = {
        gadgets = {
            {
                id = 70710594,
                alias = "Gadget70710594",
                pos = "T4003708_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003711"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908409zhihua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710594,
                alias = "Gadget70710594",
                pos = "T4003708_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003712"] = {
        npcs = {
            {
                id = 30092,
                alias = "Npc30092",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003711_N30092",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710594,
                alias = "Gadget70710594",
                pos = "T4003708_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4003701"] = {},
    ["4003702"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003702_N1016_310200474",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003702_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4003703"] = {
        npcs = {
            {
                id = 30091,
                alias = "Npc30091",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003703_N30091_310200475",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30097,
                alias = "Npc30097",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003703_N30097",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30110,
                alias = "Npc30110",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003703_N30104",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003704"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "T4003710_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003705"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "T4003705_N1016_310200486",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30091,
                alias = "Npc30091",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003703_N30091_310200475",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30099,
                alias = "Npc30099",
                script = "Actor/Npc/TempNPC",
                pos = "Q47003_N30099",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003706"] = {
        npcs = {
            {
                id = 30091,
                alias = "Npc30091",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N30091",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30092,
                alias = "Npc30092",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003706_N30092_310200476",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N10045",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30099,
                alias = "Npc30099",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N30099",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30090,
                alias = "Npc30090",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003706_N30090",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N1041",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N1041",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4003707"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003707_N1016_310200477",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30091,
                alias = "Npc30091",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N30091",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30099,
                alias = "Npc30099",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N30099",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710594,
                alias = "Gadget70710594",
                pos = "T4003708_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003708"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003707_N1016_310200477",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30091,
                alias = "Npc30091",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N30091",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30092,
                alias = "Npc30092",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003706_N30092_310200476",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30099,
                alias = "Npc30099",
                script = "Actor/Npc/TempNPC",
                pos = "T4003706_N30099",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30090,
                alias = "Npc30090",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003706_N30090",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        gadgets = {
            {
                id = 70710594,
                alias = "Gadget70710594",
                pos = "T4003708_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003709"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908409zhihua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003507_N10232_310701347",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2148,
                alias = "Npc2148",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2034,
                alias = "Npc2034",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4003710"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "T4003710_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30091,
                alias = "Npc30091",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003703_N30091_310200475",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30099,
                alias = "Npc30099",
                script = "Actor/Npc/TempNPC",
                pos = "Q47003_N30099",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30097,
                alias = "Npc30097",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003703_N30097",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30110,
                alias = "Npc30110",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003703_N30104",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4003711"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003711_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30092,
                alias = "Npc30092",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003711_N30092",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2148,
                alias = "Npc2148",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2034,
                alias = "Npc2034",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4003507_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "T4003602_N10000005"}}
    },
    ["4003712"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003602_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
