main_id = 19054
local tbl = {}
local n = 1905402
local v = 1905404
local n2 = 1905408
local n3 = 1905410
local n4 = 1905405
local n5 = 1905406
local n6 = 1905407
local n7 = 1905409
tbl[1] = 1905401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "133102174"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED = {{"0"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1905401"] = {},
    ["1905402"] = {},
    ["1905404"] = {},
    ["1905405"] = {},
    ["1905406"] = {
        gadgets = {
            {
                id = 70710561,
                alias = "Gadget70710561",
                pos = "COOP10240101BaoXiang02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905408"] = {},
    ["1905410"] = {}
}

quest_data = {
    ["1905401"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou17",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12223,
                alias = "Npc12223",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe03",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe04",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou17",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1905402"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou18",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12223,
                alias = "Npc12223",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaoFu01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12224,
                alias = "Npc12224",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaoFu02",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou18",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1905404"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou20",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12224,
                alias = "Npc12224",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaoFu02",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12225,
                alias = "Npc12225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101BaoXiangNPC01",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12226,
                alias = "Npc12226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101BaoXiangNPC02",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou20",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        },
        gadgets = {
            {
                id = 70710561,
                alias = "Gadget70710561",
                pos = "COOP10240101BaoXiang01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905405"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou21",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12224,
                alias = "Npc12224",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui04",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12225,
                alias = "Npc12225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui05",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12226,
                alias = "Npc12226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui06",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui02",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou21",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        },
        gadgets = {
            {
                id = 70710561,
                alias = "Gadget70710561",
                pos = "COOP10240101BaoXiang02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905406"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou21",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Free02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Free03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12224,
                alias = "Npc12224",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui04",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12225,
                alias = "Npc12225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui05",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12226,
                alias = "Npc12226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui06",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2306,
                alias = "Npc2306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Free01",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12422,
                alias = "Npc12422",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Cup01",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou21",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1905407"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou22",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Free02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Free03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12224,
                alias = "Npc12224",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui04",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12225,
                alias = "Npc12225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui05",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12226,
                alias = "Npc12226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui06",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12422,
                alias = "Npc12422",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Cup01",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou22",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        },
        gadgets = {
            {
                id = 70710561,
                alias = "Gadget70710561",
                pos = "COOP10240101BaoXiang02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905408"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou20",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12224,
                alias = "Npc12224",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaoFu02",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12225,
                alias = "Npc12225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101BaoXiangNPC01",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12226,
                alias = "Npc12226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101BaoXiangNPC02",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou20",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1905409"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou22",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Free02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Free03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12224,
                alias = "Npc12224",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui04",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12225,
                alias = "Npc12225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui05",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12226,
                alias = "Npc12226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHui06",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou22",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1905410"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou20",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12221,
                alias = "Npc12221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12222,
                alias = "Npc12222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101QingCe02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12224,
                alias = "Npc12224",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101DaoFu02",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12225,
                alias = "Npc12225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101BaoXiangNPC01",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12226,
                alias = "Npc12226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101BaoXiangNPC02",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou20",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    }
}
