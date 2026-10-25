main_id = 40220
local tbl = {}
local n = 4022002
local v = 4022016
local n2 = 4022003
local n3 = 4022004
local n4 = 4022005
local n5 = 4022006
local n6 = 4022007
local n7 = 4022018
local n8 = 4022008
local n9 = 4022013
local n10 = 4022009
local n11 = 4022019
local n12 = 4022023
local n13 = 4022010
local n14 = 4022011
local n15 = 4022020
local n16 = 4022017
local n17 = 4022021
local n18 = 4022014
local n19 = 4022015
local n20 = 4022012
local n21 = 4022022
tbl[1] = 4022001
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133001248,133002183,133002185"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"10523"}, {"10524"}, {"173"}, {"174"}, {"175"}}
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4022001"] = {},
    ["4022002"] = {},
    ["4022003"] = {},
    ["4022005"] = {},
    ["4022006"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_78:1365.522,270.347,-1195.906,0.000,244.160,0.000]"
        }
    },
    ["4022008"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_76:1209.724,311.273,-1072.198,0.000,336.126,0.000]"
        }
    },
    ["4022010"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_77:1166.766,407.121,-1013.797,0.000,319.170,0.000]"
        }
    },
    ["4022012"] = {},
    ["4022013"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_76:1209.724,311.273,-1072.198,0.000,336.126,0.000]"
        }
    },
    ["4022014"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_79:1308.582,292.458,-1042.814,0.000,180.422,0.000]"
        }
    },
    ["4022015"] = {},
    ["4022016"] = {},
    ["4022017"] = {
        avatar = {
            offline_dungeon_id = 1270,
            scene_id = 20290,
            pos = "[20290_75:1221.208,307.440,-1078.634,0.000,43.763,0.000]"
        }
    }
}

quest_data = {
    ["4022001"] = {},
    ["4022002"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100546:1522.503,266.863,-1076.223,0.000,110.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100547:1523.660,266.939,-1076.554,0.000,289.086,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4022003"] = {
        npcs = {
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100548:1471.534,267.636,-1112.282,0.000,193.535,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16229,
                alias = "Npc16229",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100567:1471.328,267.636,-1111.510,0.000,156.134,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4022004"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1270, pos = "[20290_11:1364.906,270.267,-1196.466,0.000,69.807,0.000]"}
        }
    },
    ["4022005"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16014,
                alias = "Npc16014",
                script = "Actor/Npc/TempNPC",
                pos = "[20290_6:1368.533,270.464,-1195.226,0.000,245.076,0.000]",
                scene_id = 20290,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4022006"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022007"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022008"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20290, pos = "[20290_80:1204.781,375.468,-949.055,0.000,186.256,0.000]"}}
    },
    ["4022009"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022010"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20290, pos = "[20290_81:1176.659,376.074,-967.979,0.000,115.671,0.000]"}}
    },
    ["4022011"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022012"] = {
        npcs = {
            {
                id = 16014,
                alias = "Npc16014",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14530:1473.543,266.852,-1100.406,0.000,50.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022013"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20290, pos = "[20290_80:1204.781,375.468,-949.055,0.000,186.256,0.000]"}}
    },
    ["4022014"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022015"] = {
        npcs = {
            {
                id = 15853,
                alias = "Npc15853",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14600:1545.945,275.521,-1036.308,0.268,94.444,2.516]"}}
    },
    ["4022016"] = {
        npcs = {
            {
                id = 15854,
                alias = "Npc15854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100548:1471.534,267.636,-1112.282,0.000,193.535,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16229,
                alias = "Npc16229",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100567:1471.328,267.636,-1111.510,0.000,156.134,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1098,
                alias = "Npc1098",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100549:1472.954,267.636,-1111.212,0.000,197.733,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100550:1471.863,267.636,-1110.612,0.000,181.015,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4022017"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022018"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022019"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022020"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022021"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4022022"] = {},
    ["4022023"] = {
        npcs = {
            {
                id = 1670,
                alias = "Npc1670",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14599:1550.489,275.705,-1036.686,0.000,82.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
