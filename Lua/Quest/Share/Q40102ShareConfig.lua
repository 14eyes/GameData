main_id = 40102
local tbl = {}
local n = 4010207
local v = 4010202
local n2 = 4010203
local n3 = 4010204
local n4 = 4010206
local n5 = 4010205
tbl[1] = 4010201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120327"}}}
local qUEST_EXEC_LOCK_POINT = {}
local tbl3 = {}
local str = "932"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_LOCK_POINT[1] = tbl3
server.QUEST_EXEC_LOCK_POINT = qUEST_EXEC_LOCK_POINT
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4010201"] = {},
    ["4010202"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1059",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1052",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13091,
                alias = "Npc13091",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N13091",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4010203"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1059",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1052",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13091,
                alias = "Npc13091",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N13091",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4010204"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1059",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1052",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201421:-387.602,244.752,2660.609,0.000,228.422,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4010205"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1059",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1052",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010206_N1064",
                scene_id = 1079,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201421:-387.602,244.752,2660.609,0.000,228.422,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010206"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1059",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1052",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201421:-387.602,244.752,2660.609,0.000,228.422,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4010207"] = {}
}

quest_data = {
    ["4010201"] = {
        npcs = {
            {
                id = 13161,
                alias = "Npc13161",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010201_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010201_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010201_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4010202"] = {
        npcs = {
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201421:-387.602,244.752,2660.609,0.000,228.422,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010203"] = {
        npcs = {
            {
                id = 13161,
                alias = "Npc13161",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010003_N13151",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201421:-387.602,244.752,2660.609,0.000,228.422,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4010204"] = {
        npcs = {
            {
                id = 13259,
                alias = "Npc13259",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010204_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1079, pos = "Q4010206_N10000005"}}
    },
    ["4010205"] = {
        npcs = {
            {
                id = 13161,
                alias = "Npc13161",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010205_guide",
                scene_id = 1079,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4010206"] = {
        npcs = {
            {
                id = 13161,
                alias = "Npc13161",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010206_N10000005",
                scene_id = 1079,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010206_N1064",
                scene_id = 1079,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4010207"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1059",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N1052",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13091,
                alias = "Npc13091",
                script = "Actor/Npc/TempNPC",
                pos = "Q4010202_N13091",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201421:-387.602,244.752,2660.609,0.000,228.422,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
