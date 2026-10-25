main_id = 8016
local tbl = {}
local n = 801611
local v = 801602
local n2 = 801603
local n3 = 801604
local n4 = 801605
local n5 = 801609
local n6 = 801610
local n7 = 801606
local n8 = 801607
local n9 = 801608
tbl[1] = 801601
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["801601"] = {},
    ["801602"] = {
        npcs = {
            {
                id = 15205,
                alias = "Npc15205",
                script = "Actor/Npc/TempNPC",
                pos = "[3_351500015:-2702.001,282.702,9941.817,0.000,174.837,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801603"] = {},
    ["801604"] = {},
    ["801605"] = {},
    ["801606"] = {},
    ["801607"] = {},
    ["801608"] = {},
    ["801609"] = {},
    ["801610"] = {},
    ["801611"] = {}
}

quest_data = {
    ["801601"] = {
        npcs = {
            {
                id = 1091,
                alias = "Npc1091",
                script = "Actor/Npc/TempNPC",
                pos = "[3_351500003:-2649.083,279.082,10084.270,0.000,46.716,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801602"] = {},
    ["801603"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_61:7.195,2.863,0.506,0.000,311.290,0.000]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["801604"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[1095_61:7.195,2.863,0.506,0.000,311.290,0.000]",
                scene_id = 1095,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1246, pos = "[20265_1:-1758.462,181.021,9843.676]"}}
    },
    ["801605"] = {
        npcs = {
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[20265_1:-1758.462,181.021,9843.676]",
                scene_id = 20265,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801606"] = {},
    ["801607"] = {
        npcs = {
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[20265_2:-1639.366,200.144,10051.730]",
                scene_id = 20265,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_351500007:-2627.257,269.245,10011.140,0.000,182.787,0.000]"}
        }
    },
    ["801608"] = {
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_351500007:-2627.257,269.245,10011.140,0.000,182.787,0.000]"}
        }
    },
    ["801609"] = {},
    ["801610"] = {
        npcs = {
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[20265_1:-1758.462,181.021,9843.676]",
                scene_id = 20265,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["801611"] = {
        npcs = {
            {
                id = 15205,
                alias = "Npc15205",
                script = "Actor/Npc/TempNPC",
                pos = "[3_351500015:-2702.001,282.702,9941.817,0.000,174.837,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
