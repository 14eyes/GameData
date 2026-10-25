main_id = 40224
local tbl = {}
local n = 4022410
local v = 4022402
local n2 = 4022403
local n3 = 4022411
local n4 = 4022404
local n5 = 4022412
local n6 = 4022413
local n7 = 4022405
local n8 = 4022406
local n9 = 4022409
local n10 = 4022414
local n11 = 4022407
local n12 = 4022408
tbl[1] = 4022401
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
tbl3[1] = "133107303"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121454,121466"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4022401"] = {},
    ["4022402"] = {},
    ["4022403"] = {},
    ["4022404"] = {},
    ["4022405"] = {},
    ["4022406"] = {},
    ["4022407"] = {},
    ["4022408"] = {},
    ["4022410"] = {},
    ["4022411"] = {},
    ["4022412"] = {},
    ["4022413"] = {}
}

quest_data = {
    ["4022401"] = {},
    ["4022402"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[20315_1:376.796,164.689,372.072,0.000,31.249,0.000]",
                scene_id = 20315,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[20315_4:378.495,164.692,377.465,0.000,34.353,0.000]",
                scene_id = 20315,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[20315_4:378.495,164.692,377.465,0.000,34.353,0.000]",
                scene_id = 20315,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1285, pos = "[20315_5:303.377,158.745,366.864,0.000,115.849,0.000]"}}
    },
    ["4022403"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[20315_1:376.796,164.689,372.072,0.000,31.249,0.000]",
                scene_id = 20315,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[20315_4:378.495,164.692,377.465,0.000,34.353,0.000]",
                scene_id = 20315,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[20315_4:378.495,164.692,377.465,0.000,34.353,0.000]",
                scene_id = 20315,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14683:-557.572,225.087,356.548,0.000,225.913,0.000]"}}
    },
    ["4022404"] = {
        npcs = {
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14682:-558.001,225.087,356.902,0.000,215.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14684:-673.316,219.699,229.871,5.508,265.680,359.404]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14685:-669.996,219.692,228.087,0.000,87.110,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14682:-558.001,225.087,356.902,0.000,215.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4022405"] = {
        npcs = {
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14131:-652.920,221.615,246.065,0.000,226.413,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2148,
                alias = "Npc2148",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15234:-658.354,221.615,243.173,0.000,42.453,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15233:-657.354,221.615,242.969,0.000,330.258,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14131:-652.920,221.615,246.065,0.000,226.413,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4022406"] = {
        npcs = {
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14132:-498.278,210.794,291.611,0.000,120.996,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15197:-495.169,210.780,290.450,0.000,142.812,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15198:-495.988,210.780,289.483,0.000,124.690,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14132:-498.278,210.794,291.611,0.000,120.996,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_14137:-622.110,251.961,361.037,0.000,195.082,0.000]"}}
    },
    ["4022407"] = {
        npcs = {
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14133:-622.326,251.961,360.030,0.000,188.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14133:-622.326,251.961,360.030,0.000,188.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4022408"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14140:-621.367,251.961,361.833,0.000,280.874,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14141:-622.656,251.961,361.860,0.000,90.983,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4022409"] = {},
    ["4022410"] = {
        npcs = {
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14679:1142.842,349.253,1572.330,0.000,113.157,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14680:1143.035,349.215,1570.169,0.000,32.228,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14681:1144.676,349.100,1566.540,0.000,181.771,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14679:1142.842,349.253,1572.330,0.000,113.157,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4022411"] = {
        npcs = {
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14682:-558.001,225.087,356.902,0.000,215.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14682:-558.001,225.087,356.902,0.000,215.202,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4022412"] = {
        npcs = {
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14686:-677.292,219.692,219.868]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14686:-677.292,219.692,219.868]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14685:-669.996,219.692,228.087,0.000,87.110,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14686:-677.292,219.692,219.868]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4022413"] = {
        npcs = {
            {
                id = 15953,
                alias = "Npc15953",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14686:-677.292,219.692,219.868]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14686:-677.292,219.692,219.868]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4022414"] = {}
}
