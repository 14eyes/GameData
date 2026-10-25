main_id = 40134
local tbl = {}
local n = 4013401
local v = 4013402
local n2 = 4013406
local n3 = 4013413
local n4 = 4013412
local n5 = 4013403
local n6 = 4013410
local n7 = 4013407
local n8 = 4013414
local n9 = 4013408
local n10 = 4013409
local n11 = 4013404
local n12 = 4013411
tbl[1] = 4013405
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"82"}, {"83"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "133402887"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133402888"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133403790"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM_V2 = {{}}
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl6 = {}
local str4 = "0"
tbl6[1] = "5060"
tbl6[2] = str4
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl6
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4013401"] = {},
    ["4013402"] = {},
    ["4013403"] = {},
    ["4013404"] = {},
    ["4013405"] = {},
    ["4013407"] = {},
    ["4013408"] = {},
    ["4013409"] = {},
    ["4013410"] = {}
}

quest_data = {
    ["4013401"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100358:3500.043,426.623,4514.220]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100478:3501.440,426.658,4518.365,0.000,210.918,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100472:3503.660,426.623,4515.271,0.000,220.355,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100477:3501.844,426.675,4517.354,0.000,221.911,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100480:3505.094,426.658,4514.583,0.000,229.720,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5104,
                alias = "Npc5104",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5105,
                alias = "Npc5105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5111,
                alias = "Npc5111",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5112,
                alias = "Npc5112",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 5113,
                alias = "Npc5113",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 5114,
                alias = "Npc5114",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 5106,
                alias = "Npc5106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 5118,
                alias = "Npc5118",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 5119,
                alias = "Npc5119",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100478:3501.440,426.658,4518.365,0.000,210.918,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340200137:3473.424,459.354,3661.147]"}}
    },
    ["4013402"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200128:3471.476,459.346,3659.482]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200139:3474.044,459.525,3658.557]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200140:3476.728,459.577,3660.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200149:3470.921,459.132,3665.167,0.000,162.294,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200147:3470.433,459.144,3663.889,0.000,135.973,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30447,
                alias = "Npc30447",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5104,
                alias = "Npc5104",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5105,
                alias = "Npc5105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5111,
                alias = "Npc5111",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 5112,
                alias = "Npc5112",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 5113,
                alias = "Npc5113",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 5114,
                alias = "Npc5114",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 5106,
                alias = "Npc5106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 5118,
                alias = "Npc5118",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 5119,
                alias = "Npc5119",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200139:3474.044,459.525,3658.557]",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            }
        }
    },
    ["4013403"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200128:3471.476,459.346,3659.482]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200139:3474.044,459.525,3658.557]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200140:3476.728,459.577,3660.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200149:3470.921,459.132,3665.167,0.000,162.294,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200147:3470.433,459.144,3663.889,0.000,135.973,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30447,
                alias = "Npc30447",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5104,
                alias = "Npc5104",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5105,
                alias = "Npc5105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5111,
                alias = "Npc5111",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 5112,
                alias = "Npc5112",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 5113,
                alias = "Npc5113",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 5114,
                alias = "Npc5114",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 5106,
                alias = "Npc5106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 5118,
                alias = "Npc5118",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 5119,
                alias = "Npc5119",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200139:3474.044,459.525,3658.557]",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            }
        }
    },
    ["4013404"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300203:2399.316,462.329,4297.444]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013405"] = {},
    ["4013406"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200128:3471.476,459.346,3659.482]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200139:3474.044,459.525,3658.557]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200153:3481.296,460.510,3649.168,0.000,325.734,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200149:3470.921,459.132,3665.167,0.000,162.294,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200158:3486.088,460.495,3654.547,0.000,296.302,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30447,
                alias = "Npc30447",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5104,
                alias = "Npc5104",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5105,
                alias = "Npc5105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5111,
                alias = "Npc5111",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 5112,
                alias = "Npc5112",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 5113,
                alias = "Npc5113",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 5114,
                alias = "Npc5114",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 5106,
                alias = "Npc5106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 5118,
                alias = "Npc5118",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 5119,
                alias = "Npc5119",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200154:3476.174,459.128,3669.598,0.000,188.391,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200139:3474.044,459.525,3658.557]",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            }
        }
    },
    ["4013407"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300283:2490.746,496.809,4242.225,0.000,315.343,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 35928, pos = "[35928_1:2490.262,497.786,4239.626,0.000,309.994,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 9215, pos = "[35928_1:2490.262,497.786,4239.626,0.000,309.994,0.000]"}}
    },
    ["4013408"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300283:2490.746,496.809,4242.225,0.000,315.343,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340300284:2491.712,497.371,4240.678]"}}
    },
    ["4013409"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300283:2490.746,496.809,4242.225,0.000,315.343,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013410"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300335:2594.339,507.453,4154.598]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013411"] = {},
    ["4013412"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340200152:3480.284,460.509,3648.783,0.000,329.569,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200151:3479.659,460.570,3647.238,0.000,331.308,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013413"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340200152:3480.284,460.509,3648.783,0.000,329.569,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200151:3479.659,460.570,3647.238,0.000,331.308,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013414"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300283:2490.746,496.809,4242.225,0.000,315.343,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
