main_id = 7019
local tbl = {}
local n = 701901
local v = 701909
local n2 = 701919
local n3 = 701912
local n4 = 701902
local n5 = 701903
local n6 = 701913
local n7 = 701914
local n8 = 701915
local n9 = 701916
local n10 = 701917
local n11 = 701918
local n12 = 701910
local n13 = 701904
local n14 = 701905
local n15 = 701906
local n16 = 701907
local n17 = 701908
tbl[1] = 701911
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["701901"] = {},
    ["701902"] = {},
    ["701903"] = {},
    ["701904"] = {},
    ["701905"] = {},
    ["701906"] = {
        npcs = {
            {
                id = 1330,
                alias = "Npc1330",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_54:465.056,57.448,656.505,0.000,30.000,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_53:464.596,56.106,650.187,0.000,8.307,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_56:468.407,56.145,651.212,0.000,340.697,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_82:465.909,56.106,648.848,0.000,350.357,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 4
            },
            {
                id = 16569,
                alias = "Npc16569",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_57:462.448,56.088,648.116,0.000,22.286,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 5
            },
            {
                id = 16639,
                alias = "Npc16639",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_106:461.881,56.137,649.761,0.000,15.628,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["701907"] = {},
    ["701908"] = {},
    ["701909"] = {},
    ["701910"] = {},
    ["701911"] = {},
    ["701912"] = {},
    ["701913"] = {},
    ["701914"] = {},
    ["701915"] = {},
    ["701916"] = {},
    ["701917"] = {},
    ["701918"] = {},
    ["701919"] = {}
}

quest_data = {
    ["701901"] = {
        npcs = {
            {
                id = 1330,
                alias = "Npc1330",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_6:469.834,225.919,670.370,0.000,333.841,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_28:465.501,225.878,656.833]"}}
    },
    ["701902"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_7:465.733,52.195,584.519]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_81:465.626,52.195,582.277,0.000,189.481,0.000]"}}
    },
    ["701903"] = {},
    ["701904"] = {
        npcs = {
            {
                id = 1330,
                alias = "Npc1330",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_33:465.830,56.007,630.220,0.000,182.654,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_34:467.390,56.007,629.530,0.000,228.548,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_36:467.540,55.989,627.270,0.000,247.859,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_35:465.580,56.029,625.600,0.000,2.709,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 4
            },
            {
                id = 16569,
                alias = "Npc16569",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_37:464.010,56.007,626.700,0.000,50.142,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 5
            },
            {
                id = 16639,
                alias = "Npc16639",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_38:464.013,56.031,629.114,0.000,133.094,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_36:467.540,55.989,627.270,0.000,247.859,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 7
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_7:465.733,52.195,584.519]"}}
    },
    ["701905"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_7:465.733,52.195,584.519]"}}
    },
    ["701906"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_12:465.513,58.454,657.989]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_56:468.407,56.145,651.212,0.000,340.697,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20367, pos = "[20367_13:443.977,54.665,662.410,0.000,180.000,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_30:465.530,56.105,646.424]"}}
    },
    ["701907"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_15:465.486,57.448,657.167]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_30:465.530,56.105,646.424]"}}
    },
    ["701908"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_15:465.486,57.448,657.167]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_30:465.530,56.105,646.424]"}}
    },
    ["701909"] = {
        npcs = {
            {
                id = 1330,
                alias = "Npc1330",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_6:469.834,225.919,670.370,0.000,333.841,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_17:465.512,225.981,670.328]",
                scene_id = 20367,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_28:465.501,225.878,656.833]"}}
    },
    ["701910"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_7:465.733,52.195,584.519]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_81:465.626,52.195,582.277,0.000,189.481,0.000]"}}
    },
    ["701911"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_29:465.418,180.867,485.658,0.000,180.000,0.000]"}}
    },
    ["701912"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_31:419.911,251.858,467.985,0.000,43.424,0.000]"}}
    },
    ["701913"] = {},
    ["701914"] = {},
    ["701915"] = {},
    ["701916"] = {},
    ["701917"] = {},
    ["701918"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_81:465.626,52.195,582.277,0.000,189.481,0.000]"}}
    },
    ["701919"] = {
        transmit_points = {{point_id = 1, scene_id = 20367, pos = "[20367_31:419.911,251.858,467.985,0.000,43.424,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_108:465.222,219.879,590.090,0.000,180.000,0.000]"}}
    }
}
