main_id = 40195
local tbl = {}
local n = 4019502
local v = 4019503
local n2 = 4019504
local n3 = 4019514
local n4 = 4019515
local n5 = 4019505
local n6 = 4019506
local n7 = 4019507
local n8 = 4019508
local n9 = 4019509
local n10 = 4019510
local n11 = 4019511
local n12 = 4019513
local n13 = 4019512
tbl[1] = 4019501
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"135"}, {"136"}}, QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "201083010,201083011"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133405118,133401069,133401837"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
tbl2.SERVER = server
cancel_action = tbl2

local tbl5 = {
    ["4019501"] = {},
    ["4019502"] = {},
    ["4019503"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_103:-46.780,0.352,-14.500,0.000,252.906,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_102:-46.247,0.352,-15.217,0.000,264.780,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4019506"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_103:-46.780,0.352,-14.500,0.000,252.906,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_102:-46.247,0.352,-15.217,0.000,264.780,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4019507"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_92:-47.388,0.352,-15.343,0.000,263.550,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4019508"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_92:-47.388,0.352,-15.343,0.000,263.550,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4019509"] = {}
}

local tbl6 = {}
local quest_var = {}
local n14 = 1
local n15 = 0
local n16 = 0
local n17 = 0
quest_var[1] = 0
quest_var[2] = n14
quest_var[3] = n15
quest_var[4] = n16
quest_var[5] = n17
tbl6.quest_var = quest_var
tbl5["4019510"] = tbl6
tbl5["4019513"] = {}

tbl5["4019504"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        },
        {
            id = 1078,
            alias = "Npc1078",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_103:-46.780,0.352,-14.500,0.000,252.906,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 2
        },
        {
            id = 14977,
            alias = "Npc14977",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_102:-46.247,0.352,-15.217,0.000,264.780,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 3
        }
    }
}

rewind_data = tbl5

