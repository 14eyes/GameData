main_id = 40126
local tbl = {}
local n = 4012602
local v = 4012603
local n2 = 4012611
local n3 = 4012612
local n4 = 4012613
local n5 = 4012614
local n6 = 4012615
local n7 = 4012605
local n8 = 4012616
local n9 = 4012606
local n10 = 4012607
local n11 = 4012608
local n12 = 4012609
local n13 = 4012610
tbl[1] = 4012601
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133101065,133102276"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "3503"
tbl4[2] = str2
local tbl5 = {}
local str3 = "0"
tbl5[1] = "3505"
tbl5[2] = str3
local tbl6 = {}
local str4 = "0"
tbl6[1] = "3506"
tbl6[2] = str4
local tbl7 = {}
local str5 = "0"
tbl7[1] = "3504"
tbl7[2] = str5
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl4
qUEST_EXEC_SET_WEATHER_GADGET[2] = tbl5
qUEST_EXEC_SET_WEATHER_GADGET[3] = tbl6
qUEST_EXEC_SET_WEATHER_GADGET[4] = tbl7
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4012601"] = {},
    ["4012602"] = {},
    ["4012603"] = {},
    ["4012605"] = {},
    ["4012606"] = {
        npcs = {
            {
                id = 13431,
                alias = "Npc13431",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100117:1589.786,200.704,1121.123]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012607"] = {},
    ["4012608"] = {},
    ["4012609"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201048:1805.267,234.675,-872.749,0.000,146.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012610"] = {},
    ["4012611"] = {},
    ["4012612"] = {},
    ["4012613"] = {},
    ["4012614"] = {},
    ["4012615"] = {}
}

quest_data = {
    ["4012601"] = {},
    ["4012602"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200714:1560.621,218.756,253.989,0.000,29.830,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200716:1560.570,218.756,256.042,0.000,174.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200715:1561.603,218.756,254.653,0.000,263.410,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200716:1560.570,218.756,256.042,0.000,174.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012603"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200641:1433.590,201.731,372.388,0.000,240.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012605"] = {
        npcs = {
            {
                id = 13431,
                alias = "Npc13431",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100117:1589.786,200.704,1121.123]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012606"] = {},
    ["4012607"] = {
        npcs = {
            {
                id = 13431,
                alias = "Npc13431",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201048:1805.267,234.675,-872.749,0.000,146.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201046:1806.503,234.668,-872.715,0.000,198.950,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4012608"] = {
        npcs = {
            {
                id = 13431,
                alias = "Npc13431",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201048:1805.267,234.675,-872.749,0.000,146.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1650,
                alias = "Npc1650",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310100123:1962.539,212.563,-895.546,0.000,273.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201046:1806.503,234.668,-872.715,0.000,198.950,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4111118Fischl"}}
    },
    ["4012609"] = {
        npcs = {
            {
                id = 13431,
                alias = "Npc13431",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1650,
                alias = "Npc1650",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310100123:1962.539,212.563,-895.546,0.000,273.550,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201046:1806.503,234.668,-872.715,0.000,198.950,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201044:1806.046,234.767,-874.216]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4012610"] = {
        npcs = {
            {
                id = 1650,
                alias = "Npc1650",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_300201047:1804.325,234.906,-878.382,0.000,197.590,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "[3_310200633:1563.567,219.195,260.315,0.000,213.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012611"] = {
        npcs = {
            {
                id = 13493,
                alias = "Npc13493",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200649:1368.674,200.000,325.406,0.000,296.630,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012612"] = {
        npcs = {
            {
                id = 13493,
                alias = "Npc13493",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200650:1288.778,200.000,297.030,0.000,279.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012613"] = {
        npcs = {
            {
                id = 13493,
                alias = "Npc13493",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200651:1180.714,200.000,253.074,0.000,288.810,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012614"] = {
        npcs = {
            {
                id = 13604,
                alias = "Npc13604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200652:1153.109,200.400,239.293,0.000,166.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012615"] = {},
    ["4012616"] = {
        npcs = {
            {
                id = 13431,
                alias = "Npc13431",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100117:1589.786,200.704,1121.123]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
