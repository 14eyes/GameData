main_id = 40240
local tbl = {}
local n = 4024012
local v = 4024013
local n2 = 4024020
local n3 = 4024002
local n4 = 4024024
local n5 = 4024003
local n6 = 4024017
local n7 = 4024018
local n8 = 4024019
local n9 = 4024004
local n10 = 4024025
local n11 = 4024005
local n12 = 4024021
local n13 = 4024006
local n14 = 4024026
local n15 = 4024023
local n16 = 4024015
local n17 = 4024016
local n18 = 4024029
local n19 = 4024030
local n20 = 4024014
local n21 = 4024027
local n22 = 4024007
local n23 = 4024022
local n24 = 4024008
local n25 = 4024009
local n26 = 4024028
local n27 = 4024010
local n28 = 4024011
tbl[1] = 4024001
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
tbl[21] = n19
tbl[22] = n20
tbl[23] = n21
tbl[24] = n22
tbl[25] = n23
tbl[26] = n24
tbl[27] = n25
tbl[28] = n26
tbl[29] = n27
tbl[30] = n28
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}},
        QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"201"}, {"202"}, {"203"}, {"204"}, {"205"}}
    }
}

rewind_data = {
    ["4024001"] = {},
    ["4024002"] = {},
    ["4024005"] = {},
    ["4024006"] = {},
    ["4024007"] = {},
    ["4024008"] = {},
    ["4024010"] = {},
    ["4024011"] = {},
    ["4024012"] = {},
    ["4024013"] = {},
    ["4024014"] = {},
    ["4024020"] = {},
    ["4024021"] = {},
    ["4024022"] = {},
    ["4024024"] = {},
    ["4024025"] = {},
    ["4024026"] = {},
    ["4024027"] = {},
    ["4024028"] = {}
}

