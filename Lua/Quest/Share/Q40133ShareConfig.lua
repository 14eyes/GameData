main_id = 40133
local tbl = {}
local n = 4013301
local v = 4013302
local n2 = 4013303
local n3 = 4013311
local n4 = 4013312
local n5 = 4013315
local n6 = 4013316
local n7 = 4013317
local n8 = 4013319
local n9 = 4013304
local n10 = 4013305
local n11 = 4013320
local n12 = 4013306
local n13 = 4013307
local n14 = 4013308
local n15 = 4013318
local n16 = 4013309
local n17 = 4013313
local n18 = 4013314
tbl[1] = 4013310
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "201084006"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "201084009"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133401802"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4013301"] = {},
    ["4013303"] = {},
    ["4013304"] = {},
    ["4013305"] = {},
    ["4013306"] = {},
    ["4013307"] = {},
    ["4013308"] = {},
    ["4013309"] = {},
    ["4013310"] = {},
    ["4013311"] = {},
    ["4013312"] = {},
    ["4013315"] = {
        npcs = {
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_46:11.851,7.518,15.823,0.000,214.266,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_45:11.012,7.518,16.217,0.000,175.395,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4013316"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_57:9.664,7.518,9.684,0.000,133.598,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_58:9.490,7.518,8.788,0.000,75.770,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_46:11.851,7.518,15.823,0.000,214.266,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_45:11.012,7.518,16.217,0.000,175.395,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_59:10.264,7.518,8.150,0.000,341.941,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_53:0.034,7.553,21.715,0.000,181.001,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4013317"] = {},
    ["4013318"] = {
        npcs = {
            {
                id = 30451,
                alias = "Npc30451",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100356:3401.076,292.023,4481.338,0.000,45.970,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013319"] = {},
    ["4013320"] = {}
}

quest_data = {
    ["4013301"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_29:5.658,7.535,16.996,0.000,279.598,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100422:3458.087,454.890,4632.354,0.000,40.995,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100421:3458.680,454.922,4633.108,0.000,227.315,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_30:5.596,7.535,15.618,0.000,277.451,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_33:8.485,7.518,14.007,0.000,299.147,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            },
            {
                id = 5089,
                alias = "Npc5089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 7
            },
            {
                id = 5092,
                alias = "Npc5092",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 8
            },
            {
                id = 5093,
                alias = "Npc5093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100421:3458.680,454.922,4633.108,0.000,227.315,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340200136:3373.403,424.644,4035.458,0.000,309.075,0.000]"}}
    },
    ["4013302"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_29:5.658,7.535,16.996,0.000,279.598,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200134:3373.407,424.791,4034.765,0.000,296.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2,
                inWater = true
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200135:3372.849,424.763,4033.775,0.000,313.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_30:5.596,7.535,15.618,0.000,277.451,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_33:8.485,7.518,14.007,0.000,299.147,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            },
            {
                id = 5089,
                alias = "Npc5089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 7
            },
            {
                id = 5092,
                alias = "Npc5092",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 8
            },
            {
                id = 5093,
                alias = "Npc5093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200135:3372.849,424.763,4033.775,0.000,313.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1084, pos = "[1084_27:-0.942,7.553,14.708]"}}
    },
    ["4013303"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_29:5.658,7.535,16.996,0.000,279.598,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_25:-1.539,7.506,17.516,0.000,139.682,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_26:-0.057,7.553,17.211,0.000,246.195,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_30:5.596,7.535,15.618,0.000,277.451,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_33:8.485,7.518,14.007,0.000,299.147,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            },
            {
                id = 5089,
                alias = "Npc5089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 7
            },
            {
                id = 5092,
                alias = "Npc5092",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 8
            },
            {
                id = 5093,
                alias = "Npc5093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_26:-0.057,7.553,17.211,0.000,246.195,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 10
            }
        }
    },
    ["4013304"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100492:3561.902,446.167,4436.428,0.000,153.031,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100353:3563.208,446.167,4434.247,0.000,335.069,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013305"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100496:3604.402,428.202,4584.025]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5033,
                alias = "Npc5033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100354:3606.608,428.203,4582.926,0.000,287.994,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4013306"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100360:3481.601,291.855,4513.427,0.000,322.013,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30451,
                alias = "Npc30451",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100356:3401.076,292.023,4481.338,0.000,45.970,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30444,
                alias = "Npc30444",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100441:3500.772,299.740,4532.298,0.000,311.534,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5064,
                alias = "Npc5064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100434:3486.839,283.655,4560.662,0.000,321.324,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4013307"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100360:3481.601,291.855,4513.427,0.000,322.013,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30451,
                alias = "Npc30451",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100356:3401.076,292.023,4481.338,0.000,45.970,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30444,
                alias = "Npc30444",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100441:3500.772,299.740,4532.298,0.000,311.534,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5064,
                alias = "Npc5064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100434:3486.839,283.655,4560.662,0.000,321.324,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4013308"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100360:3481.601,291.855,4513.427,0.000,322.013,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30451,
                alias = "Npc30451",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100356:3401.076,292.023,4481.338,0.000,45.970,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30444,
                alias = "Npc30444",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100441:3500.772,299.740,4532.298,0.000,311.534,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5064,
                alias = "Npc5064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100434:3486.839,283.655,4560.662,0.000,321.324,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4013309"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100360:3481.601,291.855,4513.427,0.000,322.013,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4013310"] = {},
    ["4013311"] = {
        npcs = {
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_46:11.851,7.518,15.823,0.000,214.266,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_45:11.012,7.518,16.217,0.000,175.395,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 5089,
                alias = "Npc5089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 5092,
                alias = "Npc5092",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5093,
                alias = "Npc5093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["4013312"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_49:-8.101,7.535,15.340,0.000,332.637,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_50:5.088,7.553,13.838,0.000,93.638,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 5089,
                alias = "Npc5089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 5092,
                alias = "Npc5092",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5093,
                alias = "Npc5093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["4013313"] = {},
    ["4013314"] = {},
    ["4013315"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_57:9.664,7.518,9.684,0.000,133.598,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_49:-8.101,7.535,15.340,0.000,332.637,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_58:9.490,7.518,8.788,0.000,75.770,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_50:5.088,7.553,13.838,0.000,93.638,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_59:10.264,7.518,8.150,0.000,341.941,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_53:0.034,7.553,21.715,0.000,181.001,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            },
            {
                id = 5089,
                alias = "Npc5089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 7
            },
            {
                id = 5092,
                alias = "Npc5092",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 8
            },
            {
                id = 5093,
                alias = "Npc5093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_58:9.490,7.518,8.788,0.000,75.770,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 10
            }
        }
    },
    ["4013316"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_49:-8.101,7.535,15.340,0.000,332.637,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_50:5.088,7.553,13.838,0.000,93.638,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 5089,
                alias = "Npc5089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 5092,
                alias = "Npc5092",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 5093,
                alias = "Npc5093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_58:9.490,7.518,8.788,0.000,75.770,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["4013317"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_57:9.664,7.518,9.684,0.000,133.598,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_49:-8.101,7.535,15.340,0.000,332.637,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_58:9.490,7.518,8.788,0.000,75.770,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_46:11.851,7.518,15.823,0.000,214.266,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_45:11.012,7.518,16.217,0.000,175.395,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 30439,
                alias = "Npc30439",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_50:5.088,7.553,13.838,0.000,93.638,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            },
            {
                id = 30436,
                alias = "Npc30436",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_59:10.264,7.518,8.150,0.000,341.941,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_53:0.034,7.553,21.715,0.000,181.001,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 8
            },
            {
                id = 5089,
                alias = "Npc5089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 9
            },
            {
                id = 5092,
                alias = "Npc5092",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 10
            },
            {
                id = 5093,
                alias = "Npc5093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_31:5.549,7.535,14.184,0.000,311.396,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 11
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_58:9.490,7.518,8.788,0.000,75.770,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100489:3455.169,454.922,4630.004]"}}
    },
    ["4013318"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100360:3481.601,291.855,4513.427,0.000,322.013,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30444,
                alias = "Npc30444",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100441:3500.772,299.740,4532.298,0.000,311.534,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5064,
                alias = "Npc5064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100434:3486.839,283.655,4560.662,0.000,321.324,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100445:3479.793,291.958,4514.708,0.000,102.561,0.000]"}}
    },
    ["4013319"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100488:3451.281,455.453,4635.513,0.000,131.913,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100484:3450.773,454.922,4626.562,0.000,41.991,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2604,
                alias = "Npc2604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100485:3451.291,454.922,4625.958,0.000,35.777,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100487:3460.505,454.922,4632.593,0.000,65.622,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100486:3459.410,454.922,4634.526,0.000,51.193,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100485:3451.291,454.922,4625.958,0.000,35.777,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4013320"] = {
        npcs = {
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100360:3481.601,291.855,4513.427,0.000,322.013,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30451,
                alias = "Npc30451",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100356:3401.076,292.023,4481.338,0.000,45.970,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30444,
                alias = "Npc30444",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100441:3500.772,299.740,4532.298,0.000,311.534,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5064,
                alias = "Npc5064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100434:3486.839,283.655,4560.662,0.000,321.324,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
