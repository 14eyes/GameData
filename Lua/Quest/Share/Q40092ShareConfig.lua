main_id = 40092
local tbl = {}
local n = 4009203
local v = 4009202
local n2 = 4009217
local n3 = 4009218
local n4 = 4009219
local n5 = 4009204
local n6 = 4009205
local n7 = 4009206
local n8 = 4009223
local n9 = 4009207
local n10 = 4009208
local n11 = 4009209
local n12 = 4009222
local n13 = 4009220
local n14 = 4009221
local n15 = 4009210
local n16 = 4009211
local n17 = 4009212
local n18 = 4009213
local n19 = 4009214
local n20 = 4009215
local n21 = 4009216
tbl[1] = 4009201
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"57"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133107180"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133102214"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133104479"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133102186"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120124"}}
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4009201"] = {},
    ["4009202"] = {},
    ["4009203"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009201_T4009201_N10232",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009204"] = {},
    ["4009205"] = {},
    ["4009206"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009205_T4009205_N2093",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009207"] = {},
    ["4009208"] = {},
    ["4009209"] = {},
    ["4009210"] = {},
    ["4009211"] = {},
    ["4009212"] = {},
    ["4009213"] = {},
    ["4009215"] = {},
    ["4009216"] = {},
    ["4009217"] = {},
    ["4009218"] = {},
    ["4009219"] = {},
    ["4009222"] = {},
    ["4009223"] = {}
}

quest_data = {
    ["4009201"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009201_T4009201_N10232",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009202"] = {
        npcs = {
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009202_T4009202_N1066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12966,
                alias = "Npc12966",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009202_T4009202_N12966",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009203"] = {},
    ["4009204"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009204_T4009204_N1042_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009205"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009205_T4009205_N2093",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009206"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009206_T4009206_N1015",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009206_T4009206_N2140",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009207"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009206_T4009206_N1015",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009207_T4009207_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009208"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009207_T4009207_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009208_T4009208_N12966",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009209"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009208_T4009208_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12966,
                alias = "Npc12966",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009208_T4009208_N12966",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009209_T4009209_N1048",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009210"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009210_T4009210_N1048",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009211"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009211_route1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009212"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009212_T4009212_N1048",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12968,
                alias = "Npc12968",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009212_T4009212_N12968",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009213"] = {
        npcs = {
            {
                id = 12968,
                alias = "Npc12968",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009212_T4009212_N12968",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009214"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4009212_T4009212_N12968"}}},
    ["4009215"] = {
        npcs = {
            {
                id = 12968,
                alias = "Npc12968",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009212_T4009212_N12968",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009216"] = {
        npcs = {
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4009216_T4009216_N2143",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009217"] = {
        npcs = {
            {
                id = 12966,
                alias = "Npc12966",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009217_T4009217_N12966",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009218"] = {
        npcs = {
            {
                id = 12966,
                alias = "Npc12966",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009219_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009219"] = {
        npcs = {
            {
                id = 12966,
                alias = "Npc12966",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009219_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009220"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009209_T4009209_N1048",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13020,
                alias = "Npc13020",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009220",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710974,
                alias = "Gadget70710974",
                pos = "Q4009220",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009221"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009209_T4009209_N1048",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13021,
                alias = "Npc13021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009221",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710975,
                alias = "Gadget70710975",
                pos = "Q4009221",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009222"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009209_T4009209_N1048",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13022,
                alias = "Npc13022",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009222",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710973,
                alias = "Gadget70710973",
                pos = "Q4009222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009223"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009206_T4009206_N1015",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009223_N1016",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12966,
                alias = "Npc12966",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009223_N12966",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
