main_id = 40141
local tbl = {}
local n = 4014102
local v = 4014103
local n2 = 4014104
local n3 = 4014107
local n4 = 4014105
local n5 = 4014106
local n6 = 4014108
local n7 = 4014109
local n8 = 4014110
local n9 = 4014112
local n10 = 4014113
local n11 = 4014111
local n12 = 4014114
tbl[1] = 4014101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133114130"
tbl3[2] = str
local tbl4 = {}
local str2 = "1"
tbl4[1] = "133104838"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133104841"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl6 = {}
local str4 = "0"
tbl6[1] = "3508"
tbl6[2] = str4
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl6
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4014101"] = {},
    ["4014102"] = {},
    ["4014103"] = {},
    ["4014104"] = {},
    ["4014105"] = {},
    ["4014106"] = {},
    ["4014107"] = {},
    ["4014108"] = {},
    ["4014109"] = {},
    ["4014110"] = {},
    ["4014111"] = {},
    ["4014112"] = {
        npcs = {
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7880:-492.331,210.022,361.329,0.000,246.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7881:-494.009,210.022,360.769,0.000,66.328,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014113"] = {}
}

quest_data = {
    ["4014101"] = {},
    ["4014102"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6925:-548.621,210.219,301.361,0.000,183.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_7910:2213.265,287.796,1528.409,0.000,68.728,0.000]"}}
    },
    ["4014103"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6925:-548.621,210.219,301.361,0.000,183.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4014104"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6925:-548.621,210.219,301.361,0.000,183.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6928:2257.491,295.631,1497.928,0.000,160.796,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014105"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6929:743.994,202.769,302.079]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6928:2257.491,295.631,1497.928,0.000,160.796,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014106"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6929:743.994,202.769,302.079]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6928:2257.491,295.631,1497.928,0.000,160.796,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6933:599.784,202.007,345.913]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4014107"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6925:-548.621,210.219,301.361,0.000,183.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6928:2257.491,295.631,1497.928,0.000,160.796,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014108"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7322:603.585,201.924,342.801,0.000,306.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6932:600.907,201.901,343.997,0.000,95.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7321:652.987,200.567,304.207,0.000,327.587,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4014109"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7322:603.585,201.924,342.801,0.000,306.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6932:600.907,201.901,343.997,0.000,95.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6934:-454.345,209.153,353.385,0.000,119.931,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7323:601.744,202.048,348.349,0.000,265.060,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7324:599.881,202.101,348.339,0.000,88.002,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7323:601.744,202.048,348.349,0.000,265.060,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4014110"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7322:603.585,201.924,342.801,0.000,306.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7880:-492.331,210.022,361.329,0.000,246.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7881:-494.009,210.022,360.769,0.000,66.328,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7325:-415.173,216.726,341.875,0.000,298.841,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7325:-415.173,216.726,341.875,0.000,298.841,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4014111"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6936:-415.641,216.731,344.598,0.000,299.561,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6937:-415.694,216.730,346.184,0.000,223.642,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13891,
                alias = "Npc13891",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7328:-417.100,216.693,344.980,0.000,50.487,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4014112"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7322:603.585,201.924,342.801,0.000,306.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30474,
                alias = "Npc30474",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7894:-501.185,209.810,333.048,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014113"] = {
        npcs = {
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7322:603.585,201.924,342.801,0.000,306.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13860,
                alias = "Npc13860",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7880:-492.331,210.022,361.329,0.000,246.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13900,
                alias = "Npc13900",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7327:-462.914,209.120,344.998,0.000,301.127,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4014114"] = {}
}
