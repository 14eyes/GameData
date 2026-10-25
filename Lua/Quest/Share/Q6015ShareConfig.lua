main_id = 6015
local tbl = {}
local n = 601502
local v = 601514
local n2 = 601505
local n3 = 601506
local n4 = 601507
local n5 = 601504
local n6 = 601512
local n7 = 601513
local n8 = 601508
local n9 = 601509
local n10 = 601510
local n11 = 601518
local n12 = 601521
local n13 = 601520
local n14 = 601519
local n15 = 601503
local n16 = 601517
local n17 = 601511
local n18 = 601515
local n19 = 601516
tbl[1] = 601501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["601501"] = {},
    ["601502"] = {},
    ["601503"] = {
        npcs = {
            {
                id = 16183,
                alias = "Npc16183",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_19:760.941,0.706,748.208]",
                scene_id = 20323,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16184,
                alias = "Npc16184",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_3:764.563,2.595,756.390]",
                scene_id = 20323,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16185,
                alias = "Npc16185",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_18:768.583,0.341,746.114]",
                scene_id = 20323,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["601504"] = {},
    ["601505"] = {},
    ["601506"] = {},
    ["601507"] = {},
    ["601508"] = {},
    ["601509"] = {},
    ["601510"] = {},
    ["601511"] = {},
    ["601512"] = {},
    ["601513"] = {
        avatar = {offline_dungeon_id = 1291, scene_id = 20321, pos = "[20321_12:1677.129,236.029,9524.242]"}
    },
    ["601514"] = {},
    ["601515"] = {
        avatar = {
            offline_dungeon_id = 1291,
            scene_id = 20321,
            pos = "[20321_4:1630.833,238.252,9528.693,0.000,206.808,0.000]"
        }
    },
    ["601516"] = {
        avatar = {offline_dungeon_id = 1291, scene_id = 20321, pos = "[20321_33:1641.166,304.774,9538.604]"}
    },
    ["601517"] = {
        npcs = {
            {
                id = 16183,
                alias = "Npc16183",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_19:760.941,0.706,748.208]",
                scene_id = 20323,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16184,
                alias = "Npc16184",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_3:764.563,2.595,756.390]",
                scene_id = 20323,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16185,
                alias = "Npc16185",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_18:768.583,0.341,746.114]",
                scene_id = 20323,
                room_id = 0,
                data_index = 3
            }
        },
        avatar = {offline_dungeon_id = 1292, scene_id = 20323, pos = "[20323_15:763.005,0.029,740.837]"}
    },
    ["601518"] = {avatar = {offline_dungeon_id = 1292, scene_id = 20323, pos = "[20323_15:763.005,0.029,740.837]"}},
    ["601521"] = {avatar = {offline_dungeon_id = 1292, scene_id = 20323, pos = "[20323_15:763.005,0.029,740.837]"}}
}

