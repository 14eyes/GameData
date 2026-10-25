main_id = 40185
local tbl = {}
local n = 4018518
local v = 4018501
local n2 = 4018502
local n3 = 4018503
local n4 = 4018504
local n5 = 4018505
local n6 = 4018506
local n7 = 4018507
local n8 = 4018521
local n9 = 4018508
local n10 = 4018509
local n11 = 4018510
local n12 = 4018522
local n13 = 4018511
local n14 = 4018512
local n15 = 4018513
local n16 = 4018514
local n17 = 4018516
local n18 = 4018517
local n19 = 4018519
local n20 = 4018520
tbl[1] = 4018523
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"112"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133102295,133102298,133107288"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4018501"] = {},
    ["4018502"] = {},
    ["4018503"] = {},
    ["4018504"] = {},
    ["4018505"] = {},
    ["4018506"] = {},
    ["4018507"] = {},
    ["4018509"] = {},
    ["4018510"] = {},
    ["4018511"] = {},
    ["4018512"] = {},
    ["4018513"] = {},
    ["4018516"] = {},
    ["4018517"] = {},
    ["4018518"] = {},
    ["4018519"] = {},
    ["4018520"] = {},
    ["4018521"] = {},
    ["4018522"] = {},
    ["4018523"] = {}
}

quest_data = {
    ["4018501"] = {
        npcs = {
            {
                id = 2084,
                alias = "Npc2084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10321:-621.705,226.665,333.679,0.000,197.518,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018502"] = {
        npcs = {
            {
                id = 2311,
                alias = "Npc2311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9859:1534.350,251.697,413.053]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018503"] = {
        npcs = {
            {
                id = 2311,
                alias = "Npc2311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9859:1534.350,251.697,413.053]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018504"] = {
        npcs = {
            {
                id = 2311,
                alias = "Npc2311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9859:1534.350,251.697,413.053]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018505"] = {
        npcs = {
            {
                id = 2311,
                alias = "Npc2311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9859:1534.350,251.697,413.053]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9859:1534.350,251.697,413.053]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_9871:-636.057,250.666,412.890]"}}
    },
    ["4018506"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9871:-636.057,250.666,412.890]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018507"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9872:913.376,271.480,352.230,0.000,25.210,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10330:-646.836,258.226,423.495,0.000,83.510,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2611,
                alias = "Npc2611",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]"}}
    },
    ["4018508"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2611,
                alias = "Npc2611",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4018509"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9861:1592.393,287.997,347.921]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018510"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10344:1594.186,285.149,349.387,0.000,156.245,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018511"] = {},
    ["4018512"] = {
        npcs = {
            {
                id = 15089,
                alias = "Npc15089",
                script = "Actor/Npc/TempNPC",
                pos = "[20248_11:761.164,45.637,708.248]",
                scene_id = 20248,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20248, pos = "[20248_10:218.000,90.600,503.300,0.000,-2.190,0.000]"}}
    },
    ["4018513"] = {
        npcs = {
            {
                id = 2611,
                alias = "Npc2611",
                script = "Actor/Npc/TempNPC",
                pos = "[20248_2:199.200,25.600,651.665]",
                scene_id = 20248,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[20248_2:199.200,25.600,651.665]",
                scene_id = 20248,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20248, pos = "[20248_10:218.000,90.600,503.300,0.000,-2.190,0.000]"}}
    },
    ["4018514"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_9861:1592.393,287.997,347.921]"}}},
    ["4018516"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9861:1592.393,287.997,347.921]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_9861:1592.393,287.997,347.921]"}}
    },
    ["4018517"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10120:-622.082,251.961,360.973,0.000,151.637,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4018518"] = {},
    ["4018519"] = {
        npcs = {
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10698:-623.807,251.961,362.034,0.000,55.172,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10116:-655.697,219.860,219.422]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4018520"] = {
        npcs = {
            {
                id = 2611,
                alias = "Npc2611",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10117:-622.738,226.665,328.866]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10116:-655.697,219.860,219.422]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10117:-622.738,226.665,328.866]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4018521"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2611,
                alias = "Npc2611",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10331:1685.479,280.711,329.594,0.000,272.695,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4018522"] = {},
    ["4018523"] = {}
}
