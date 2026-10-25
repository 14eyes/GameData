main_id = 16000
local tbl = {}
local n = 1600002
local v = 1600019
local n2 = 1600003
local n3 = 1600004
local n4 = 1600005
local n5 = 1600014
local n6 = 1600015
local n7 = 1600016
local n8 = 1600017
local n9 = 1600018
local n10 = 1600006
local n11 = 1600007
local n12 = 1600008
local n13 = 1600009
local n14 = 1600020
local n15 = 1600010
local n16 = 1600011
local n17 = 1600012
local n18 = 1600013
tbl[1] = 1600001
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1600001"] = {},
    ["1600002"] = {},
    ["1600003"] = {},
    ["1600004"] = {},
    ["1600005"] = {},
    ["1600006"] = {},
    ["1600007"] = {},
    ["1600008"] = {},
    ["1600009"] = {},
    ["1600010"] = {
        npcs = {
            {
                id = 15876,
                alias = "Npc15876",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_1:2466.702,-0.984,700.654,0.000,267.787,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600011"] = {
        npcs = {
            {
                id = 15876,
                alias = "Npc15876",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_1:2466.702,-0.984,700.654,0.000,267.787,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600012"] = {
        npcs = {
            {
                id = 15876,
                alias = "Npc15876",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_1:2466.702,-0.984,700.654,0.000,267.787,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1,
                inWater = true
            }
        }
    },
    ["1600013"] = {},
    ["1600014"] = {},
    ["1600015"] = {},
    ["1600016"] = {},
    ["1600017"] = {},
    ["1600018"] = {},
    ["1600019"] = {}
}

quest_data = {
    ["1600001"] = {},
    ["1600002"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13940:1959.451,201.172,9529.526,0.000,60.138,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600003"] = {
        npcs = {
            {
                id = 1321,
                alias = "Npc1321",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_5:2144.151,0.003,197.531,0.000,159.624,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600004"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13940:1959.451,201.172,9529.526,0.000,60.138,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13940:1959.451,201.172,9529.526,0.000,60.138,0.000]"}}
    },
    ["1600005"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_273:-14.871,0.000,7.412,0.000,66.361,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1600006"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_258:-16.983,0.000,9.798,0.000,87.548,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 15933,
                alias = "Npc15933",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_277:-22.131,0.785,12.268,0.000,355.437,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 15934,
                alias = "Npc15934",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_275:-11.552,1.880,14.179,0.000,220.221,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 3
            },
            {
                id = 15935,
                alias = "Npc15935",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_276:-11.474,1.132,0.257,0.000,267.900,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            },
            {
                id = 15936,
                alias = "Npc15936",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_278:-12.834,1.158,20.912,0.000,180.836,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 5
            },
            {
                id = 15937,
                alias = "Npc15937",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_274:-19.662,0.718,-1.741]",
                scene_id = 1004,
                room_id = 1,
                data_index = 6
            }
        }
    },
    ["1600007"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_258:-16.983,0.000,9.798,0.000,87.548,0.000]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1600008"] = {},
    ["1600009"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_7:2460.485,-1.414,701.520,0.000,106.135,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15876,
                alias = "Npc15876",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_1:2466.702,-0.984,700.654,0.000,267.787,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1600010"] = {
        npcs = {
            {
                id = 15939,
                alias = "Npc15939",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_1:2466.702,-0.984,700.654,0.000,267.787,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15940,
                alias = "Npc15940",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_3:2469.033,-1.414,697.026]",
                scene_id = 20297,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15941,
                alias = "Npc15941",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_2:2480.941,1.234,700.376]",
                scene_id = 20297,
                room_id = 0,
                data_index = 3,
                inWater = true
            }
        }
    },
    ["1600011"] = {},
    ["1600012"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_9:2479.262,0.629,700.390,0.000,89.565,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600013"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14073:2256.417,230.083,-808.091]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14073:2256.417,230.083,-808.091]"}}
    },
    ["1600014"] = {},
    ["1600015"] = {},
    ["1600016"] = {},
    ["1600017"] = {},
    ["1600018"] = {},
    ["1600019"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 2205, pos = "[20297_6:2146.849,-0.007,190.516,0.000,334.698,0.000]"}}
    },
    ["1600020"] = {}
}
