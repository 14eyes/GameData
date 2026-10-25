main_id = 40135
local tbl = {}
local n = 4013501
local v = 4013502
local n2 = 4013504
local n3 = 4013505
local n4 = 4013517
local n5 = 4013506
local n6 = 4013507
local n7 = 4013508
local n8 = 4013518
local n9 = 4013510
local n10 = 4013511
local n11 = 4013503
local n12 = 4013519
local n13 = 4013516
local n14 = 4013512
local n15 = 4013513
local n16 = 4013514
local n17 = 4013515
tbl[1] = 4013509
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"84"}, {"82"}, {"10013"}, {"10014"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133403789"
tbl3[2] = str
local tbl4 = {}
local str2 = "1"
tbl4[1] = "133403788"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133403793"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133403790"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM_V2 = {{}}
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl7 = {}
local str5 = "0"
tbl7[1] = "5059"
tbl7[2] = str5
local tbl8 = {}
local str6 = "0"
tbl8[1] = "5060"
tbl8[2] = str6
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl7
qUEST_EXEC_SET_WEATHER_GADGET[2] = tbl8
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4013501"] = {},
    ["4013502"] = {},
    ["4013503"] = {},
    ["4013504"] = {},
    ["4013505"] = {},
    ["4013506"] = {
        npcs = {
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300294:2204.603,439.926,4488.132,0.000,178.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300293:2186.056,439.952,4479.744,0.000,294.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4013507"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300289:2196.205,441.950,4506.582,0.000,259.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300296:2190.659,440.212,4488.608,0.000,217.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300297:2189.206,440.243,4488.156,0.000,94.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300294:2204.603,439.926,4488.132,0.000,178.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300293:2186.056,439.952,4479.744,0.000,294.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300290:2197.479,440.297,4494.520,0.000,178.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300292:2195.056,441.649,4505.806,0.000,68.381,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300291:2190.269,440.069,4487.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4013509"] = {},
    ["4013510"] = {
        npcs = {
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300296:2190.659,440.212,4488.608,0.000,217.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300297:2189.206,440.243,4488.156,0.000,94.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300294:2204.603,439.926,4488.132,0.000,178.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300293:2186.056,439.952,4479.744,0.000,294.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300290:2197.479,440.297,4494.520,0.000,178.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300291:2190.269,440.069,4487.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30502,
                alias = "Npc30502",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300205:2200.532,456.775,4571.495,0.000,138.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4013511"] = {
        npcs = {
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300296:2190.659,440.212,4488.608,0.000,217.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300297:2189.206,440.243,4488.156,0.000,94.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300294:2204.603,439.926,4488.132,0.000,178.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300293:2186.056,439.952,4479.744,0.000,294.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300290:2197.479,440.297,4494.520,0.000,178.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4013513"] = {},
    ["4013514"] = {},
    ["4013515"] = {},
    ["4013517"] = {},
    ["4013508"] = {
        npcs = {
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300296:2190.659,440.212,4488.608,0.000,217.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300297:2189.206,440.243,4488.156,0.000,94.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300294:2204.603,439.926,4488.132,0.000,178.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300293:2186.056,439.952,4479.744,0.000,294.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300290:2197.479,440.297,4494.520,0.000,178.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300291:2190.269,440.069,4487.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    }
}

quest_data = {
    ["4013501"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100357:3500.906,426.623,4516.021]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100479:3500.804,426.682,4519.176,0.000,209.215,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100478:3501.440,426.658,4518.365,0.000,210.918,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100473:3502.736,426.623,4516.224,0.000,217.024,0.000]",
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
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100478:3501.440,426.658,4518.365,0.000,210.918,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340300281:2177.209,450.834,4547.721]"}}
    },
    ["4013502"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300352:2186.496,451.952,4549.643]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300356:2190.265,452.757,4556.041]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300281:2177.209,450.834,4547.721]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300354:2185.426,452.617,4554.481]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300353:2188.878,452.496,4552.045]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300282:2174.648,450.769,4549.626]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300355:2190.908,452.126,4550.128]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300357:2192.829,452.535,4552.311]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300358:2193.720,452.822,4554.605]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300353:2188.878,452.496,4552.045]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4013503"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300370:2333.860,440.505,4481.403,0.000,207.864,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013504"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300289:2196.205,441.950,4506.582,0.000,259.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300296:2190.659,440.212,4488.608,0.000,217.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300297:2189.206,440.243,4488.156,0.000,94.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300294:2204.603,439.926,4488.132,0.000,178.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300293:2186.056,439.952,4479.744,0.000,294.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300290:2197.479,440.297,4494.520,0.000,178.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300292:2195.056,441.649,4505.806,0.000,68.381,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300291:2190.269,440.069,4487.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4013505"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300289:2196.205,441.950,4506.582,0.000,259.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300296:2190.659,440.212,4488.608,0.000,217.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300297:2189.206,440.243,4488.156,0.000,94.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300294:2204.603,439.926,4488.132,0.000,178.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300293:2186.056,439.952,4479.744,0.000,294.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300290:2197.479,440.297,4494.520,0.000,178.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300292:2195.056,441.649,4505.806,0.000,68.381,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300291:2190.269,440.069,4487.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4013506"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300289:2196.205,441.950,4506.582,0.000,259.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300296:2190.659,440.212,4488.608,0.000,217.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300297:2189.206,440.243,4488.156,0.000,94.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300290:2197.479,440.297,4494.520,0.000,178.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300292:2195.056,441.649,4505.806,0.000,68.381,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300291:2190.269,440.069,4487.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4013507"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1088_4:42.917,0.191,4.309,0.000,87.011,0.000]",
                scene_id = 1088,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013508"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1088_4:42.917,0.191,4.309,0.000,87.011,0.000]",
                scene_id = 1088,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300289:2196.205,441.950,4506.582,0.000,259.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300292:2195.056,441.649,4505.806,0.000,68.381,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30502,
                alias = "Npc30502",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300205:2200.532,456.775,4571.495,0.000,138.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1088, pos = "[1088_1:15.192,0.191,2.343]"}}
    },
    ["4013509"] = {},
    ["4013510"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1088_4:42.917,0.191,4.309,0.000,87.011,0.000]",
                scene_id = 1088,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[1088_3:13.815,0.191,4.380,0.000,96.497,0.000]",
                scene_id = 1088,
                room_id = 1,
                data_index = 2
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[1088_6:46.095,0.191,4.320,0.000,273.837,0.000]",
                scene_id = 1088,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_340300298:2196.741,440.298,4492.938,0.000,61.687,0.000]"},
            {point_id = 2, scene_id = 1088, pos = "[1088_1:15.192,0.191,2.343]"}
        }
    },
    ["4013511"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300363:2198.267,440.300,4492.759]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300289:2196.205,441.950,4506.582,0.000,259.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300292:2195.056,441.649,4505.806,0.000,68.381,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300291:2190.269,440.069,4487.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340300370:2333.860,440.505,4481.403,0.000,207.864,0.000]"}}
    },
    ["4013512"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300370:2333.860,440.505,4481.403,0.000,207.864,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013513"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300299:2409.923,448.125,4385.382,0.000,301.446,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013514"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300371:2433.407,447.709,4376.170,0.000,163.936,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013515"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300302:2443.337,454.518,4342.530,0.000,180.891,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013516"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300370:2333.860,440.505,4481.403,0.000,207.864,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013517"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300289:2196.205,441.950,4506.582,0.000,259.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30435,
                alias = "Npc30435",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300296:2190.659,440.212,4488.608,0.000,217.375,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300297:2189.206,440.243,4488.156,0.000,94.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300294:2204.603,439.926,4488.132,0.000,178.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300293:2186.056,439.952,4479.744,0.000,294.405,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300290:2197.479,440.297,4494.520,0.000,178.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30438,
                alias = "Npc30438",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300292:2195.056,441.649,4505.806,0.000,68.381,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300291:2190.269,440.069,4487.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300295:2203.820,439.996,4488.102,0.000,162.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["4013518"] = {},
    ["4013519"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300370:2333.860,440.505,4481.403,0.000,207.864,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
