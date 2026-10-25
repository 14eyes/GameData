main_id = 5003
local tbl = {}
local n = 500302
local v = 500303
local n2 = 500304
local n3 = 500308
local n4 = 500310
local n5 = 500306
local n6 = 500309
local n7 = 500307
local n8 = 500305
tbl[1] = 500301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["500301"] = {},
    ["500302"] = {},
    ["500303"] = {},
    ["500304"] = {},
    ["500305"] = {},
    ["500306"] = {},
    ["500307"] = {},
    ["500308"] = {},
    ["500309"] = {},
    ["500310"] = {}
}

quest_data = {
    ["500301"] = {},
    ["500302"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350500017:-2779.621,200.051,9157.428,0.000,118.226,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["500303"] = {
        transmit_points = {{point_id = 1, scene_id = 20227, pos = "Q5001_Transmit"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1213, pos = "[20227_14:-1912.045,52.422,9078.725,0.000,152.524,0.000]"}
        }
    },
    ["500304"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[20227_13:-1917.641,65.006,9038.163,0.000,27.347,0.000]",
                scene_id = 20227,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20227, pos = "[20227_13:-1917.641,65.006,9038.163,0.000,27.347,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1213, pos = "[20227_14:-1912.045,52.422,9078.725,0.000,152.524,0.000]"}
        }
    },
    ["500305"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_1:-8.574,2.863,0.172]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["500306"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350500019:-2119.380,151.205,8706.164]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350500018:-1911.805,52.422,9079.101]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9573:-2175.184,176.888,8664.256]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 6100,
                alias = "Npc6100",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8698:-2119.158,241.667,8482.317]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 14139,
                alias = "Npc14139",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100019:-2119.158,240.007,8482.317,0.000,305.949,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350500019:-2119.380,151.205,8706.164]"}}
    },
    ["500307"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350500019:-2119.380,151.205,8706.164]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9573:-2175.184,176.888,8664.256]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 6100,
                alias = "Npc6100",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8698:-2119.158,241.667,8482.317]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14139,
                alias = "Npc14139",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100019:-2119.158,240.007,8482.317,0.000,305.949,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["500308"] = {transmit_points = {{point_id = 1, scene_id = 1095, pos = "[1095_1:-8.574,2.863,0.172]"}}},
    ["500309"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350500019:-2119.380,151.205,8706.164]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350500018:-1911.805,52.422,9079.101]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9573:-2175.184,176.888,8664.256]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 6100,
                alias = "Npc6100",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8698:-2119.158,241.667,8482.317]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 14139,
                alias = "Npc14139",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100019:-2119.158,240.007,8482.317,0.000,305.949,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350500019:-2119.380,151.205,8706.164]"}}
    },
    ["500310"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_1:-8.574,2.863,0.172]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350500018:-1911.805,52.422,9079.101]"}}
    }
}