quest_data = {
    ["4019501"] = {},
    ["4019502"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_103:-46.780,0.352,-14.500,0.000,252.906,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_91:-46.451,0.352,-15.993,0.000,292.770,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 3
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_102:-46.247,0.352,-15.217,0.000,264.780,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5133,
                alias = "Npc5133",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 5098,
                alias = "Npc5098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340500115:1626.694,282.118,5039.704,0.000,64.509,0.000]"}}
    },
    ["4019503"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5133,
                alias = "Npc5133",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 5098,
                alias = "Npc5098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 15254,
                alias = "Npc15254",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500116:1634.271,282.118,5039.146,0.000,275.542,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 15255,
                alias = "Npc15255",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15308_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 15256,
                alias = "Npc15256",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15309_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 15252,
                alias = "Npc15252",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500119:1611.170,281.428,5041.813,0.000,120.820,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 15336,
                alias = "Npc15336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500131:1609.637,281.429,5046.105,0.000,161.424,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 15337,
                alias = "Npc15337",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500132:1610.033,281.429,5044.988,0.000,346.583,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 15339,
                alias = "Npc15339",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500133:1634.816,280.920,5048.826,0.000,84.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            }
        }
    },
    ["4019504"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5133,
                alias = "Npc5133",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 5098,
                alias = "Npc5098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 15252,
                alias = "Npc15252",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500119:1611.170,281.428,5041.813,0.000,120.820,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 15336,
                alias = "Npc15336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500131:1609.637,281.429,5046.105,0.000,161.424,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 15337,
                alias = "Npc15337",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500132:1610.033,281.429,5044.988,0.000,346.583,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 15339,
                alias = "Npc15339",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500133:1634.816,280.920,5048.826,0.000,84.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 15307,
                alias = "Npc15307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500116:1634.271,282.118,5039.146,0.000,275.542,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 15308,
                alias = "Npc15308",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15308_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 15309,
                alias = "Npc15309",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15309_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            },
            {
                id = 15254,
                alias = "Npc15254",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500116:1634.271,282.118,5039.146,0.000,275.542,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 18
            },
            {
                id = 15255,
                alias = "Npc15255",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15308_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 19
            },
            {
                id = 15256,
                alias = "Npc15256",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15309_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 20
            }
        }
    },
    ["4019505"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_103:-46.780,0.352,-14.500,0.000,252.906,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_102:-46.247,0.352,-15.217,0.000,264.780,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5133,
                alias = "Npc5133",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 5098,
                alias = "Npc5098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 15254,
                alias = "Npc15254",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500116:1634.271,282.118,5039.146,0.000,275.542,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 15255,
                alias = "Npc15255",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15308_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 15256,
                alias = "Npc15256",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15309_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 15252,
                alias = "Npc15252",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500119:1611.170,281.428,5041.813,0.000,120.820,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            },
            {
                id = 15336,
                alias = "Npc15336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500131:1609.637,281.429,5046.105,0.000,161.424,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 18
            },
            {
                id = 15337,
                alias = "Npc15337",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500132:1610.033,281.429,5044.988,0.000,346.583,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 19
            },
            {
                id = 15339,
                alias = "Npc15339",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500133:1634.816,280.920,5048.826,0.000,84.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 20
            }
        },
        transmit_points = {{point_id = 2, scene_id = 1083, pos = "[1083_92:-47.388,0.352,-15.343,0.000,263.550,0.000]"}}
    },
    ["4019506"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_91:-46.451,0.352,-15.993,0.000,292.770,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4019507"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100786:3444.396,454.922,4623.026,0.000,325.921,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4019508"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100786:3444.396,454.922,4623.026,0.000,325.921,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4019509"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_88:-51.861,0.352,-15.182,0.000,87.583,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_106:-49.430,0.352,-14.920,0.000,265.698,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_105:-49.540,0.352,-16.140,0.000,286.496,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 3
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_340100776:3605.584,506.574,4614.813,0.000,223.177,0.000]"}}
    },
    ["4019510"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_88:-51.861,0.352,-15.182,0.000,87.583,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_106:-49.430,0.352,-14.920,0.000,265.698,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_105:-49.540,0.352,-16.140,0.000,286.496,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 3
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100776:3605.584,506.574,4614.813,0.000,223.177,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4019511"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_88:-51.861,0.352,-15.182,0.000,87.583,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_106:-49.430,0.352,-14.920,0.000,265.698,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_105:-49.540,0.352,-16.140,0.000,286.496,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 3
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100776:3605.584,506.574,4614.813,0.000,223.177,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100777:3494.036,426.624,4484.588,0.000,356.617,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 15174,
                alias = "Npc15174",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100779:3494.257,426.624,4486.231,0.000,148.790,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            }
        },
        transmit_points = {{point_id = 4, scene_id = 1083, pos = "[1083_92:-47.388,0.352,-15.343,0.000,263.550,0.000]"}}
    },
    ["4019512"] = {},
    ["4019513"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_88:-51.861,0.352,-15.182,0.000,87.583,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_106:-49.430,0.352,-14.920,0.000,265.698,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_105:-49.540,0.352,-16.140,0.000,286.496,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4019514"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_103:-46.780,0.352,-14.500,0.000,252.906,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_102:-46.247,0.352,-15.217,0.000,264.780,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5133,
                alias = "Npc5133",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 5098,
                alias = "Npc5098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 15252,
                alias = "Npc15252",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500119:1611.170,281.428,5041.813,0.000,120.820,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 15336,
                alias = "Npc15336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500131:1609.637,281.429,5046.105,0.000,161.424,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 15337,
                alias = "Npc15337",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500132:1610.033,281.429,5044.988,0.000,346.583,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 15339,
                alias = "Npc15339",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500133:1634.816,280.920,5048.826,0.000,84.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            },
            {
                id = 15307,
                alias = "Npc15307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500116:1634.271,282.118,5039.146,0.000,275.542,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 18
            },
            {
                id = 15308,
                alias = "Npc15308",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15308_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 19
            },
            {
                id = 15309,
                alias = "Npc15309",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15309_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 20
            },
            {
                id = 15254,
                alias = "Npc15254",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500116:1634.271,282.118,5039.146,0.000,275.542,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 21
            },
            {
                id = 15255,
                alias = "Npc15255",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15308_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 22
            },
            {
                id = 15256,
                alias = "Npc15256",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15309_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 23
            }
        }
    },
    ["4019515"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_104:-48.494,0.352,-15.569,0.000,81.489,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_103:-46.780,0.352,-14.500,0.000,252.906,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14977,
                alias = "Npc14977",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_102:-46.247,0.352,-15.217,0.000,264.780,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5133,
                alias = "Npc5133",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5017,
                alias = "Npc5017",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100778:3494.440,426.623,4485.440,0.000,320.508,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5044,
                alias = "Npc5044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100771:3615.191,506.535,4607.042,0.000,204.259,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 14221,
                alias = "Npc14221",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100785:3444.070,454.922,4624.852,0.000,282.746,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100783:3442.721,454.922,4624.883,0.000,139.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1307,
                alias = "Npc1307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100784:3443.136,454.922,4623.593,0.000,348.627,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 5098,
                alias = "Npc5098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500114:1628.071,282.118,5040.339,0.000,251.056,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 15252,
                alias = "Npc15252",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500119:1611.170,281.428,5041.813,0.000,120.820,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 15336,
                alias = "Npc15336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500131:1609.637,281.429,5046.105,0.000,161.424,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 15337,
                alias = "Npc15337",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500132:1610.033,281.429,5044.988,0.000,346.583,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 15339,
                alias = "Npc15339",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500133:1634.816,280.920,5048.826,0.000,84.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            },
            {
                id = 15307,
                alias = "Npc15307",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500116:1634.271,282.118,5039.146,0.000,275.542,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 18
            },
            {
                id = 15308,
                alias = "Npc15308",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15308_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 19
            },
            {
                id = 15309,
                alias = "Npc15309",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15309_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 20
            },
            {
                id = 15254,
                alias = "Npc15254",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500116:1634.271,282.118,5039.146,0.000,275.542,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 21
            },
            {
                id = 15255,
                alias = "Npc15255",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15308_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 22
            },
            {
                id = 15256,
                alias = "Npc15256",
                script = "Actor/Npc/TempNPC",
                pos = "Q4019504_N15309_Route1",
                scene_id = 3,
                room_id = 0,
                data_index = 23
            }
        }
    }
}
