main_id = 7009
local tbl = {}
local n = 700920
local v = 700902
local n2 = 700903
local n3 = 700904
local n4 = 700905
local n5 = 700906
local n6 = 700907
local n7 = 700922
local n8 = 700908
local n9 = 700921
local n10 = 700909
local n11 = 700925
local n12 = 700910
local n13 = 700923
local n14 = 700926
local n15 = 700911
local n16 = 700912
local n17 = 700919
local n18 = 700913
local n19 = 700916
local n20 = 700914
local n21 = 700915
local n22 = 700918
local n23 = 700924
local n24 = 700917
tbl[1] = 700901
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["700901"] = {},
    ["700902"] = {},
    ["700903"] = {},
    ["700904"] = {},
    ["700905"] = {},
    ["700906"] = {},
    ["700907"] = {},
    ["700908"] = {},
    ["700909"] = {
        avatar = {
            offline_dungeon_id = 1333,
            scene_id = 20363,
            pos = "[20363_5:536.366,335.005,-3369.316,0.000,90.922,0.000]"
        }
    },
    ["700910"] = {},
    ["700911"] = {},
    ["700912"] = {},
    ["700913"] = {},
    ["700914"] = {},
    ["700915"] = {},
    ["700916"] = {},
    ["700917"] = {},
    ["700918"] = {
        avatar = {
            offline_dungeon_id = 0,
            scene_id = 3,
            pos = "[3_371200004:10011.730,397.368,6467.993,0.000,207.551,0.000]"
        }
    },
    ["700919"] = {},
    ["700920"] = {},
    ["700921"] = {
        avatar = {
            offline_dungeon_id = 1333,
            scene_id = 20363,
            pos = "[20363_5:536.366,335.005,-3369.316,0.000,90.922,0.000]"
        }
    },
    ["700922"] = {},
    ["700923"] = {},
    ["700924"] = {},
    ["700926"] = {}
}

quest_data = {
    ["700901"] = {
        npcs = {
            {
                id = 1333,
                alias = "Npc1333",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_1:-0.442,-4.302,-404.175,0.000,183.368,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_1:-0.442,-4.302,-404.175,0.000,183.368,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200013:9350.154,378.180,6504.522]"}}
    },
    ["700902"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1158_1:-0.004,0.000,25.460]",
                scene_id = 1158,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1322, pos = "[20353_2:9816.205,405.593,6662.357,0.000,71.710,0.000]"}}
    },
    ["700903"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1322, pos = "[20353_2:9816.205,405.593,6662.357,0.000,71.710,0.000]"}}
    },
    ["700904"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[20353_2:9816.205,405.593,6662.357,0.000,71.710,0.000]",
                scene_id = 20353,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1322, pos = "[20353_2:9816.205,405.593,6662.357,0.000,71.710,0.000]"}}
    },
    ["700905"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1322, pos = "[20353_2:9816.205,405.593,6662.357,0.000,71.710,0.000]"}}
    },
    ["700906"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_1:492.727,325.671,179.488]"}}
    },
    ["700907"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_1:492.727,325.671,179.488]"}}
    },
    ["700908"] = {
        npcs = {
            {
                id = 17291,
                alias = "Npc17291",
                script = "Actor/Npc/TempNPC",
                pos = "[20363_2:428.989,308.682,627.594,0.000,136.164,0.000]",
                scene_id = 20363,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    skipCloseToGround = true,
                    hideModel = true,
                    disableMoveCollider = true,
                    dontTickPause = true,
                    zeroLodTransitionTime = true,
                    addPhysicMaterial = true,
                    lookAtParam = {lockHeadControl = true, lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    emotionParam = {autoBlink = true}
                }
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20363, pos = "[20363_5:536.366,335.005,-3369.316,0.000,90.922,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_2:428.989,308.682,627.594,0.000,136.164,0.000]"}}
    },
    ["700909"] = {
        transmit_points = {{point_id = 1, scene_id = 20363, pos = "[20363_2:428.989,308.682,627.594,0.000,136.164,0.000]"}}
    },
    ["700910"] = {
        npcs = {
            {
                id = 17291,
                alias = "Npc17291",
                script = "Actor/Npc/TempNPC",
                pos = "[20363_2:428.989,308.682,627.594,0.000,136.164,0.000]",
                scene_id = 20363,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20363, pos = "[20363_2:428.989,308.682,627.594,0.000,136.164,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_2:428.989,308.682,627.594,0.000,136.164,0.000]"}}
    },
    ["700911"] = {
        npcs = {
            {
                id = 17286,
                alias = "Npc17286",
                script = "Actor/Npc/TempNPC",
                pos = "[20363_3:494.735,196.141,572.973]",
                scene_id = 20363,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    skipCloseToGround = true,
                    disableMoveCollider = true,
                    dontTickPause = true,
                    zeroLodTransitionTime = true,
                    addPhysicMaterial = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    emotionParam = {autoBlink = true}
                }
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_3:494.735,196.141,572.973]"}}
    },
    ["700912"] = {
        npcs = {
            {
                id = 1333,
                alias = "Npc1333",
                script = "Actor/Npc/TempNPC",
                pos = "[20363_8:502.864,196.298,553.750,0.000,141.667,0.000]",
                scene_id = 20363,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    dontTickPause = true,
                    zeroLodTransitionTime = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    emotionParam = {autoBlink = true}
                }
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_4:457.699,196.141,585.279,0.000,85.603,0.000]"}}
    },
    ["700913"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200011:9874.700,408.638,6685.214,0.000,258.932,0.000]"}}
    },
    ["700914"] = {
        npcs = {
            {
                id = 16641,
                alias = "Npc16641",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200003:9673.845,345.834,6847.851]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200004:10011.730,397.368,6467.993,0.000,207.551,0.000]"}}
    },
    ["700915"] = {},
    ["700916"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200011:9874.700,408.638,6685.214,0.000,258.932,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200003:9673.845,345.834,6847.851]"}}
    },
    ["700917"] = {
        npcs = {
            {
                id = 17289,
                alias = "Npc17289",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200002:9536.964,387.630,6556.668]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["700918"] = {},
    ["700919"] = {
        npcs = {
            {
                id = 1330,
                alias = "Npc1330",
                script = "Actor/Npc/TempNPC",
                pos = "[20363_8:502.864,196.298,553.750,0.000,141.667,0.000]",
                scene_id = 20363,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_4:457.699,196.141,585.279,0.000,85.603,0.000]"}}
    },
    ["700920"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200013:9350.154,378.180,6504.522]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200013:9350.154,378.180,6504.522]"}}
    },
    ["700921"] = {
        npcs = {
            {
                id = 17291,
                alias = "Npc17291",
                script = "Actor/Npc/TempNPC",
                pos = "[20363_5:536.366,335.005,-3369.316,0.000,90.922,0.000]",
                scene_id = 20363,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20363, pos = "[20363_5:536.366,335.005,-3369.316,0.000,90.922,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_5:536.366,335.005,-3369.316,0.000,90.922,0.000]"}}
    },
    ["700922"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_6:614.440,274.123,449.100]"}}
    },
    ["700923"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1333, pos = "[20363_2:428.989,308.682,627.594,0.000,136.164,0.000]"}}
    },
    ["700924"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200002:9536.964,387.630,6556.668]"}}},
    ["700925"] = {
        npcs = {
            {
                id = 17256,
                alias = "Npc17256",
                script = "Actor/Npc/TempNPC",
                pos = "[20363_11:553.342,340.031,-3369.307]",
                scene_id = 20363,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["700926"] = {}
}
