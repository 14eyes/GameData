main_id = 40246
local tbl = {}
local n = 4024602
local v = 4024612
local n2 = 4024603
local n3 = 4024604
local n4 = 4024605
local n5 = 4024606
local n6 = 4024613
local n7 = 4024607
local n8 = 4024608
local n9 = 4024609
local n10 = 4024610
local n11 = 4024611
tbl[1] = 4024601
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

local server = {
    QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10549"}, {"10550"}, {"219"}, {"220"}},
    QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}},
    QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
}

local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
local str2 = ""
tbl3[1] = "133403820"
tbl3[2] = str
tbl3[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4024601"] = {},
    ["4024602"] = {},
    ["4024603"] = {},
    ["4024604"] = {},
    ["4024605"] = {},
    ["4024606"] = {},
    ["4024607"] = {},
    ["4024608"] = {},
    ["4024609"] = {},
    ["4024610"] = {},
    ["4024611"] = {},
    ["4024612"] = {}
}

quest_data = {
    ["4024601"] = {},
    ["4024602"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16573:3538.825,452.648,4179.689,0.000,239.452,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4024603"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_3:2640.596,258.213,3640.619,0.000,83.492,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_3:2640.596,258.213,3640.619,0.000,83.492,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024604"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_6:2640.728,258.213,3639.678,0.000,75.005,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_6:2640.728,258.213,3639.678,0.000,75.005,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024605"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_6:2640.728,258.213,3639.678,0.000,75.005,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 1,
                inWater = true
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_6:2640.728,258.213,3639.678,0.000,75.005,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 2,
                inWater = true
            }
        }
    },
    ["4024606"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_6:2640.728,258.213,3639.678,0.000,75.005,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_6:2640.728,258.213,3639.678,0.000,75.005,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024607"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_7:2652.556,253.937,3640.104,0.000,66.777,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_7:2652.556,253.937,3640.104,0.000,66.777,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_7:2652.556,253.937,3640.104,0.000,66.777,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024608"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_7:2652.556,253.937,3640.104,0.000,66.777,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_7:2652.556,253.937,3640.104,0.000,66.777,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_7:2652.556,253.937,3640.104,0.000,66.777,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024609"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_8:2644.990,253.937,3639.558,0.000,75.735,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31094,
                alias = "Npc31094",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_8:2644.990,253.937,3639.558,0.000,75.735,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_8:2644.990,253.937,3639.558,0.000,75.735,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024610"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_10:2986.686,440.082,3451.189,0.000,332.480,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20359_10:2986.686,440.082,3451.189,0.000,332.480,0.000]",
                scene_id = 20359,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20359, pos = "[20359_9:2987.930,440.063,3452.509,0.000,319.975,0.000]"}}
    },
    ["4024611"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16576:2199.471,444.882,4518.242]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16576:2199.471,444.882,4518.242]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_16570:2199.263,444.932,4519.449,0.000,171.763,0.000]"}}
    },
    ["4024612"] = {
        npcs = {
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_24:117.987,16.223,73.794,0.000,330.334,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1328, pos = "[20359_1:2717.990,291.409,3611.569]"}}
    },
    ["4024613"] = {}
}