quest_data = {
    ["4024001"] = {},
    ["4024002"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_64:-2764.641,225.573,-4446.038,0.000,310.664,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1318,
                pos = "[20350_64:-2764.641,225.573,-4446.038,0.000,310.664,0.000]"
            }
        }
    },
    ["4024003"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_11:-2788.585,234.469,-4436.610,0.000,85.159,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_10:-2781.939,224.254,-4431.486,0.000,96.387,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_9:-2791.067,236.037,-4425.645,0.000,122.281,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2623,
                alias = "Npc2623",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_8:-2774.511,225.262,-4431.698,0.000,2.112,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 8
            },
            {
                id = 16902,
                alias = "Npc16902",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_70:-2785.562,223.937,-4426.601,0.000,324.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 9
            },
            {
                id = 16901,
                alias = "Npc16901",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_69:-2782.354,224.029,-4436.598,0.000,257.189,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_78:-2773.074,224.619,-4443.457,0.000,323.247,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4024004"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_63:-2780.453,224.597,-4431.716,0.000,120.553,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_10:-2781.939,224.254,-4431.486,0.000,96.387,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_9:-2791.067,236.037,-4425.645,0.000,122.281,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2623,
                alias = "Npc2623",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_8:-2774.511,225.262,-4431.698,0.000,2.112,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 8
            },
            {
                id = 16902,
                alias = "Npc16902",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_70:-2785.562,223.937,-4426.601,0.000,324.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 9
            },
            {
                id = 16901,
                alias = "Npc16901",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_69:-2782.354,224.029,-4436.598,0.000,257.189,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_78:-2773.074,224.619,-4443.457,0.000,323.247,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4024005"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_76:-2762.024,226.020,-4432.826,0.000,50.779,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_10:-2781.939,224.254,-4431.486,0.000,96.387,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_71:-2779.947,224.706,-4429.722,0.000,183.707,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_72:-2779.985,224.640,-4432.681,0.000,336.300,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2623,
                alias = "Npc2623",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_73:-2779.260,224.752,-4431.770,0.000,307.640,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_74:-2779.047,224.752,-4430.537,0.000,270.662,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_72:-2779.985,224.640,-4432.681,0.000,336.300,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_73:-2779.260,224.752,-4431.770,0.000,307.640,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 10
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20350, pos = "[20350_1:-2662.909,208.786,-4148.390]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1318, pos = "[20350_1:-2662.909,208.786,-4148.390]"}}
    },
    ["4024006"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_1:-2662.909,208.786,-4148.390]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20350, pos = "[20350_1:-2662.909,208.786,-4148.390]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1318, pos = "[20350_1:-2662.909,208.786,-4148.390]"}}
    },
    ["4024007"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_79:-2668.016,209.090,-4154.849,0.000,58.812,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_3:-2648.504,209.215,-4128.519,0.000,250.585,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_5:-2643.861,212.183,-4155.492,0.000,281.893,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2623,
                alias = "Npc2623",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_6:-2651.348,219.188,-4132.469,0.000,297.780,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_2:-2651.489,219.196,-4131.410,0.000,249.892,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_4:-2664.442,207.791,-4141.075,0.000,100.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 8
            },
            {
                id = 16925,
                alias = "Npc16925",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_3:-2648.504,209.215,-4128.519,0.000,250.585,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 9
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_5:-2643.861,212.183,-4155.492,0.000,281.893,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_6:-2651.348,219.188,-4132.469,0.000,297.780,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 11
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20350, pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1318, pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]"}
        }
    },
    ["4024008"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20350, pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1318, pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]"}
        }
    },
    ["4024009"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4024010"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_15488:-2807.599,200.804,-4582.173,0.000,49.152,0.000]"}}
    },
    ["4024011"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_15488:-2807.599,200.804,-4582.173,0.000,49.152,0.000]"}}
    },
    ["4024012"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15488:-2807.599,200.804,-4582.173,0.000,49.152,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4024013"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15488:-2807.599,200.804,-4582.173,0.000,49.152,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17222:-2811.535,201.481,-4581.472,0.000,210.812,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17219:-2811.320,201.461,-4583.215,0.000,292.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2623,
                alias = "Npc2623",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17220:-2812.747,201.472,-4581.677,0.000,136.165,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17221:-2813.023,201.481,-4583.173,0.000,84.151,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17219:-2811.320,201.461,-4583.215,0.000,292.199,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17220:-2812.747,201.472,-4581.677,0.000,136.165,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        },
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1318,
                pos = "[20350_64:-2764.641,225.573,-4446.038,0.000,310.664,0.000]"
            }
        }
    },
    ["4024014"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_1:-2662.909,208.786,-4148.390]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_77:-2659.724,209.054,-4140.557,0.000,110.497,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_77:-2659.724,209.054,-4140.557,0.000,110.497,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20350, pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]"}
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1318, pos = "[20350_1:-2662.909,208.786,-4148.390]"}}
    },
    ["4024015"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024016"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024017"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_11:-2788.585,234.469,-4436.610,0.000,85.159,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_10:-2781.939,224.254,-4431.486,0.000,96.387,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_9:-2791.067,236.037,-4425.645,0.000,122.281,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2623,
                alias = "Npc2623",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_8:-2774.511,225.262,-4431.698,0.000,2.112,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 8
            },
            {
                id = 16902,
                alias = "Npc16902",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_70:-2785.562,223.937,-4426.601,0.000,324.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 9
            },
            {
                id = 16901,
                alias = "Npc16901",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_69:-2782.354,224.029,-4436.598,0.000,257.189,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_78:-2773.074,224.619,-4443.457,0.000,323.247,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4024018"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_11:-2788.585,234.469,-4436.610,0.000,85.159,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_10:-2781.939,224.254,-4431.486,0.000,96.387,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_9:-2791.067,236.037,-4425.645,0.000,122.281,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2623,
                alias = "Npc2623",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_8:-2774.511,225.262,-4431.698,0.000,2.112,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 8
            },
            {
                id = 16902,
                alias = "Npc16902",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_70:-2785.562,223.937,-4426.601,0.000,324.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 9
            },
            {
                id = 16901,
                alias = "Npc16901",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_69:-2782.354,224.029,-4436.598,0.000,257.189,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_78:-2773.074,224.619,-4443.457,0.000,323.247,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4024019"] = {
        npcs = {
            {
                id = 1329,
                alias = "Npc1329",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_11:-2788.585,234.469,-4436.610,0.000,85.159,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1069,
                alias = "Npc1069",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_10:-2781.939,224.254,-4431.486,0.000,96.387,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_9:-2791.067,236.037,-4425.645,0.000,122.281,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 6
            },
            {
                id = 2623,
                alias = "Npc2623",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10233,
                alias = "Npc10233",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_8:-2774.511,225.262,-4431.698,0.000,2.112,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 8
            },
            {
                id = 16902,
                alias = "Npc16902",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_70:-2785.562,223.937,-4426.601,0.000,324.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 9
            },
            {
                id = 16901,
                alias = "Npc16901",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_69:-2782.354,224.029,-4436.598,0.000,257.189,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_78:-2773.074,224.619,-4443.457,0.000,323.247,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 11
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_12:-2773.762,224.619,-4442.738,0.000,218.575,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1066,
                alias = "Npc1066",
                script = "Actor/Npc/TempNPC",
                pos = "[20350_13:-2773.327,225.330,-4431.924,0.000,304.838,0.000]",
                scene_id = 20350,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4024020"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1318,
                pos = "[20350_64:-2764.641,225.573,-4446.038,0.000,310.664,0.000]"
            }
        }
    },
    ["4024021"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20350, pos = "[20350_1:-2662.909,208.786,-4148.390]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1318, pos = "[20350_1:-2662.909,208.786,-4148.390]"}}
    },
    ["4024022"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 20350, pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1318, pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]"}
        }
    },
    ["4024023"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4024024"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1318,
                pos = "[20350_64:-2764.641,225.573,-4446.038,0.000,310.664,0.000]"
            }
        }
    },
    ["4024025"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {
            {
                point_id = 1,
                dungeon_id = 1318,
                pos = "[20350_64:-2764.641,225.573,-4446.038,0.000,310.664,0.000]"
            }
        }
    },
    ["4024026"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1318, pos = "[20350_1:-2662.909,208.786,-4148.390]"}}
    },
    ["4024027"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1318, pos = "[20350_1:-2662.909,208.786,-4148.390]"}}
    },
    ["4024028"] = {
        npcs = {
            {
                id = 16607,
                alias = "Npc16607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17099:-2815.770,201.429,-4594.176,0.000,24.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16610,
                alias = "Npc16610",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17216:-2814.725,201.538,-4592.665,0.000,208.926,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1318, pos = "[20350_7:-2570.702,200.425,-4060.208,0.000,210.517,0.000]"}
        }
    },
    ["4024029"] = {},
    ["4024030"] = {}
}
