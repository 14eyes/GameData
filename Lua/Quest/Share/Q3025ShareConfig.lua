main_id = 3025
local tbl = {}
local n = 302502
local v = 302516
local n2 = 302514
local n3 = 302515
local n4 = 302503
local n5 = 302504
local n6 = 302513
local n7 = 302505
local n8 = 302517
local n9 = 302506
local n10 = 302507
local n11 = 302508
local n12 = 302509
local n13 = 302510
local n14 = 302511
local n15 = 302512
tbl[1] = 302501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133303482"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133303483"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133303666"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM = {}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["302501"] = {},
    ["302502"] = {},
    ["302503"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302506"] = {},
    ["302508"] = {},
    ["302509"] = {},
    ["302510"] = {},
    ["302511"] = {},
    ["302512"] = {},
    ["302515"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1052_7",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["302501"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302501_T302501_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["302502"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "T302502_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302502_T302502_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["302503"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12870,
                alias = "sneakAI1",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12870",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12871,
                alias = "sneakAI2",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12871",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12695,
                alias = "Npc12695",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N12695",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12872,
                alias = "Npc12872",
                script = "Actor/Npc/AQ3025SneakAI2",
                pos = "Q302504_N12872",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12873,
                alias = "Npc12873",
                script = "Actor/Npc/AQ3025SneakAI3",
                pos = "Q302504_N12873",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12806,
                alias = "Npc12806",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12806",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12807,
                alias = "Npc12807",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12807",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 12836,
                alias = "Npc12836",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12836",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 12838,
                alias = "Npc12838",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12838",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12960,
                alias = "Npc12960",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12960",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12961,
                alias = "Npc12961",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12961",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 12962,
                alias = "Npc12962",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12962",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 12965,
                alias = "Npc12965",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12965",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 12971,
                alias = "Npc12971",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12971",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 12972,
                alias = "Npc12972",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12972",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            },
            {
                id = 12973,
                alias = "Npc12973",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12973",
                scene_id = 3,
                room_id = 0,
                data_index = 18
            },
            {
                id = 12974,
                alias = "Npc12974",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12974",
                scene_id = 3,
                room_id = 0,
                data_index = 19
            },
            {
                id = 12975,
                alias = "Npc12975",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12975",
                scene_id = 3,
                room_id = 0,
                data_index = 20
            },
            {
                id = 12976,
                alias = "Npc12976",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12976",
                scene_id = 3,
                room_id = 0,
                data_index = 21
            },
            {
                id = 12977,
                alias = "Npc12977",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12977",
                scene_id = 3,
                room_id = 0,
                data_index = 22
            },
            {
                id = 12978,
                alias = "Npc12978",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12978",
                scene_id = 3,
                room_id = 0,
                data_index = 23
            },
            {
                id = 12088,
                alias = "Npc12088",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 24
            },
            {
                id = 13068,
                alias = "Npc13068",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 25
            },
            {
                id = 12870,
                alias = "Npc12870",
                script = "Actor/Npc/TempNPC",
                pos = "Q302504_N12872",
                scene_id = 3,
                room_id = 0,
                data_index = 26
            },
            {
                id = 12871,
                alias = "Npc12871",
                script = "Actor/Npc/TempNPC",
                pos = "Q302504_N12873",
                scene_id = 3,
                room_id = 0,
                data_index = 27
            },
            {
                id = 12806,
                alias = "Npc12806",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12971",
                scene_id = 3,
                room_id = 0,
                data_index = 28
            },
            {
                id = 12807,
                alias = "Npc12807",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12972",
                scene_id = 3,
                room_id = 0,
                data_index = 29
            },
            {
                id = 12836,
                alias = "Npc12836",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12973",
                scene_id = 3,
                room_id = 0,
                data_index = 30
            },
            {
                id = 12838,
                alias = "Npc12838",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12974",
                scene_id = 3,
                room_id = 0,
                data_index = 31
            },
            {
                id = 12960,
                alias = "Npc12960",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12975",
                scene_id = 3,
                room_id = 0,
                data_index = 32
            },
            {
                id = 12961,
                alias = "Npc12961",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12976",
                scene_id = 3,
                room_id = 0,
                data_index = 33
            },
            {
                id = 12962,
                alias = "Npc12962",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12977",
                scene_id = 3,
                room_id = 0,
                data_index = 34
            },
            {
                id = 12965,
                alias = "Npc12965",
                script = "Actor/Npc/TempNPC",
                pos = "Q302503_T302503_N12978",
                scene_id = 3,
                room_id = 0,
                data_index = 35
            }
        }
    },
    ["302504"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12695,
                alias = "Npc12695",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N12695",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12872,
                alias = "Npc12872",
                script = "Actor/Npc/AQ3025SneakAI2",
                pos = "Q302504_N12872",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12873,
                alias = "Npc12873",
                script = "Actor/Npc/AQ3025SneakAI3",
                pos = "Q302504_N12873",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12806,
                alias = "Npc12806",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12806",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12807,
                alias = "Npc12807",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12807",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12836,
                alias = "Npc12836",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12836",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 12838,
                alias = "Npc12838",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12838",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 12960,
                alias = "Npc12960",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12960",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12961,
                alias = "Npc12961",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12961",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12962,
                alias = "Npc12962",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12962",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 12965,
                alias = "Npc12965",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12965",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 12088,
                alias = "Npc12088",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 12870,
                alias = "Npc12870",
                script = "Actor/Npc/TempNPC",
                pos = "Q302504_N12872",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 12871,
                alias = "Npc12871",
                script = "Actor/Npc/TempNPC",
                pos = "Q302504_N12873",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            }
        }
    },
    ["302505"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12695,
                alias = "Npc12695",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N12695",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12088,
                alias = "Npc12088",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["302506"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302506_T302506_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302506_T302506_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12833,
                alias = "Npc12833",
                script = "Actor/Npc/TempNPC",
                pos = "Q302506_T302506_N12833",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12834,
                alias = "Npc12834",
                script = "Actor/Npc/TempNPC",
                pos = "Q302506_T302506_N12834",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12832,
                alias = "Npc12832",
                script = "Actor/Npc/TempNPC",
                pos = "Q302506_T302506_N12832",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["302507"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302508"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["302509"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302509_T302509_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302509_T302509_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["302510"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302510_T302510_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302510_T302510_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["302511"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302511_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302511_TighnariSitAlone",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12603,
                alias = "Npc12603",
                script = "Actor/Npc/TempNPC",
                pos = "Q302511_Karkata",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["302512"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302512_T302512_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302511_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1054,
                alias = "Npc1054",
                script = "Actor/Npc/TempNPC",
                pos = "Q302512_T302512_N1054",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q302512_T302512_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q302512_T302512_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302511_TighnariSitAlone",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12603,
                alias = "Npc12603",
                script = "Actor/Npc/TempNPC",
                pos = "Q302511_Karkata",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["302513"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12695,
                alias = "Npc12695",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N12695",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12872,
                alias = "Npc12872",
                script = "Actor/Npc/AQ3025SneakAI2",
                pos = "Q302513_N12870",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12873,
                alias = "Npc12873",
                script = "Actor/Npc/AQ3025SneakAI3",
                pos = "Q302513_N12871",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12806,
                alias = "Npc12806",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12806",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12807,
                alias = "Npc12807",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12807",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12836,
                alias = "Npc12836",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12836",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 12838,
                alias = "Npc12838",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12838",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 12960,
                alias = "Npc12960",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12960",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12961,
                alias = "Npc12961",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12961",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12962,
                alias = "Npc12962",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12962",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 12965,
                alias = "Npc12965",
                script = "Actor/Npc/AQ3025SneakAI1",
                pos = "Q302504_N12965",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            },
            {
                id = 12088,
                alias = "Npc12088",
                script = "Actor/Npc/TempNPC",
                pos = "Q302505_T302505_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 15
            },
            {
                id = 12870,
                alias = "Npc12870",
                script = "Actor/Npc/TempNPC",
                pos = "Q302513_N12870",
                scene_id = 3,
                room_id = 0,
                data_index = 16
            },
            {
                id = 12871,
                alias = "Npc12871",
                script = "Actor/Npc/TempNPC",
                pos = "Q302513_N12871",
                scene_id = 3,
                room_id = 0,
                data_index = 17
            }
        }
    },
    ["302514"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1052_1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["302515"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["302516"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q302514_N1052_1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q302502_T302502_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "T302502_N10000005_2"}}
    },
    ["302517"] = {}
}
