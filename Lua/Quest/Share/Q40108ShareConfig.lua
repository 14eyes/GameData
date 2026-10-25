main_id = 40108
local tbl = {}
local n = 4010802
local v = 4010803
local n2 = 4010804
local n3 = 4010805
local n4 = 4010806
local n5 = 4010807
local n6 = 4010808
local n7 = 4010809
local n8 = 4010810
local n9 = 4010811
local n10 = 4010821
local n11 = 4010812
local n12 = 4010813
local n13 = 4010814
local n14 = 4010820
local n15 = 4010817
local n16 = 4010818
local n17 = 4010819
tbl[1] = 4010801
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133102244"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4010801"] = {},
    ["4010802"] = {},
    ["4010803"] = {},
    ["4010808"] = {},
    ["4010809"] = {},
    ["4010810"] = {},
    ["4010811"] = {},
    ["4010812"] = {},
    ["4010813"] = {},
    ["4010814"] = {},
    ["4010817"] = {},
    ["4010818"] = {},
    ["4010819"] = {},
    ["4010820"] = {},
    ["4010821"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3785:-627.041,226.665,328.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4010801"] = {
        npcs = {
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3774:-413.782,216.688,345.553,0.000,94.440,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010802"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3773:-409.274,216.336,346.398,0.000,259.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3774:-413.782,216.688,345.553,0.000,94.440,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4010803"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3773:-409.274,216.336,346.398,0.000,259.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2036,
                alias = "Npc2036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3775:-590.585,204.578,125.219,0.000,143.530,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3777:-602.845,204.777,161.834,0.000,129.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2002,
                alias = "Npc2002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3776:-616.139,205.208,139.418,0.000,62.150,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010804"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3773:-409.274,216.336,346.398,0.000,259.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010805"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3773:-409.274,216.336,346.398,0.000,259.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010806"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3773:-409.274,216.336,346.398,0.000,259.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010807"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3773:-409.274,216.336,346.398,0.000,259.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4010808"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3773:-409.274,216.336,346.398,0.000,259.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2036,
                alias = "Npc2036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3775:-590.585,204.578,125.219,0.000,143.530,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2035,
                alias = "Npc2035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3777:-602.845,204.777,161.834,0.000,129.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2002,
                alias = "Npc2002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3776:-616.139,205.208,139.418,0.000,62.150,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010809"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3779:-598.371,204.809,130.962,0.000,193.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3778:-597.221,204.809,129.003,0.000,297.770,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3780:-630.437,209.431,156.939,0.000,314.970,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4010810"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3782:-627.023,209.431,156.280,0.000,288.830,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3781:-629.400,209.431,154.154,0.000,335.380,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3780:-630.437,209.431,156.939,0.000,314.970,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4010811"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3784:-623.413,226.665,330.577,0.000,300.770,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3785:-627.041,226.665,328.734]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3786:-624.252,226.665,329.561,0.000,322.240,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3783:-627.542,226.665,326.925]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010812"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3792:1536.400,235.551,502.465,0.000,79.500,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3796:1539.547,235.551,504.752,0.000,193.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3790:1539.787,235.551,502.329,0.000,178.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30360,
                alias = "Npc30360",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3791:1540.182,235.551,500.067]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010813"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3792:1536.400,235.551,502.465,0.000,79.500,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3796:1539.547,235.551,504.752,0.000,193.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3790:1539.787,235.551,502.329,0.000,178.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30360,
                alias = "Npc30360",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3791:1540.182,235.551,500.067]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010814"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3792:1536.400,235.551,502.465,0.000,79.500,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3796:1539.547,235.551,504.752,0.000,193.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3790:1539.787,235.551,502.329,0.000,178.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30360,
                alias = "Npc30360",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3791:1540.182,235.551,500.067]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010817"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3795:1576.157,246.535,450.498,0.000,67.010,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3797:1577.691,246.277,454.346,0.000,173.770,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3793:1578.575,247.046,449.434,0.000,338.870,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30360,
                alias = "Npc30360",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3794:1579.627,247.002,451.374,0.000,288.670,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010818"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3798:1600.969,260.942,480.252,0.000,202.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3799:1598.598,260.877,480.362,0.000,169.720,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3800:1603.327,260.727,477.302,0.000,241.290,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30360,
                alias = "Npc30360",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3801:1599.452,260.865,478.063,0.000,204.090,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30361,
                alias = "Npc30361",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3802:1598.620,260.753,476.380,0.000,31.980,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4010819"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3805:-518.442,207.809,234.305,0.000,232.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3889:-525.986,209.821,251.429,0.000,153.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3803:-525.075,209.821,249.936,0.000,228.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3804:-526.154,209.821,248.833,0.000,45.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3806:-519.376,207.814,235.536,0.000,216.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2039,
                alias = "Npc2039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_3807:-514.682,208.175,239.447,0.000,258.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4010820"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3792:1536.400,235.551,502.465,0.000,79.500,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3796:1539.547,235.551,504.752,0.000,193.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3790:1539.787,235.551,502.329,0.000,178.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30360,
                alias = "Npc30360",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3791:1540.182,235.551,500.067]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4010821"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3784:-623.413,226.665,330.577,0.000,300.770,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3783:-627.542,226.665,326.925]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_3787:-623.954,226.665,327.695,0.000,343.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
