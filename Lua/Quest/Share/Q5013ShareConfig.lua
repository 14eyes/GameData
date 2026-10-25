main_id = 5013
local tbl = {}
local n = 501302
local v = 501303
local n2 = 501309
local n3 = 501304
local n4 = 501305
local n5 = 501312
local n6 = 501306
local n7 = 501307
local n8 = 501313
local n9 = 501308
local n10 = 501310
local n11 = 501311
tbl[1] = 501301
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["501301"] = {},
    ["501303"] = {},
    ["501305"] = {},
    ["501307"] = {},
    ["501308"] = {},
    ["501309"] = {},
    ["501310"] = {},
    ["501312"] = {}
}

quest_data = {
    ["501301"] = {
        transmit_points = {
            {point_id = 1, scene_id = 20238, pos = "[20238_224:-2429.970,222.177,8986.487,0.000,52.123,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1222, pos = "[20238_224:-2429.970,222.177,8986.487,0.000,52.123,0.000]"}
        }
    },
    ["501302"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1222, pos = "[20238_224:-2429.970,222.177,8986.487,0.000,52.123,0.000]"}
        }
    },
    ["501303"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1222, pos = "[20238_224:-2429.970,222.177,8986.487,0.000,52.123,0.000]"}
        }
    },
    ["501304"] = {
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1222,
                pos = "[20238_142:-2341.729,217.788,8961.858,0.000,166.299,0.000]"
            }
        }
    },
    ["501305"] = {
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1222,
                pos = "[20238_390:-2189.679,172.000,8643.614,0.000,175.231,0.000]"
            }
        }
    },
    ["501306"] = {
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1222,
                pos = "[20238_391:-2192.003,172.000,8531.117,0.000,159.050,0.000]"
            }
        }
    },
    ["501307"] = {
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1222, pos = "[20238_89:-1707.495,51.228,8200.341,0.000,130.798,0.000]"}
        }
    },
    ["501308"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[20238_132:-1666.180,49.879,8164.335,0.000,178.647,0.000]",
                scene_id = 20238,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1222, pos = "[20238_133:-1665.806,49.534,8161.581]"}}
    },
    ["501309"] = {
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1222,
                pos = "[20238_142:-2341.729,217.788,8961.858,0.000,166.299,0.000]"
            }
        }
    },
    ["501310"] = {
        transmit_points = {
            {point_id = 1, scene_id = 20238, pos = "[20238_392:-1877.572,60.377,9004.780,0.000,155.734,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1222, pos = "[20238_130:-1875.741,60.377,9000.955,0.000,147.058,0.000]"}
        }
    },
    ["501311"] = {
        transmit_points = {{point_id = 3, scene_id = 1099, pos = "[1099_30:12.269,8.243,-2.286]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1222, pos = "[20238_130:-1875.741,60.377,9000.955,0.000,147.058,0.000]"}
        }
    },
    ["501312"] = {
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1222,
                pos = "[20238_391:-2192.003,172.000,8531.117,0.000,159.050,0.000]"
            }
        }
    },
    ["501313"] = {}
}
