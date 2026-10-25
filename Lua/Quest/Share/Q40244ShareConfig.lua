main_id = 40244
local tbl = {}
local n = 4024401
local v = 4024402
local n2 = 4024403
local n3 = 4024404
local n4 = 4024405
local n5 = 4024406
local n6 = 4024412
local n7 = 4024413
local n8 = 4024414
local n9 = 4024408
local n10 = 4024417
local n11 = 4024409
local n12 = 4024415
local n13 = 4024410
local n14 = 4024411
local n15 = 4024416
tbl[1] = 4024407
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
local str2 = ""
tbl3[1] = "133403816"
tbl3[2] = str
tbl3[3] = str2
local tbl4 = {}
local str3 = ""
local str4 = ""
tbl4[1] = "201161020"
tbl4[2] = str3
tbl4[3] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"219"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4024401"] = {},
    ["4024402"] = {},
    ["4024403"] = {},
    ["4024404"] = {},
    ["4024405"] = {},
    ["4024406"] = {},
    ["4024407"] = {},
    ["4024408"] = {},
    ["4024409"] = {},
    ["4024410"] = {},
    ["4024411"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_12:114.168,16.223,55.522,0.000,314.985,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 2626,
                alias = "Npc2626",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_13:116.422,16.183,66.532,0.000,180.000,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 30423,
                alias = "Npc30423",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_14:119.250,16.192,65.703,0.000,278.365,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_108:115.905,16.183,65.455,0.000,88.769,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            },
            {
                id = 13699,
                alias = "Npc13699",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_109:116.997,16.192,65.502,0.000,280.960,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["4024412"] = {},
    ["4024413"] = {},
    ["4024414"] = {},
    ["4024415"] = {},
    ["4024417"] = {}
}

