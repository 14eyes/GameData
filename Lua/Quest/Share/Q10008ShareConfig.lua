main_id = 10008
local tbl = {}
local n = 1000812
local v = 1000809
local n2 = 1000810
local n3 = 1000802
local n4 = 1000807
local n5 = 1000808
local n6 = 1000803
local n7 = 1000811
local n8 = 1000804
local n9 = 1000805
local n10 = 1000806
tbl[1] = 1000801
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1000801"] = {},
    ["1000803"] = {},
    ["1000806"] = {},
    ["1000810"] = {},
    ["1000811"] = {},
    ["1000812"] = {}
}

quest_data = {
    ["1000801"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1279, pos = "[20301_13:2011.392,255.837,-312.075]"}}
    },
    ["1000802"] = {},
    ["1000803"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20301_2:2106.889,254.216,-403.485,0.000,112.073,0.000]",
                scene_id = 20301,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1279, pos = "[20301_18:2116.375,252.953,-399.189,0.000,309.108,0.000]"}
        }
    },
    ["1000804"] = {},
    ["1000805"] = {},
    ["1000806"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20301_1:1990.616,250.190,-267.299,0.000,82.650,0.000]",
                scene_id = 20301,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1279, pos = "[20301_19:1990.948,250.190,-277.868]"}}
    },
    ["1000807"] = {},
    ["1000808"] = {},
    ["1000809"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20301_15:1990.393,250.190,-255.634,0.000,329.983,0.000]",
                scene_id = 20301,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1176,
                alias = "WolfBoss",
                script = "Actor/Npc/TempNPC",
                pos = "[20301_16:1987.980,250.190,-250.935,0.000,150.070,0.000]",
                scene_id = 20301,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20301, pos = "[20301_7:2140.410,228.669,-451.306,0.000,45.086,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1279, pos = "[20301_7:2140.410,228.669,-451.306,0.000,45.086,0.000]"}}
    },
    ["1000810"] = {
        transmit_points = {{point_id = 1, scene_id = 20301, pos = "[20301_7:2140.410,228.669,-451.306,0.000,45.086,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1279, pos = "[20301_7:2140.410,228.669,-451.306,0.000,45.086,0.000]"}}
    },
    ["1000811"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1279, pos = "[20301_18:2116.375,252.953,-399.189,0.000,309.108,0.000]"}
        }
    },
    ["1000812"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1279, pos = "[20301_13:2011.392,255.837,-312.075]"}}
    }
}
