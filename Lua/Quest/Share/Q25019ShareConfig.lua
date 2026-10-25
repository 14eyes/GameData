main_id = 25019
local tbl = {}
local n = 2501902
local v = 2501903
local n2 = 2501904
local n3 = 2501911
local n4 = 2501905
local n5 = 2501913
local n6 = 2501906
local n7 = 2501910
local n8 = 2501907
local n9 = 2501912
local n10 = 2501908
local n11 = 2501909
tbl[1] = 2501901
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
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133501039"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2501402"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2501901"] = {},
    ["2501902"] = {},
    ["2501903"] = {},
    ["2501904"] = {},
    ["2501905"] = {
        npcs = {
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100043:-1843.703,68.343,9092.597,0.000,317.773,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2501906"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100042:-1843.201,66.980,9093.198,0.000,306.543,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100043:-1843.703,68.343,9092.597,0.000,317.773,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2501907"] = {},
    ["2501909"] = {
        npcs = {
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100042:-1843.201,66.980,9093.198,0.000,306.543,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2501910"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100042:-1843.201,66.980,9093.198,0.000,306.543,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100043:-1843.703,68.343,9092.597,0.000,317.773,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2501911"] = {},
    ["2501912"] = {},
    ["2501913"] = {
        npcs = {
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100043:-1843.703,68.343,9092.597,0.000,317.773,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2501908"] = {
        npcs = {
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100042:-1843.201,66.980,9093.198,0.000,306.543,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2501901"] = {},
    ["2501902"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "Q2501904_N14264",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100041:-1843.651,68.343,9092.553,0.000,40.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2501903"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "Q2501904_N14264",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100041:-1843.651,68.343,9092.553,0.000,40.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2501904"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "Q2501904_N14264",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100041:-1843.651,68.343,9092.553,0.000,40.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2501905"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100042:-1843.201,66.980,9093.198,0.000,306.543,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2501906"] = {},
    ["2501907"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100119:-1961.992,84.307,8522.137,0.000,167.144,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100042:-1843.201,66.980,9093.198,0.000,306.543,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14461,
                alias = "Npc14461",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100044:-1967.242,85.002,8524.535,0.000,110.728,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2501908"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100051:-1962.432,86.143,8538.479,0.000,89.086,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2501909"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100051:-1962.432,86.143,8538.479,0.000,89.086,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2501910"] = {},
    ["2501911"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "Q2501904_N14264",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100041:-1843.651,68.343,9092.553,0.000,40.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2501912"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100119:-1961.992,84.307,8522.137,0.000,167.144,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14265,
                alias = "Npc14265",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100042:-1843.201,66.980,9093.198,0.000,306.543,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14461,
                alias = "Npc14461",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100044:-1967.242,85.002,8524.535,0.000,110.728,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2501913"] = {
        npcs = {
            {
                id = 14264,
                alias = "Npc14264",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100042:-1843.201,66.980,9093.198,0.000,306.543,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
