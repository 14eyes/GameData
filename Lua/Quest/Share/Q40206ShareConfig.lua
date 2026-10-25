main_id = 40206
local tbl = {}
local n = 4020601
local v = 4020602
local n2 = 4020603
local n3 = 4020604
local n4 = 4020613
local n5 = 4020605
local n6 = 4020615
local n7 = 4020616
local n8 = 4020606
local n9 = 4020607
local n10 = 4020614
local n11 = 4020608
local n12 = 4020609
local n13 = 4020610
local n14 = 4020611
tbl[1] = 4020612
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133607304,133605165,133601395,133601189,133601182,133601226"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"151"}}
local qUEST_EXEC_CLEAR_VEHICLE = {}
local tbl4 = {}
local str2 = "45005002"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_CLEAR_VEHICLE[1] = tbl4
server.QUEST_EXEC_CLEAR_VEHICLE = qUEST_EXEC_CLEAR_VEHICLE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4020601"] = {},
    ["4020602"] = {
        npcs = {
            {
                id = 1312,
                alias = "Npc1312",
                script = "Actor/Npc/TempNPC",
                pos = "[1151_41:-0.047,0.557,6.443]",
                scene_id = 1151,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4020603"] = {},
    ["4020604"] = {},
    ["4020605"] = {},
    ["4020607"] = {},
    ["4020608"] = {},
    ["4020609"] = {},
    ["4020610"] = {},
    ["4020611"] = {},
    ["4020612"] = {},
    ["4020613"] = {},
    ["4020614"] = {},
    ["4020615"] = {}
}

quest_data = {
    ["4020601"] = {
        npcs = {
            {
                id = 1312,
                alias = "Npc1312",
                script = "Actor/Npc/TempNPC",
                pos = "[1151_14:-0.046,1.237,-2.038]",
                scene_id = 1151,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4020602"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12531:1570.514,215.297,9436.782,0.000,23.015,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020603"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13929:1570.491,215.017,9436.699]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11977:1969.109,259.285,9437.081]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1313,
                alias = "Npc1313_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11978:2458.490,285.720,9053.526]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1313,
                alias = "Npc1313_2",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11979:3566.603,200.444,9415.138]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4020604"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11978:2458.490,285.720,9053.526]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1313,
                alias = "Npc1313_2",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11979:3566.603,200.444,9415.138]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15836,
                alias = "Npc15836",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13819:2437.982,281.232,9049.427]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15837,
                alias = "Npc15837",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13818:2441.868,281.627,9052.309]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4020605"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11979:3566.603,200.444,9415.138]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15836,
                alias = "Npc15836",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13819:2437.982,281.232,9049.427]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15837,
                alias = "Npc15837",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13818:2441.868,281.627,9052.309]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13256:3571.360,204.246,9401.052,0.000,218.000,0.000]"}}
    },
    ["4020606"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13928:3545.782,200.000,9318.667,0.000,13.272,0.000]"}}
    },
    ["4020607"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11980:3548.959,204.237,9450.409]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020608"] = {
        npcs = {
            {
                id = 15467,
                alias = "Npc15467",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13902:3543.501,210.063,9467.969,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15537,
                alias = "Npc15537",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13903:3535.454,210.858,9472.951,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4020609"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11980:3548.959,204.237,9450.409]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020610"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11980:3548.959,204.237,9450.409]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020611"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11980:3548.959,204.237,9450.409]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020612"] = {},
    ["4020613"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313_2",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11979:3566.603,200.444,9415.138]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15836,
                alias = "Npc15836",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13819:2437.982,281.232,9049.427]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15837,
                alias = "Npc15837",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13818:2441.868,281.627,9052.309]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4020614"] = {
        npcs = {
            {
                id = 15467,
                alias = "Npc15467",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13902:3543.501,210.063,9467.969,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15537,
                alias = "Npc15537",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13903:3535.454,210.858,9472.951,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4020615"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13928:3545.782,200.000,9318.667,0.000,13.272,0.000]"}}
    },
    ["4020616"] = {}
}
