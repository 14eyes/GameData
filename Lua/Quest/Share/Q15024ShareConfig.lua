main_id = 15024
local tbl = {}
local n = 1502401
local v = 1502402
local n2 = 1502403
local n3 = 1502404
local n4 = 1502405
local n5 = 1502409
local n6 = 1502410
local n7 = 1502415
local n8 = 1502412
local n9 = 1502413
local n10 = 1502411
local n11 = 1502414
local n12 = 1502406
local n13 = 1502407
tbl[1] = 1502408
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1502401"] = {},
    ["1502402"] = {},
    ["1502403"] = {},
    ["1502404"] = {},
    ["1502405"] = {},
    ["1502406"] = {},
    ["1502407"] = {},
    ["1502408"] = {},
    ["1502409"] = {},
    ["1502410"] = {},
    ["1502415"] = {}
}

quest_data = {
    ["1502401"] = {
        npcs = {
            {
                id = 21674,
                alias = "Npc21674",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9386:-1777.648,168.683,9520.784,0.000,231.242,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1502402"] = {
        npcs = {
            {
                id = 21674,
                alias = "Npc21674",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9688:-1607.700,173.357,9687.658]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1502403"] = {
        npcs = {
            {
                id = 6249,
                alias = "Npc6249",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10405:-1574.730,173.241,9700.946,0.000,243.509,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1502404"] = {
        npcs = {
            {
                id = 15018,
                alias = "Npc15018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9382:-1564.567,174.087,9710.207,0.000,215.840,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6251,
                alias = "Npc6251",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_9382:-1564.567,174.087,9710.207,0.000,215.840,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1502405"] = {
        npcs = {
            {
                id = 15018,
                alias = "Npc15018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10152:-1601.057,19.679,9739.610]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6251,
                alias = "Npc6251",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_10152:-1601.057,19.679,9739.610]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1502406"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_9986:-1678.746,13.708,9689.017]"}}},
    ["1502407"] = {
        npcs = {
            {
                id = 14918,
                alias = "Npc14918",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9987:-1677.397,13.736,9685.672,0.000,28.338,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6250,
                alias = "Npc6250",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_9987:-1677.397,13.736,9685.672,0.000,28.338,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1502408"] = {},
    ["1502409"] = {
        npcs = {
            {
                id = 14918,
                alias = "Npc14918",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9987:-1677.397,13.736,9685.672,0.000,28.338,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6250,
                alias = "Npc6250",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_9987:-1677.397,13.736,9685.672,0.000,28.338,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 2200, pos = "[20247_6:410.144,104.434,380.244]"}}
    },
    ["1502410"] = {
        npcs = {
            {
                id = 21674,
                alias = "Npc21674",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_6:410.144,104.434,380.244]",
                scene_id = 20247,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1502411"] = {
        npcs = {
            {
                id = 21747,
                alias = "Npc21747",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_3:367.863,105.704,373.886,0.000,53.823,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21748,
                alias = "Npc21748",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_4:405.236,104.799,410.584,0.000,218.975,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21749,
                alias = "Npc21749",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_5:405.848,105.663,380.488]",
                scene_id = 20247,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1502412"] = {
        npcs = {
            {
                id = 21747,
                alias = "Npc21747",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_3:367.863,105.704,373.886,0.000,53.823,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21748,
                alias = "Npc21748",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_4:405.236,104.799,410.584,0.000,218.975,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21749,
                alias = "Npc21749",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_5:405.848,105.663,380.488]",
                scene_id = 20247,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1502413"] = {
        npcs = {
            {
                id = 21747,
                alias = "Npc21747",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_3:367.863,105.704,373.886,0.000,53.823,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21748,
                alias = "Npc21748",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_4:405.236,104.799,410.584,0.000,218.975,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21749,
                alias = "Npc21749",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_5:405.848,105.663,380.488]",
                scene_id = 20247,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1502414"] = {
        npcs = {
            {
                id = 21674,
                alias = "Npc21674",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_6:410.144,104.434,380.244]",
                scene_id = 20247,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21747,
                alias = "Npc21747",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_3:367.863,105.704,373.886,0.000,53.823,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21748,
                alias = "Npc21748",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_4:405.236,104.799,410.584,0.000,218.975,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 3
            },
            {
                id = 21749,
                alias = "Npc21749",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_5:405.848,105.663,380.488]",
                scene_id = 20247,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1502415"] = {
        npcs = {
            {
                id = 21747,
                alias = "Npc21747",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_3:367.863,105.704,373.886,0.000,53.823,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21748,
                alias = "Npc21748",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_4:405.236,104.799,410.584,0.000,218.975,0.000]",
                scene_id = 20247,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21749,
                alias = "Npc21749",
                script = "Actor/Npc/TempNPC",
                pos = "[20247_5:405.848,105.663,380.488]",
                scene_id = 20247,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
