main_id = 40139
local tbl = {}
local n = 4013901
local v = 4013902
local n2 = 4013920
local n3 = 4013903
local n4 = 4013904
local n5 = 4013921
local n6 = 4013917
local n7 = 4013914
local n8 = 4013915
local n9 = 4013922
local n10 = 4013905
local n11 = 4013911
local n12 = 4013916
local n13 = 4013912
local n14 = 4013906
local n15 = 4013907
local n16 = 4013918
local n17 = 4013919
local n18 = 4013908
local n19 = 4013909
local n20 = 4013910
tbl[1] = 4013913
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"85"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133107272"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133101273"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133115241"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133115143"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133101404"
tbl7[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl8 = {}
local str6 = "0"
tbl8[1] = "4013902"
tbl8[2] = str6
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl8
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4013901"] = {},
    ["4013902"] = {},
    ["4013903"] = {},
    ["4013904"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013906"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013908"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13890,
                alias = "Npc13890",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7300:2497.735,343.059,2416.801,0.000,254.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013909"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13890,
                alias = "Npc13890",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7300:2497.735,343.059,2416.801,0.000,254.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013910"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13856,
                alias = "Npc13856",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7671:2504.031,346.132,2438.885,0.000,271.015,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013913"] = {},
    ["4013915"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013917"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013921"] = {},
    ["4013922"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013914"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013905"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2514,
                alias = "Npc2514",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7859:2003.557,280.369,1606.611,0.000,332.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013916"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013907"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4013901"] = {
        npcs = {
            {
                id = 1016,
                alias = "Npc1016",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6863:-504.088,210.022,342.541,0.000,83.910,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6864:-503.193,210.022,344.073,0.000,168.812,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013902"] = {
        npcs = {
            {
                id = 13853,
                alias = "Npc13853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6866:-484.751,210.022,355.912,0.000,108.386,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13854,
                alias = "Npc13854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6867:-484.053,210.022,354.803,0.000,25.242,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10257,
                alias = "Npc10257",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6866:-484.751,210.022,355.912,0.000,108.386,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10286,
                alias = "Npc10286",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6867:-484.053,210.022,354.803,0.000,25.242,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4013903"] = {
        npcs = {
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6868:-500.264,209.783,335.039,0.000,342.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013904"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6869:-551.232,211.353,305.210,0.000,52.160,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13858,
                alias = "Npc13858",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6870:-550.229,211.353,306.140,0.000,219.834,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013905"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6871:2005.581,280.720,1601.766]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_7102:2301.380,280.917,2329.926]"}}
    },
    ["4013906"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6872:2447.888,341.898,2399.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013907"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6872:2447.888,341.898,2399.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13890,
                alias = "Npc13890",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7300:2497.735,343.059,2416.801,0.000,254.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013908"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6872:2447.888,341.898,2399.700]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13859,
                alias = "Npc13859",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6873:2474.560,343.059,2409.472]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013909"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6874:2497.041,346.085,2445.876,0.000,250.868,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13856,
                alias = "Npc13856",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7671:2504.031,346.132,2438.885,0.000,271.015,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013910"] = {
        npcs = {
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6875:2472.377,343.059,2407.132,0.000,182.902,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13857,
                alias = "Npc13857",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6876:2507.829,343.059,2401.078,0.000,339.966,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13890,
                alias = "Npc13890",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7300:2497.735,343.059,2416.801,0.000,254.082,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6875:2472.377,343.059,2407.132,0.000,182.902,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4013911"] = {},
    ["4013912"] = {},
    ["4013913"] = {},
    ["4013914"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6869:-551.232,211.353,305.210,0.000,52.160,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013915"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7100:2014.929,282.017,1530.400]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013916"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7101:2300.726,280.927,2329.696]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013917"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6869:-551.232,211.353,305.210,0.000,52.160,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013918"] = {},
    ["4013919"] = {},
    ["4013920"] = {
        npcs = {
            {
                id = 13853,
                alias = "Npc13853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6866:-484.751,210.022,355.912,0.000,108.386,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13854,
                alias = "Npc13854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6867:-484.053,210.022,354.803,0.000,25.242,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10257,
                alias = "Npc10257",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6866:-484.751,210.022,355.912,0.000,108.386,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10286,
                alias = "Npc10286",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6867:-484.053,210.022,354.803,0.000,25.242,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4013921"] = {},
    ["4013922"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7100:2014.929,282.017,1530.400]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2514,
                alias = "Npc2514",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7859:2003.557,280.369,1606.611,0.000,332.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
