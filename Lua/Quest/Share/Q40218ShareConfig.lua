main_id = 40218
local tbl = {}
local n = 4021802
local v = 4021803
local n2 = 4021804
local n3 = 4021818
local n4 = 4021820
local n5 = 4021805
local n6 = 4021817
local n7 = 4021808
local n8 = 4021806
local n9 = 4021807
local n10 = 4021819
local n11 = 4021809
local n12 = 4021812
local n13 = 4021810
local n14 = 4021811
local n15 = 4021814
local n16 = 4021813
local n17 = 4021815
local n18 = 4021816
tbl[1] = 4021801
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133001259,133002183,133001267,133001230"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10523"}, {"10524"}, {"173"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4021801"] = {},
    ["4021802"] = {},
    ["4021803"] = {},
    ["4021804"] = {},
    ["4021805"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_9:1379.857,271.534,-1194.949,0.000,273.592,0.000]"
        }
    },
    ["4021809"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_10:1280.043,271.358,-1202.227,0.000,302.159,0.000]"
        }
    },
    ["4021813"] = {},
    ["4021814"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_67:1212.092,309.710,-1076.249,0.000,338.711,0.000]"
        }
    },
    ["4021815"] = {},
    ["4021816"] = {},
    ["4021818"] = {},
    ["4021819"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_10:1280.043,271.358,-1202.227,0.000,302.159,0.000]"
        }
    }
}

quest_data = {
    ["4021801"] = {},
    ["4021802"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100523:1474.304,267.601,-1106.727,0.000,301.077,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100524:1473.330,267.601,-1106.230,0.000,121.224,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021803"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100536:1474.675,267.630,-1112.320,0.000,125.860,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16014,
                alias = "Npc16014",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100498:1377.171,292.112,-1067.103]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4021804"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100499:1416.191,268.190,-1166.766,0.000,237.863,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100504:1412.425,268.417,-1169.183,0.000,55.172,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021805"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021806"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021807"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021808"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021809"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021810"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[20290_3:1214.810,309.113,-1076.533]",
                scene_id = 20290,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021811"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[20290_3:1214.810,309.113,-1076.533]",
                scene_id = 20290,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021812"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[20290_3:1214.810,309.113,-1076.533]",
                scene_id = 20290,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021813"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100530:1286.385,271.765,-1209.739,0.000,203.795,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100530:1286.385,271.765,-1209.739,0.000,203.795,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100533:1283.751,272.250,-1213.163,0.000,40.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100534:1288.052,272.433,-1213.456,0.000,335.212,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100532:1285.968,272.197,-1213.556,0.000,7.433,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_300100535:1492.208,266.875,-1083.619,0.000,249.315,0.000]"}}
    },
    ["4021814"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[20290_5:1174.935,407.147,-1022.856]",
                scene_id = 20290,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20290, pos = "[20290_80:1204.781,375.468,-949.055,0.000,186.256,0.000]"}}
    },
    ["4021815"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100530:1286.385,271.765,-1209.739,0.000,203.795,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100530:1286.385,271.765,-1209.739,0.000,203.795,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100533:1283.751,272.250,-1213.163,0.000,40.265,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100534:1288.052,272.433,-1213.456,0.000,335.212,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100532:1285.968,272.197,-1213.556,0.000,7.433,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_300100530:1286.385,271.765,-1209.739,0.000,203.795,0.000]"}}
    },
    ["4021816"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100522:1474.078,267.538,-1104.397,0.000,286.363,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100536:1474.675,267.630,-1112.320,0.000,125.860,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100522:1474.078,267.538,-1104.397,0.000,286.363,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100522:1474.078,267.538,-1104.397,0.000,286.363,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100522:1474.078,267.538,-1104.397,0.000,286.363,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021817"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021818"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100558:1376.807,271.280,-1192.927,0.000,229.851,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100557:1375.245,271.196,-1193.925,0.000,155.874,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 16290,
                alias = "Npc16290",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100566:1394.509,272.201,-1190.651,0.000,82.245,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1270, pos = "[20290_9:1379.857,271.534,-1194.949,0.000,273.592,0.000]"}
        }
    },
    ["4021819"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4021820"] = {
        npcs = {
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100556:1375.964,271.207,-1195.401,0.000,339.354,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100525:1378.446,292.412,-1071.589,0.000,357.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100502:1414.440,268.218,-1167.847,0.000,217.554,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100559:1395.575,272.179,-1190.413,0.000,260.705,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100505:1413.924,268.428,-1170.027,0.000,12.249,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
