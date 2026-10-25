main_id = 19182
local tbl = {}
local n = 1918204
local v = 1918202
local n2 = 1918203
local n3 = 1918205
local n4 = 1918206
local n5 = 1918218
local n6 = 1918219
local n7 = 1918215
local n8 = 1918216
local n9 = 1918217
local n10 = 1918224
local n11 = 1918220
local n12 = 1918221
local n13 = 1918222
local n14 = 1918223
local n15 = 1918214
local n16 = 1918207
local n17 = 1918209
local n18 = 1918210
local n19 = 1918211
local n20 = 1918212
local n21 = 1918213
tbl[1] = 1918201
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
tbl[21] = n19
tbl[22] = n20
tbl[23] = n21
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "201084007"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133401820"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "201085017"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "201084010"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl7 = {}
local str5 = "0"
tbl7[1] = "1918201"
tbl7[2] = str5
local tbl8 = {}
local str6 = "0"
tbl8[1] = "1918202"
tbl8[2] = str6
local tbl9 = {}
local str7 = "0"
tbl9[1] = "1918203"
tbl9[2] = str7
local tbl10 = {}
local str8 = "0"
tbl10[1] = "1918204"
tbl10[2] = str8
local tbl11 = {}
local str9 = "0"
tbl11[1] = "1918205"
tbl11[2] = str9
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl7
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[2] = tbl8
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[3] = tbl9
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[4] = tbl10
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[5] = tbl11
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1918201"] = {},
    ["1918202"] = {
        npcs = {
            {
                id = 13935,
                alias = "Npc13935",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_110:1.322,7.553,18.400,0.000,351.470,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13976,
                alias = "Npc13976",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_111:-0.398,7.553,18.678,0.000,12.100,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["1918203"] = {
        npcs = {
            {
                id = 13933,
                alias = "Npc13933",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_98:2.412,7.553,20.486,0.000,293.490,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13936,
                alias = "Npc13936",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_97:-0.959,7.553,21.614,0.000,145.200,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1918204"] = {},
    ["1918205"] = {},
    ["1918206"] = {},
    ["1918207"] = {
        npcs = {
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100519:3477.673,283.360,4551.538,0.000,220.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1918209"] = {},
    ["1918210"] = {},
    ["1918211"] = {},
    ["1918212"] = {},
    ["1918213"] = {},
    ["1918214"] = {}
}

quest_data = {
    ["1918201"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_70:0.425,-0.188,22.971,0.000,175.900,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 5094,
                alias = "Npc5094",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_83:-0.607,-0.188,20.133]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 5095,
                alias = "Npc5095",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1084_73:0.571,-0.188,21.431]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_94:-1.361,0.026,4.162,0.000,93.410,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 13933,
                alias = "Npc13933",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_91:2.928,0.026,6.733]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13934,
                alias = "Npc13934",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_105:9.538,0.000,17.276,0.000,130.750,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            },
            {
                id = 13935,
                alias = "Npc13935",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_84:0.998,-0.188,19.866]",
                scene_id = 1084,
                room_id = 1,
                data_index = 7
            },
            {
                id = 13936,
                alias = "Npc13936",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_90:0.951,0.026,9.381]",
                scene_id = 1084,
                room_id = 1,
                data_index = 8
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_85:8.494,0.000,6.775,0.000,25.940,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 9
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_103:-6.437,0.000,3.241,0.000,255.600,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 10
            },
            {
                id = 13979,
                alias = "Npc13979",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_95:-2.813,0.026,12.729,0.000,82.150,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 11
            },
            {
                id = 13977,
                alias = "Npc13977",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_92:-1.228,0.026,11.846,0.000,18.800,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 12
            },
            {
                id = 13978,
                alias = "Npc13978",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_93:1.297,0.026,11.596,0.000,335.890,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 13
            },
            {
                id = 13976,
                alias = "Npc13976",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_89:3.014,0.026,10.593,0.000,232.190,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 14
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_70:0.425,-0.188,22.971,0.000,175.900,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 15
            }
        }
    },
    ["1918202"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_85:8.494,0.000,6.775,0.000,25.940,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13933,
                alias = "Npc13933",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_98:2.412,7.553,20.486,0.000,293.490,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13936,
                alias = "Npc13936",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_97:-0.959,7.553,21.614,0.000,145.200,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_85:8.494,0.000,6.775,0.000,25.940,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1084, pos = "[1084_77:-0.115,7.553,18.638,0.000,1.030,0.000]"}}
    },
    ["1918203"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_78:1.126,7.553,19.013]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_78:1.126,7.553,19.013]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1918204"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_70:0.425,-0.188,22.971,0.000,175.900,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_102:-6.983,0.000,1.789,0.000,324.900,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13933,
                alias = "Npc13933",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_98:2.412,7.553,20.486,0.000,293.490,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13934,
                alias = "Npc13934",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_105:9.538,0.000,17.276,0.000,130.750,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 4
            },
            {
                id = 13935,
                alias = "Npc13935",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_110:1.322,7.553,18.400,0.000,351.470,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13936,
                alias = "Npc13936",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_97:-0.959,7.553,21.614,0.000,145.200,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_99:-4.760,7.520,-13.301,0.000,215.190,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 7
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_103:-6.437,0.000,3.241,0.000,255.600,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 8
            },
            {
                id = 13979,
                alias = "Npc13979",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_104:-7.626,0.000,4.020,0.000,199.800,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 9
            },
            {
                id = 13977,
                alias = "Npc13977",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_100:4.522,0.026,4.161,0.000,96.380,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 10
            },
            {
                id = 13978,
                alias = "Npc13978",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_101:-8.419,0.000,2.608,0.000,74.400,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 11
            },
            {
                id = 13976,
                alias = "Npc13976",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_111:-0.398,7.553,18.678,0.000,12.100,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 12
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_70:0.425,-0.188,22.971,0.000,175.900,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 13
            }
        }
    },
    ["1918205"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100513:3519.938,299.794,4554.826,0.000,68.020,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100510:3522.438,299.839,4554.882,0.000,275.080,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13934,
                alias = "Npc13934",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100511:3522.222,299.794,4558.732,0.000,270.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100513:3519.938,299.794,4554.826,0.000,68.020,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1918206"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100516:3481.248,283.357,4553.923,0.000,132.240,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1918207"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100520:3483.502,283.383,4551.808,0.000,309.870,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100520:3483.502,283.383,4551.808,0.000,309.870,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1918209"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100520:3483.502,283.383,4551.808,0.000,309.870,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100675:3474.524,281.167,4546.586,0.000,283.410,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13985,
                alias = "Npc13985",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100594:3482.583,284.181,4552.436]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13986,
                alias = "Npc13986",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100595:3482.694,284.494,4553.536]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13987,
                alias = "Npc13987",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100596:3481.764,284.503,4551.802]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13988,
                alias = "Npc13988",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100597:3482.037,284.184,4552.135]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13989,
                alias = "Npc13989",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100598:3483.031,284.260,4553.356]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100520:3483.502,283.383,4551.808,0.000,309.870,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1918210"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_368:-80.657,0.574,18.596,0.000,180.600,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_367:-58.545,0.510,16.958,0.000,322.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13933,
                alias = "Npc13933",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_363:-67.137,0.574,18.953,0.000,86.720,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13934,
                alias = "Npc13934",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_371:-59.445,0.510,17.905,0.000,130.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_380:-0.369,7.315,157.823,0.000,358.000,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13979,
                alias = "Npc13979",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_386:-63.279,0.625,21.958,0.000,184.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_368:-80.657,0.574,18.596,0.000,180.600,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 7
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1085, pos = "[1085_361:-67.031,0.574,20.350,0.000,217.160,0.000]"}}
    },
    ["1918211"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_368:-80.657,0.574,18.596,0.000,180.600,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_367:-58.545,0.510,16.958,0.000,322.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13933,
                alias = "Npc13933",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_363:-67.137,0.574,18.953,0.000,86.720,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13934,
                alias = "Npc13934",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_371:-59.445,0.510,17.905,0.000,130.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_387:-63.644,0.625,18.658,0.000,8.900,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13979,
                alias = "Npc13979",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_386:-63.279,0.625,21.958,0.000,184.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_368:-80.657,0.574,18.596,0.000,180.600,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["1918212"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_368:-80.657,0.574,18.596,0.000,180.600,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_367:-58.545,0.510,16.958,0.000,322.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13933,
                alias = "Npc13933",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_363:-67.137,0.574,18.953,0.000,86.720,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13934,
                alias = "Npc13934",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_371:-59.445,0.510,17.905,0.000,130.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_395:-67.411,0.574,24.569,0.000,144.870,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13979,
                alias = "Npc13979",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_396:-66.059,0.574,24.854,0.000,167.500,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_368:-80.657,0.574,18.596,0.000,180.600,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["1918213"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_368:-80.657,0.574,18.596,0.000,180.600,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_367:-58.545,0.510,16.958,0.000,322.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13933,
                alias = "Npc13933",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_366:-81.042,0.574,17.299,0.000,37.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 13934,
                alias = "Npc13934",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_371:-59.445,0.510,17.905,0.000,130.400,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_400:-46.536,0.510,25.137,0.000,230.700,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 5
            },
            {
                id = 13979,
                alias = "Npc13979",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_401:-47.585,0.510,24.399,0.000,56.640,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_368:-80.657,0.574,18.596,0.000,180.600,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["1918214"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100519:3477.673,283.360,4551.538,0.000,220.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13985,
                alias = "Npc13985",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100594:3482.583,284.181,4552.436]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13986,
                alias = "Npc13986",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100595:3482.694,284.494,4553.536]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13987,
                alias = "Npc13987",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100596:3481.764,284.503,4551.802]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13988,
                alias = "Npc13988",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100597:3482.037,284.184,4552.135]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13989,
                alias = "Npc13989",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100598:3483.031,284.260,4553.356]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1918215"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100519:3477.673,283.360,4551.538,0.000,220.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1918216"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100519:3477.673,283.360,4551.538,0.000,220.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1918217"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100519:3477.673,283.360,4551.538,0.000,220.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1918218"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100519:3477.673,283.360,4551.538,0.000,220.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1918219"] = {
        npcs = {
            {
                id = 518,
                alias = "Npc518",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13932,
                alias = "Npc13932",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100519:3477.673,283.360,4551.538,0.000,220.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13980,
                alias = "Npc13980",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100638:3476.865,283.329,4550.295,0.000,28.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100514:3483.879,283.351,4552.885,0.000,287.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1918220"] = {},
    ["1918221"] = {},
    ["1918222"] = {},
    ["1918223"] = {},
    ["1918224"] = {}
}
