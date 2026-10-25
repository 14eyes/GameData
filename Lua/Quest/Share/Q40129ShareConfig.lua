main_id = 40129
local tbl = {}
local n = 4012912
local v = 4012901
local n2 = 4012902
local n3 = 4012916
local n4 = 4012903
local n5 = 4012917
local n6 = 4012918
local n7 = 4012915
local n8 = 4012904
local n9 = 4012911
local n10 = 4012909
local n11 = 4012905
local n12 = 4012906
local n13 = 4012913
local n14 = 4012908
local n15 = 4012910
local n16 = 4012914
tbl[1] = 4012907
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_LOCK_POINT = {}
local tbl3 = {}
local str = "1067"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_LOCK_POINT[1] = tbl3
server.QUEST_EXEC_LOCK_POINT = qUEST_EXEC_LOCK_POINT
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133402094"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120597"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4012901"] = {},
    ["4012902"] = {},
    ["4012903"] = {},
    ["4012904"] = {},
    ["4012905"] = {},
    ["4012906"] = {},
    ["4012907"] = {},
    ["4012908"] = {},
    ["4012909"] = {},
    ["4012910"] = {},
    ["4012911"] = {},
    ["4012912"] = {},
    ["4012913"] = {
        npcs = {
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_1:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012914"] = {},
    ["4012915"] = {},
    ["4012916"] = {},
    ["4012917"] = {},
    ["4012918"] = {}
}

quest_data = {
    ["4012901"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5851:3399.254,443.360,3005.934,359.979,259.769,359.794]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5852:3397.202,443.366,3005.478,0.000,77.905,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6393:3406.563,443.394,3009.951,0.000,223.509,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6393:3406.563,443.394,3009.951,0.000,223.509,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_6628:3227.655,439.731,3628.384,0.033,344.031,-0.001]"}}
    },
    ["4012902"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6543:3211.939,433.487,3682.564]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6543:3211.939,433.487,3682.564]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6543:3211.939,433.487,3682.564]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6543:3211.939,433.487,3682.564]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012903"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012904"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6554:3226.688,421.052,3894.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6554:3226.688,421.052,3894.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6554:3226.688,421.052,3894.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6554:3226.688,421.052,3894.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012905"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_4:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_4:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_4:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_4:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_6554:3226.688,421.052,3894.172]"}}
    },
    ["4012906"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_1:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_1:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_1:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_1:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_5853:3398.341,443.343,3004.086]"}}
    },
    ["4012907"] = {
        npcs = {
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6393:3406.563,443.394,3009.951,0.000,223.509,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012908"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6206:3397.450,443.309,3005.128,0.000,244.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6206:3397.450,443.309,3005.128,0.000,244.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6206:3397.450,443.309,3005.128,0.000,244.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6206:3397.450,443.309,3005.128,0.000,244.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012909"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_4:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_4:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012910"] = {},
    ["4012911"] = {},
    ["4012912"] = {},
    ["4012913"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[47801_1:160.481,17.066,331.158]",
                scene_id = 47801,
                room_id = 0,
                data_index = 1,
                inWater = true
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_5853:3398.341,443.343,3004.086]"}}
    },
    ["4012914"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6563:3080.570,440.000,3595.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6563:3080.570,440.000,3595.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6563:3080.570,440.000,3595.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6563:3080.570,440.000,3595.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012915"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6554:3226.688,421.052,3894.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6554:3226.688,421.052,3894.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6554:3226.688,421.052,3894.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6554:3226.688,421.052,3894.172]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012916"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6543:3211.939,433.487,3682.564]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6543:3211.939,433.487,3682.564]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6543:3211.939,433.487,3682.564]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6543:3211.939,433.487,3682.564]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012917"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4012918"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13673,
                alias = "Npc13673",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6544:3201.521,407.221,3832.475]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