quest_data = {
    ["601501"] = {},
    ["601502"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_75:-3.410,0.312,-50.703,0.000,188.609,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20321, pos = "[20321_73:2506.092,-413.310,10121.820,0.000,129.420,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1291,
                pos = "[20321_73:2506.092,-413.310,10121.820,0.000,129.420,0.000]"
            }
        }
    },
    ["601503"] = {transmit_points = {{point_id = 1, scene_id = 1205, pos = "[1205_76:-2.528,0.371,-29.452]"}}},
    ["601504"] = {
        npcs = {
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20321_76:1649.282,153.563,9477.715]",
                scene_id = 20321,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20321, pos = "[20321_76:1649.282,153.563,9477.715]"},
            {point_id = 2, scene_id = 20321, pos = "[20321_12:1677.129,236.029,9524.242]"}
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1291, pos = "[20321_76:1649.282,153.563,9477.715]"}}
    },
    ["601505"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20321_73:2506.092,-413.310,10121.820,0.000,129.420,0.000]",
                scene_id = 20321,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["601506"] = {
        npcs = {
            {
                id = 15387,
                alias = "Npc15387",
                script = "Actor/Npc/TempNPC",
                pos = "[20321_2:2587.604,-413.310,10060.170,0.000,229.067,0.000]",
                scene_id = 20321,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["601507"] = {
        npcs = {
            {
                id = 16182,
                alias = "Npc16182",
                script = "Actor/Npc/TempNPC",
                pos = "[20321_74:2490.085,-413.310,10038.950,0.000,4.409,0.000]",
                scene_id = 20321,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1205, pos = "[1205_76:-2.528,0.371,-29.452]"}},
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1291,
                pos = "[20321_75:2624.210,-413.310,10044.260,0.000,265.634,0.000]"
            }
        }
    },
    ["601508"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1292, pos = "[20323_1:738.178,1.343,657.288,0.000,77.989,0.000]"}}
    },
    ["601509"] = {
        npcs = {
            {
                id = 16183,
                alias = "Npc16183",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_6:734.903,1.448,657.585,0.000,59.962,0.000]",
                scene_id = 20323,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["601510"] = {
        npcs = {
            {
                id = 16183,
                alias = "Npc16183",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_17:764.497,0.008,738.194]",
                scene_id = 20323,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16184,
                alias = "Npc16184",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_8:764.409,0.119,742.928,359.618,282.223,2.167]",
                scene_id = 20323,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16185,
                alias = "Npc16185",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_7:762.958,0.116,743.139,359.548,105.439,1.408]",
                scene_id = 20323,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20321, pos = "[20321_12:1677.129,236.029,9524.242]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1291, pos = "[20321_12:1677.129,236.029,9524.242]"}}
    },
    ["601511"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1291, pos = "[20321_4:1630.833,238.252,9528.693,0.000,206.808,0.000]"}}
    },
    ["601512"] = {
        npcs = {
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "[20321_12:1677.129,236.029,9524.242]",
                scene_id = 20321,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20321, pos = "[20321_12:1677.129,236.029,9524.242]"}}
    },
    ["601513"] = {
        npcs = {
            {
                id = 16289,
                alias = "Npc16289",
                script = "Actor/Npc/TempNPC",
                pos = "[20321_77:1631.629,238.276,9530.902,0.000,151.785,0.000]",
                scene_id = 20321,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1291, pos = "[20321_12:1677.129,236.029,9524.242]"}}
    },
    ["601514"] = {
        transmit_points = {
            {point_id = 1, scene_id = 20321, pos = "[20321_73:2506.092,-413.310,10121.820,0.000,129.420,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1291,
                pos = "[20321_73:2506.092,-413.310,10121.820,0.000,129.420,0.000]"
            }
        }
    },
    ["601515"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[20321_4:1630.833,238.252,9528.693,0.000,206.808,0.000]",
                scene_id = 20321,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20321, pos = "[20321_33:1641.166,304.774,9538.604]"}}
    },
    ["601516"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[20321_33:1641.166,304.774,9538.604]",
                scene_id = 20321,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20321, pos = "[20321_4:1630.833,238.252,9528.693,0.000,206.808,0.000]"}}
    },
    ["601517"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1291, pos = "[20321_1:2032.794,288.331,9293.278]"}}
    },
    ["601518"] = {
        npcs = {
            {
                id = 16183,
                alias = "Npc16183",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_17:764.497,0.008,738.194]",
                scene_id = 20323,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16184,
                alias = "Npc16184",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_8:764.409,0.119,742.928,359.618,282.223,2.167]",
                scene_id = 20323,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16185,
                alias = "Npc16185",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_7:762.958,0.116,743.139,359.548,105.439,1.408]",
                scene_id = 20323,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["601519"] = {},
    ["601520"] = {},
    ["601521"] = {
        npcs = {
            {
                id = 16183,
                alias = "Npc16183",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_4:754.915,0.630,723.915,0.000,357.591,0.000]",
                scene_id = 20323,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16184,
                alias = "Npc16184",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_3:764.563,2.595,756.390]",
                scene_id = 20323,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16185,
                alias = "Npc16185",
                script = "Actor/Npc/TempNPC",
                pos = "[20323_5:777.923,0.248,743.878,0.000,318.226,0.000]",
                scene_id = 20323,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
