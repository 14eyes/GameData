main_id = 602
local tbl = {}
local n = 60211
local v = 60203
local n2 = 60218
local n3 = 60217
local n4 = 60206
local n5 = 60202
local n6 = 60207
local n7 = 60219
local n8 = 60204
local n9 = 60205
local n10 = 60216
local n11 = 60214
local n12 = 60208
local n13 = 60209
local n14 = 60212
local n15 = 60213
local n16 = 60215
local n17 = 60210
tbl[1] = 60201
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
    ["60201"] = {},
    ["60202"] = {},
    ["60203"] = {
        npcs = {
            {
                id = 30564,
                alias = "Npc30564",
                script = "Actor/Npc/TempNPC",
                pos = "[1010_6:-14.325,8.994,-7.819,0.000,88.734,0.000]",
                scene_id = 1010,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["60204"] = {},
    ["60205"] = {
        npcs = {
            {
                id = 15181,
                alias = "Npc15181",
                script = "Actor/Npc/TempNPC",
                pos = "[20261_1:39.752,1.065,24.269,0.000,17.258,0.000]",
                scene_id = 20261,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["60206"] = {},
    ["60207"] = {},
    ["60208"] = {},
    ["60209"] = {},
    ["60210"] = {},
    ["60211"] = {
        npcs = {
            {
                id = 30564,
                alias = "Npc30564",
                script = "Actor/Npc/TempNPC",
                pos = "[1010_6:-14.325,8.994,-7.819,0.000,88.734,0.000]",
                scene_id = 1010,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["60212"] = {},
    ["60213"] = {},
    ["60214"] = {},
    ["60215"] = {},
    ["60217"] = {
        npcs = {
            {
                id = 15181,
                alias = "Npc15181",
                script = "Actor/Npc/TempNPC",
                pos = "[20261_1:39.752,1.065,24.269,0.000,17.258,0.000]",
                scene_id = 20261,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["60218"] = {
        npcs = {
            {
                id = 15181,
                alias = "Npc15181",
                script = "Actor/Npc/TempNPC",
                pos = "[20261_1:39.752,1.065,24.269,0.000,17.258,0.000]",
                scene_id = 20261,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["60219"] = {}
}

quest_data = {
    ["60201"] = {
        npcs = {
            {
                id = 30564,
                alias = "Npc30564",
                script = "Actor/Npc/TempNPC",
                pos = "[1010_6:-14.325,8.994,-7.819,0.000,88.734,0.000]",
                scene_id = 1010,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[1010_2:19.163,0.010,5.293,0.000,287.776,0.000]",
                scene_id = 1010,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[1010_32:17.649,0.010,10.524,0.000,242.306,0.000]",
                scene_id = 1010,
                room_id = 100402,
                data_index = 3
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[1010_31:17.495,0.010,5.702,0.000,105.847,0.000]",
                scene_id = 1010,
                room_id = 100402,
                data_index = 4
            }
        }
    },
    ["60202"] = {},
    ["60203"] = {
        npcs = {
            {
                id = 15181,
                alias = "Npc15181",
                script = "Actor/Npc/TempNPC",
                pos = "[20261_1:39.752,1.065,24.269,0.000,17.258,0.000]",
                scene_id = 20261,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["60204"] = {
        npcs = {
            {
                id = 15181,
                alias = "Npc15181",
                script = "Actor/Npc/TempNPC",
                pos = "[20261_1:39.752,1.065,24.269,0.000,17.258,0.000]",
                scene_id = 20261,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["60205"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201055:1308.629,275.177,-798.530,0.000,253.397,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_300201055:1308.629,275.177,-798.530,0.000,253.397,0.000]"}}
    },
    ["60206"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[20257_2:93.864,77.562,61.412,0.000,107.846,0.000]",
                scene_id = 20257,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60207"] = {
        npcs = {
            {
                id = 15181,
                alias = "Npc15181",
                script = "Actor/Npc/TempNPC",
                pos = "[20257_4:-1486.167,55.467,62.706]",
                scene_id = 20257,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20261, pos = "[20261_3:38.504,0.252,28.181,0.000,161.270,0.000]"}}
    },
    ["60208"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300300775:2154.761,205.050,-1076.829,0.000,228.247,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60209"] = {},
    ["60210"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_300401919:2310.570,249.990,-773.491,0.000,24.826,0.000]"}}
    },
    ["60211"] = {},
    ["60212"] = {
        transmit_points = {{point_id = 1, scene_id = 20259, pos = "[20259_27:2312.314,249.990,-765.879,0.000,40.982,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1240, pos = "[20259_25:2316.527,249.990,-761.747,0.000,208.984,0.000]"}
        }
    },
    ["60213"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[20259_25:2316.527,249.990,-761.747,0.000,208.984,0.000]",
                scene_id = 20259,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1240, pos = "[20259_27:2312.314,249.990,-765.879,0.000,40.982,0.000]"}}
    },
    ["60214"] = {},
    ["60215"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[20259_24:2308.026,249.990,-760.975,0.000,173.866,0.000]",
                scene_id = 20259,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1240, pos = "[20259_27:2312.314,249.990,-765.879,0.000,40.982,0.000]"}}
    },
    ["60216"] = {},
    ["60217"] = {},
    ["60218"] = {},
    ["60219"] = {}
}
