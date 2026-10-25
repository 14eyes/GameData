main_id = 4000
local tbl = {}
local n = 400008
local v = 400002
local n2 = 400003
local n3 = 400004
local n4 = 400005
local n5 = 400006
local n6 = 400007
local n7 = 400009
tbl[1] = 400001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["400001"] = {},
    ["400002"] = {},
    ["400004"] = {},
    ["400005"] = {},
    ["400006"] = {},
    ["400007"] = {
        npcs = {
            {
                id = 13311,
                alias = "Npc13311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100035:3472.481,283.261,4554.970,0.000,132.132,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["400008"] = {},
    ["400009"] = {}
}

quest_data = {
    ["400001"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[1084_1:-9.549,0.100,15.352,0.000,310.000,0.000]",
                scene_id = 1084,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100127:3456.120,454.922,4629.688,0.000,200.712,0.000]"}}
    },
    ["400002"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100155:3529.766,427.405,4485.739]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13320,
                alias = "Npc13320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4326:3457.360,459.150,3666.320]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340200004:3459.602,492.011,3672.352,0.000,180.000,0.000]"}}
    },
    ["400003"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100155:3529.766,427.405,4485.739]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13314,
                alias = "Npc13314",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4327:3458.836,492.000,3666.871]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_340200006:3453.405,458.997,3664.906,0.000,232.508,0.000]"},
            {point_id = 2, scene_id = 3, pos = "[3_340200007:3513.211,464.801,3619.828,0.000,323.617,0.000]"}
        }
    },
    ["400004"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4328:3449.391,458.963,3664.709,0.000,25.541,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13311,
                alias = "Npc13311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200038:3449.297,458.963,3666.522,0.000,155.446,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13312,
                alias = "Npc13312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200039:3451.211,458.963,3664.885,0.000,242.810,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340200025:3447.292,458.963,3662.799,0.000,63.079,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["400005"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4331:3565.211,427.354,4491.439,0.000,230.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13311,
                alias = "Npc13311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4329:3563.311,427.354,4492.003,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13312,
                alias = "Npc13312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4330:3565.057,427.354,4489.067,0.000,30.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["400006"] = {
        npcs = {
            {
                id = 13311,
                alias = "Npc13311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100035:3472.481,283.261,4554.970,0.000,132.132,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13312,
                alias = "Npc13312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100036:3477.559,283.320,4549.323,0.000,200.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["400007"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100019:3473.354,283.278,4553.161,0.000,150.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13312,
                alias = "Npc13312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100036:3477.559,283.320,4549.323,0.000,200.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["400008"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100126:3455.850,454.922,4628.338]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["400009"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100022:3480.859,283.343,4551.310,0.000,90.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13312,
                alias = "Npc13312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100034:3473.205,283.281,4555.923,0.000,158.276,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13339,
                alias = "Npc13339",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100056:3475.203,284.704,4555.793]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
