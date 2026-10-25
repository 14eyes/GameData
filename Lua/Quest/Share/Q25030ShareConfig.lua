main_id = 25030
local tbl = {}
local n = 2503002
local v = 2503003
local n2 = 2503004
local n3 = 2503005
local n4 = 2503006
local n5 = 2503007
local n6 = 2503008
local n7 = 2503009
local n8 = 2503010
local n9 = 2503011
local n10 = 2503012
tbl[1] = 2503001
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133504232,133504226,133504234,133504231,133504241,133504236"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2503001"] = {},
    ["2503003"] = {},
    ["2503005"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400201:-1350.039,120.105,7654.400,0.000,227.739,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6088,
                alias = "Npc6088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400086:-1348.991,119.104,7650.257,0.000,264.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14366,
                alias = "Npc14366",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400202:-1351.088,119.532,7652.762,0.000,52.576,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2503006"] = {},
    ["2503008"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400203:-1362.443,112.330,7569.193,0.000,358.949,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6088,
                alias = "Npc6088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400117:-1358.738,111.966,7569.481,0.000,350.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14366,
                alias = "Npc14366",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400204:-1362.547,112.354,7571.151,0.000,181.236,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2503010"] = {},
    ["2503012"] = {
        npcs = {
            {
                id = 6088,
                alias = "Npc6088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400094:-1402.874,261.836,7710.860,0.000,62.628,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14366,
                alias = "Npc14366",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400205:-1362.986,136.578,7756.479,0.000,285.334,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2503001"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "Q25030StartTamolei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6088,
                alias = "Npc6088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400082:-1333.666,163.560,7673.474,0.000,32.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14366,
                alias = "Npc14366",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400083:-1334.596,163.560,7675.182,0.000,120.071,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2503002"] = {},
    ["2503003"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400085:-1350.486,119.664,7653.083,0.000,149.899,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503004"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400201:-1350.039,120.105,7654.400,0.000,227.739,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6088,
                alias = "Npc6088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400086:-1348.991,119.104,7650.257,0.000,264.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14366,
                alias = "Npc14366",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400202:-1351.088,119.532,7652.762,0.000,52.576,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2503005"] = {},
    ["2503006"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400116:-1360.547,112.081,7568.795,0.000,29.188,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503007"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400203:-1362.443,112.330,7569.193,0.000,358.949,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6088,
                alias = "Npc6088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400117:-1358.738,111.966,7569.481,0.000,350.445,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14366,
                alias = "Npc14366",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400204:-1362.547,112.354,7571.151,0.000,181.236,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2503008"] = {},
    ["2503009"] = {},
    ["2503010"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400089:-1364.195,136.577,7756.893,0.000,200.581,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503011"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400206:-1364.564,136.588,7756.856,0.000,104.963,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6088,
                alias = "Npc6088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400090:-1364.769,136.662,7753.718,0.000,81.465,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14366,
                alias = "Npc14366",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400205:-1362.986,136.578,7756.479,0.000,285.334,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2503012"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400093:-1401.486,261.868,7709.701,0.000,5.146,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
