main_id = 5029
local tbl = {}
local n = 502902
local v = 502903
local n2 = 502908
local n3 = 502904
local n4 = 502905
local n5 = 502906
local n6 = 502907
local n7 = 502909
local n8 = 502910
local n9 = 502911
local n10 = 502912
local n11 = 502913
local n12 = 502920
local n13 = 502914
local n14 = 502921
local n15 = 502940
tbl[1] = 502901
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["502901"] = {},
    ["502902"] = {},
    ["502903"] = {},
    ["502904"] = {
        npcs = {
            {
                id = 6028,
                alias = "Npc6028",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_32:-1877.646,60.377,9004.729,0.000,336.971,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["502905"] = {
        npcs = {
            {
                id = 14772,
                alias = "Npc14772",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_35:-1865.654,60.377,9009.848,0.000,237.545,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["502906"] = {
        npcs = {
            {
                id = 14772,
                alias = "Npc14772",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_35:-1865.654,60.377,9009.848,0.000,237.545,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14778,
                alias = "Npc14778",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_42:-1897.039,60.377,8995.546,0.000,68.921,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_49:-1898.810,60.380,9001.680,0.000,152.440,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_48:-1899.260,60.380,9000.980,0.000,110.000,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["502907"] = {},
    ["502908"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_31:-1905.854,53.180,9069.320,0.000,283.169,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["502909"] = {},
    ["502910"] = {},
    ["502911"] = {},
    ["502912"] = {},
    ["502913"] = {},
    ["502914"] = {},
    ["502920"] = {},
    ["502921"] = {},
    ["502940"] = {}
}

quest_data = {
    ["502901"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_13:-1872.903,52.633,9069.533]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20243, pos = "[20243_22:-1913.582,52.422,9081.987,0.000,157.092,0.000]"},
            {point_id = 2, scene_id = 20243, pos = "[20243_11:-1872.128,52.633,9071.932,0.000,244.143,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1227, pos = "[20243_11:-1872.128,52.633,9071.932,0.000,244.143,0.000]"}
        }
    },
    ["502902"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_30:-1912.501,52.422,9082.449,0.000,190.890,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20243, pos = "[20243_22:-1913.582,52.422,9081.987,0.000,157.092,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1227, pos = "[20243_22:-1913.582,52.422,9081.987,0.000,157.092,0.000]"}
        }
    },
    ["502903"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_31:-1905.854,53.180,9069.320,0.000,283.169,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1227, pos = "[20243_22:-1913.582,52.422,9081.987,0.000,157.092,0.000]"}
        }
    },
    ["502904"] = {
        npcs = {
            {
                id = 14772,
                alias = "Npc14772",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_35:-1865.654,60.377,9009.848,0.000,237.545,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14778,
                alias = "Npc14778",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_42:-1897.039,60.377,8995.546,0.000,68.921,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1227, pos = "[20243_33:-1878.679,60.377,9006.804,0.000,152.959,0.000]"}
        }
    },
    ["502905"] = {
        npcs = {
            {
                id = 6028,
                alias = "Npc6028",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_32:-1877.646,60.377,9004.729,0.000,336.971,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14778,
                alias = "Npc14778",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_42:-1897.039,60.377,8995.546,0.000,68.921,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_49:-1898.810,60.380,9001.680,0.000,152.440,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_48:-1899.260,60.380,9000.980,0.000,110.000,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1227, pos = "[20243_33:-1878.679,60.377,9006.804,0.000,152.959,0.000]"}
        }
    },
    ["502906"] = {
        npcs = {
            {
                id = 6028,
                alias = "Npc6028",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_32:-1877.646,60.377,9004.729,0.000,336.971,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14803,
                alias = "Npc14803",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_52:-1879.982,60.377,8998.292,0.000,303.998,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14804,
                alias = "Npc14804",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_53:-1879.656,60.377,8995.892,0.000,286.537,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1227, pos = "[20243_54:-1882.805,60.377,8999.539,0.000,106.004,0.000]"}
        }
    },
    ["502907"] = {
        npcs = {
            {
                id = 6028,
                alias = "Npc6028",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_56:-1863.089,59.205,8967.915,0.000,349.758,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14784,
                alias = "Npc14784",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_50:-1862.202,59.205,8977.799,0.000,236.378,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14785,
                alias = "Npc14785",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_51:-1866.591,59.205,8975.637,0.000,66.019,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350800006:-127.194,557.292,9990.491,0.000,330.085,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1227, pos = "[20243_54:-1882.805,60.377,8999.539,0.000,106.004,0.000]"},
            {point_id = 2, dungeon_id = 1232, pos = "[20250_1:-143.598,556.908,10007.300,0.000,318.807,0.000]"}
        }
    },
    ["502908"] = {
        npcs = {
            {
                id = 6028,
                alias = "Npc6028",
                script = "Actor/Npc/TempNPC",
                pos = "[20243_32:-1877.646,60.377,9004.729,0.000,336.971,0.000]",
                scene_id = 20243,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1227, pos = "[20243_60:-1908.957,52.436,9072.103,0.000,156.148,0.000]"}
        }
    },
    ["502909"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[20250_2:-193.539,572.360,10025.060,0.000,140.116,0.000]",
                scene_id = 20250,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14762,
                alias = "Npc14762",
                script = "Actor/Npc/TempNPC",
                pos = "[20250_1:-143.598,556.908,10007.300,0.000,318.807,0.000]",
                scene_id = 20250,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["502910"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[20250_2:-193.539,572.360,10025.060,0.000,140.116,0.000]",
                scene_id = 20250,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1095, pos = "[1095_77:39.793,1.640,-2.143]"}}
    },
    ["502911"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_76:41.038,1.737,-2.951]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350900184:-1798.219,151.560,9498.250,0.000,230.535,0.000]"}}
    },
    ["502912"] = {},
    ["502913"] = {},
    ["502914"] = {},
    ["502920"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900052:-1925.966,150.184,9487.311,0.000,129.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900059:-1897.931,149.958,9473.502,0.000,164.227,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900050:-1909.046,150.428,9483.493,0.000,266.497,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900051:-1910.134,150.357,9483.447,0.000,88.971,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900055:-1902.821,150.901,9489.714,0.000,328.548,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900054:-1903.487,150.913,9490.712,0.000,150.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1091,
                alias = "Npc1091",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900056:-1917.726,151.340,9500.418,0.000,188.572,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900053:-1930.453,149.473,9471.634,0.000,282.273,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900057:-1948.032,150.806,9471.849,0.000,319.959,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900058:-1920.030,149.638,9469.876,0.000,176.541,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 14398,
                alias = "Npc14398",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900060:-1949.218,150.806,9488.210,0.000,210.464,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 14797,
                alias = "Npc14797",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900061:-1947.537,150.806,9486.611,0.000,233.793,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 14798,
                alias = "Npc14798",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900062:-1936.079,149.424,9472.090,0.000,300.544,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 14947,
                alias = "Npc14947",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900150:-1930.873,149.400,9470.534,0.000,296.094,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 14998,
                alias = "Npc14998",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900151:-1940.397,149.391,9479.825,0.000,85.872,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            }
        }
    },
    ["502921"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900052:-1925.966,150.184,9487.311,0.000,129.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900059:-1897.931,149.958,9473.502,0.000,164.227,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900050:-1909.046,150.428,9483.493,0.000,266.497,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900051:-1910.134,150.357,9483.447,0.000,88.971,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1086,
                alias = "Npc1086",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900055:-1902.821,150.901,9489.714,0.000,328.548,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900054:-1903.487,150.913,9490.712,0.000,150.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1091,
                alias = "Npc1091",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900056:-1917.726,151.340,9500.418,0.000,188.572,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900053:-1930.453,149.473,9471.634,0.000,282.273,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900057:-1948.032,150.806,9471.849,0.000,319.959,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900058:-1920.030,149.638,9469.876,0.000,176.541,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 14398,
                alias = "Npc14398",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900060:-1949.218,150.806,9488.210,0.000,210.464,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 14797,
                alias = "Npc14797",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900061:-1947.537,150.806,9486.611,0.000,233.793,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 14798,
                alias = "Npc14798",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900062:-1936.079,149.424,9472.090,0.000,300.544,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 14947,
                alias = "Npc14947",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900150:-1930.873,149.400,9470.534,0.000,296.094,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 14998,
                alias = "Npc14998",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350900151:-1940.397,149.391,9479.825,0.000,85.872,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350100355:-1895.991,60.377,8997.115,0.000,162.794,0.000]"}}
    },
    ["502940"] = {
        npcs = {
            {
                id = 14804,
                alias = "Npc14804",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100354:-1894.483,60.377,8994.970,0.000,357.274,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
