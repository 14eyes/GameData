main_id = 5034
local tbl = {}
local n = 503407
local v = 503402
local n2 = 503403
local n3 = 503408
local n4 = 503409
local n5 = 503404
local n6 = 503405
local n7 = 503406
tbl[1] = 503401
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
    ["503401"] = {},
    ["503402"] = {},
    ["503403"] = {},
    ["503404"] = {},
    ["503405"] = {},
    ["503406"] = {},
    ["503407"] = {},
    ["503408"] = {},
    ["503409"] = {}
}

quest_data = {
    ["503401"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100260:-1854.164,119.271,8718.281]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350100260:-1854.164,119.271,8718.281]"}}
    },
    ["503402"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[20246_1:794.741,214.539,348.748]",
                scene_id = 20246,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["503403"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[20246_1:794.741,214.539,348.748]",
                scene_id = 20246,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20245, pos = "[20245_10:-1435.056,165.400,7250.433]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1229, pos = "[20245_10:-1435.056,165.400,7250.433]"}}
    },
    ["503404"] = {
        transmit_points = {
            {point_id = 1, scene_id = 20245, pos = "[20245_14:-878.157,255.532,9244.184]"},
            {point_id = 2, scene_id = 20245, pos = "[20245_15:-2836.236,394.361,8677.882,0.000,87.363,0.000]"}
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1229, pos = "[20245_10:-1435.056,165.400,7250.433]"}}
    },
    ["503405"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[20245_11:-2614.690,212.117,9161.485,0.000,240.400,0.000]",
                scene_id = 20245,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350100262:-1892.114,101.604,8645.300]"}}
    },
    ["503406"] = {
        npcs = {
            {
                id = 1089,
                alias = "Npc1089",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100375:-1876.837,111.835,8672.726]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_350100262:-1892.114,101.604,8645.300]"}}
    },
    ["503407"] = {},
    ["503408"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1229, pos = "[20245_10:-1435.056,165.400,7250.433]"}}
    },
    ["503409"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1229, pos = "[20245_10:-1435.056,165.400,7250.433]"}}
    }
}
