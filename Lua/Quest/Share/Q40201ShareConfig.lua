main_id = 40201
local tbl = {}
local n = 4020102
local v = 4020109
local n2 = 4020104
local n3 = 4020105
local n4 = 4020111
local n5 = 4020103
local n6 = 4020110
local n7 = 4020106
local n8 = 4020108
local n9 = 4020107
tbl[1] = 4020101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133115269,133115270,133115214,133115266"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl4 = {}
local str2 = "1"
tbl4[1] = "121288"
tbl4[2] = str2
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl4
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4020101"] = {},
    ["4020102"] = {},
    ["4020103"] = {},
    ["4020105"] = {},
    ["4020107"] = {},
    ["4020108"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500214:2934.720,342.726,2644.463]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15402,
                alias = "Npc15402",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500259:2930.579,342.726,2650.523,0.000,135.921,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15403,
                alias = "Npc15403",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500262:2931.238,342.726,2650.033,0.000,305.527,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30819,
                alias = "Npc30819",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500236:2920.485,348.613,2641.948,0.000,222.195,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30820,
                alias = "Npc30820",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500237:2921.195,348.612,2640.793,0.000,257.192,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 15585,
                alias = "Npc15585",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500281:2932.758,342.726,2647.170,0.000,253.858,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 15586,
                alias = "Npc15586",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500282:2904.089,346.307,2638.222,0.000,310.620,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 15587,
                alias = "Npc15587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500279:2928.930,342.726,2637.391,0.000,153.113,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 15588,
                alias = "Npc15588",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500280:2930.500,342.726,2638.174,0.000,177.268,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4020109"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500211:2530.866,344.912,2392.933,0.000,152.480,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020110"] = {}
}

quest_data = {
    ["4020101"] = {},
    ["4020102"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500211:2530.866,344.912,2392.933,0.000,152.480,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15402,
                alias = "Npc15402",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500275:2526.681,344.927,2317.338,0.000,349.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15403,
                alias = "Npc15403",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500276:2532.364,344.976,2314.155,0.000,114.597,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4020103"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500214:2934.720,342.726,2644.463]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15402,
                alias = "Npc15402",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500259:2930.579,342.726,2650.523,0.000,135.921,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15403,
                alias = "Npc15403",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500262:2931.238,342.726,2650.033,0.000,305.527,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4020104"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500211:2530.866,344.912,2392.933,0.000,152.480,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_311500255:2533.632,344.912,2386.050,0.000,240.211,0.000]"}}
    },
    ["4020105"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500219:2532.488,344.912,2385.727,0.000,143.641,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15402,
                alias = "Npc15402",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500275:2526.681,344.927,2317.338,0.000,349.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15403,
                alias = "Npc15403",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500276:2532.364,344.976,2314.155,0.000,114.597,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_311500213:2941.399,344.297,2653.050]"}}
    },
    ["4020106"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500235:2919.494,348.613,2640.573,0.000,59.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15585,
                alias = "Npc15585",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500281:2932.758,342.726,2647.170,0.000,253.858,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15586,
                alias = "Npc15586",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500282:2904.089,346.307,2638.222,0.000,310.620,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15587,
                alias = "Npc15587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500279:2928.930,342.726,2637.391,0.000,153.113,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15588,
                alias = "Npc15588",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500280:2930.500,342.726,2638.174,0.000,177.268,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4020107"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_341200013:3190.647,441.276,2889.732,0.000,320.953,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020108"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_341200012:3189.345,441.276,2891.084,0.000,135.408,0.000]"}}
    },
    ["4020109"] = {
        npcs = {
            {
                id = 15402,
                alias = "Npc15402",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500275:2526.681,344.927,2317.338,0.000,349.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15403,
                alias = "Npc15403",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500276:2532.364,344.976,2314.155,0.000,114.597,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_311500215:2536.354,344.862,2368.860,0.000,174.489,0.000]"}}
    },
    ["4020110"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500235:2919.494,348.613,2640.573,0.000,59.843,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15402,
                alias = "Npc15402",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500259:2930.579,342.726,2650.523,0.000,135.921,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15403,
                alias = "Npc15403",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500262:2931.238,342.726,2650.033,0.000,305.527,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30819,
                alias = "Npc30819",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500236:2920.485,348.613,2641.948,0.000,222.195,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30820,
                alias = "Npc30820",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500237:2921.195,348.612,2640.793,0.000,257.192,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 15585,
                alias = "Npc15585",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500281:2932.758,342.726,2647.170,0.000,253.858,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 15586,
                alias = "Npc15586",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500282:2904.089,346.307,2638.222,0.000,310.620,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 15587,
                alias = "Npc15587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500279:2928.930,342.726,2637.391,0.000,153.113,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 15588,
                alias = "Npc15588",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500280:2930.500,342.726,2638.174,0.000,177.268,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 15421,
                alias = "Npc15421",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500213:2941.399,344.297,2653.050]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4020111"] = {
        npcs = {
            {
                id = 15402,
                alias = "Npc15402",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500259:2930.579,342.726,2650.523,0.000,135.921,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15403,
                alias = "Npc15403",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500262:2931.238,342.726,2650.033,0.000,305.527,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
