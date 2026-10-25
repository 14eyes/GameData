main_id = 40110
local tbl = {}
local n = 4011002
local v = 4011003
local n2 = 4011004
local n3 = 4011005
local n4 = 4011006
local n5 = 4011013
local n6 = 4011007
local n7 = 4011008
local n8 = 4011009
local n9 = 4011010
local n10 = 4011011
local n11 = 4011012
tbl[1] = 4011001
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"65"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133303671"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4011001"] = {},
    ["4011002"] = {},
    ["4011003"] = {},
    ["4011004"] = {
        npcs = {
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3859:-1753.201,277.329,4008.393,1.094,87.300,0.005]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011006"] = {},
    ["4011007"] = {},
    ["4011008"] = {},
    ["4011009"] = {},
    ["4011010"] = {},
    ["4011011"] = {},
    ["4011012"] = {},
    ["4011013"] = {}
}

quest_data = {
    ["4011001"] = {},
    ["4011002"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3856:-1654.794,260.525,3869.325,0.000,116.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3857:-1654.483,260.437,3867.409,0.000,55.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3854:-1652.579,260.236,3870.312,0.000,197.820,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011003"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3858:-1751.757,277.020,4007.022,0.896,306.665,0.628]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3859:-1753.201,277.329,4008.393,1.094,87.300,0.005]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3860:-1751.320,277.249,4010.097,0.868,234.135,359.334]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011004"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3861:-1749.221,283.221,3985.331]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3862:-1750.649,283.542,3985.104,0.000,8.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30362,
                alias = "Npc30362",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3863:-1755.299,277.610,4007.766,0.000,88.020,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30363,
                alias = "Npc30363",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3864:-1757.836,278.048,4009.798,0.000,97.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30364,
                alias = "Npc30364",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3865:-1759.031,278.007,4006.434,0.000,81.540,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4011005"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3861:-1749.221,283.221,3985.331]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3859:-1753.201,277.329,4008.393,1.094,87.300,0.005]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3862:-1750.649,283.542,3985.104,0.000,8.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30362,
                alias = "Npc30362",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3863:-1755.299,277.610,4007.766,0.000,88.020,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30363,
                alias = "Npc30363",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3864:-1757.836,278.048,4009.798,0.000,97.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30364,
                alias = "Npc30364",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3865:-1759.031,278.007,4006.434,0.000,81.540,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points = {
            {point_id = 4011005, scene_id = 3, pos = "[3_3883:-1753.996,277.860,4011.664,0.000,222.600,0.000]"}
        }
    },
    ["4011006"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3866:-1753.215,277.472,4010.042,0.000,232.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3867:-1753.852,277.205,4005.274,0.000,317.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3868:-1753.413,277.234,4007.229,0.000,280.860,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30362,
                alias = "Npc30362",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3863:-1755.299,277.610,4007.766,0.000,88.020,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30363,
                alias = "Npc30363",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3864:-1757.836,278.048,4009.798,0.000,97.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30364,
                alias = "Npc30364",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3865:-1759.031,278.007,4006.434,0.000,81.540,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points = {
            {point_id = 4011006, scene_id = 3, pos = "[3_3848:-1652.607,260.196,3868.077,0.000,295.000,0.000]"}
        }
    },
    ["4011007"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011007_N1070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011007_N1069",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4011008"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011007_N1070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011007_N1069",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4331,
                alias = "Npc4331",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4011008_N4331",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011009"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011007_N1070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011007_N1069",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4328,
                alias = "Npc4328",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4011009_N4328",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011010"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3973:-1102.556,205.597,2683.437]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3974:-1100.227,205.555,2683.291]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4321,
                alias = "Npc4321",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4011010_N4321",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011011"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011011_N1070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011011_N1069",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30365,
                alias = "Npc30365",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011011_N30365",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 4011011, scene_id = 3, pos = "Q4011012_N10000005"}}
    },
    ["4011012"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011012_N1070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011012_N1069",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4011013"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3856:-1654.794,260.525,3869.325,0.000,116.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3857:-1654.483,260.437,3867.409,0.000,55.900,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3854:-1652.579,260.236,3870.312,0.000,197.820,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