quest_data = {
    ["4024401"] = {},
    ["4024402"] = {
        npcs = {
            {
                id = 30771,
                alias = "Npc30771",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16518:3435.868,449.586,4444.268,0.000,118.511,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17055:3437.763,449.586,4444.182,0.000,226.944,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1082,
                alias = "Npc1082",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17056:3437.078,449.586,4443.059,0.000,330.124,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024403"] = {
        npcs = {
            {
                id = 1078,
                alias = "Npc1078",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16519:3522.722,452.648,4169.467,0.000,227.687,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4024404"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_1:115.878,16.183,66.124,0.000,92.397,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_1:115.878,16.183,66.124,0.000,92.397,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4024405"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_1:115.878,16.183,66.124,0.000,92.397,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 31015,
                alias = "Npc31015",
                script = "Actor/Npc/TempNPC",
                pos = "[20358_1:5044.171,529.350,4015.254,0.000,37.821,0.000]",
                scene_id = 20358,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_1:115.878,16.183,66.124,0.000,92.397,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20358_1:5044.171,529.350,4015.254,0.000,37.821,0.000]",
                scene_id = 20358,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1327, pos = "[20358_1:5044.171,529.350,4015.254,0.000,37.821,0.000]"}}
    },
    ["4024406"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_1:115.878,16.183,66.124,0.000,92.397,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 31015,
                alias = "Npc31015",
                script = "Actor/Npc/TempNPC",
                pos = "[20358_1:5044.171,529.350,4015.254,0.000,37.821,0.000]",
                scene_id = 20358,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_1:115.878,16.183,66.124,0.000,92.397,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20358_1:5044.171,529.350,4015.254,0.000,37.821,0.000]",
                scene_id = 20358,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4024407"] = {},
    ["4024408"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20358_8:2543.156,413.179,4505.895,0.000,96.360,0.000]",
                scene_id = 20358,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20358_8:2543.156,413.179,4505.895,0.000,96.360,0.000]",
                scene_id = 20358,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024409"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17061:2481.427,440.489,4612.264,0.000,246.113,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17061:2481.427,440.489,4612.264,0.000,246.113,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_17060:2480.612,440.434,4611.728,0.000,62.505,0.000]"}}
    },
    ["4024410"] = {
        npcs = {
            {
                id = 30771,
                alias = "Npc30771",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17064:3531.934,452.648,4173.863,0.000,265.766,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17065:3513.336,452.649,4155.514,0.000,171.745,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_12:114.168,16.223,55.522,0.000,314.985,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            },
            {
                id = 2626,
                alias = "Npc2626",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_13:116.422,16.183,66.532,0.000,180.000,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            },
            {
                id = 30423,
                alias = "Npc30423",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_14:119.250,16.192,65.703,0.000,278.365,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_108:115.905,16.183,65.455,0.000,88.769,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 6
            },
            {
                id = 13699,
                alias = "Npc13699",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_109:116.997,16.192,65.502,0.000,280.960,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17066:3513.561,452.649,4154.587,0.000,349.806,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_12:114.168,16.223,55.522,0.000,314.985,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_13:116.422,16.183,66.532,0.000,180.000,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 10
            }
        }
    },
    ["4024411"] = {
        npcs = {
            {
                id = 30771,
                alias = "Npc30771",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17064:3531.934,452.648,4173.863,0.000,265.766,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17065:3513.336,452.649,4155.514,0.000,171.745,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17066:3513.561,452.649,4154.587,0.000,349.806,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_12:114.168,16.223,55.522,0.000,314.985,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_13:116.422,16.183,66.532,0.000,180.000,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["4024412"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_1:115.878,16.183,66.124,0.000,92.397,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_1:115.878,16.183,66.124,0.000,92.397,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1161, pos = "[1161_5:109.177,16.246,94.658,0.000,340.594,0.000]"}}
    },
    ["4024413"] = {
        npcs = {
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_8:116.886,16.183,64.303,0.000,335.013,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_8:116.886,16.183,64.303,0.000,335.013,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_2:108.664,16.238,95.809,0.000,159.843,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4024414"] = {
        npcs = {
            {
                id = 30771,
                alias = "Npc30771",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_70:114.430,16.183,72.659,0.000,183.288,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            },
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_69:111.864,16.199,66.351,0.000,91.934,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_9:109.789,16.337,99.708,0.000,340.529,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_69:111.864,16.199,66.351,0.000,91.934,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_9:109.789,16.337,99.708,0.000,340.529,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 5
            }
        },
        transmit_points_enter_dungeon = {{point_id = 2, dungeon_id = 1327, pos = "[20358_8:2543.156,413.179,4505.895,0.000,96.360,0.000]"}}
    },
    ["4024415"] = {
        npcs = {
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_11:116.789,16.183,66.134,0.000,277.706,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4024416"] = {
        npcs = {
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17065:3513.336,452.649,4155.514,0.000,171.745,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2627,
                alias = "Npc2627",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_12:114.168,16.223,55.522,0.000,314.985,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 2
            },
            {
                id = 2626,
                alias = "Npc2626",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_13:116.422,16.183,66.532,0.000,180.000,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_108:115.905,16.183,65.455,0.000,88.769,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 4
            },
            {
                id = 13699,
                alias = "Npc13699",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_109:116.997,16.192,65.502,0.000,280.960,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17066:3513.561,452.649,4154.587,0.000,349.806,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_12:114.168,16.223,55.522,0.000,314.985,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[1161_13:116.422,16.183,66.532,0.000,180.000,0.000]",
                scene_id = 1161,
                room_id = 1,
                data_index = 8
            }
        }
    },
    ["4024417"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20358_13:2822.530,371.318,4473.928,0.000,293.029,0.000]",
                scene_id = 20358,
                room_id = 0,
                data_index = 1,
                inWater = true
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20358_13:2822.530,371.318,4473.928,0.000,293.029,0.000]",
                scene_id = 20358,
                room_id = 0,
                data_index = 2,
                inWater = true
            }
        }
    }
}
