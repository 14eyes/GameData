main_id = 40090
local tbl = {}
local n = 4009001
local v = 4009002
local n2 = 4009039
local n3 = 4009020
local n4 = 4009029
local n5 = 4009038
local n6 = 4009040
local n7 = 4009003
local n8 = 4009013
local n9 = 4009014
local n10 = 4009015
local n11 = 4009016
local n12 = 4009017
local n13 = 4009018
local n14 = 4009041
local n15 = 4009042
local n16 = 4009019
local n17 = 4009021
local n18 = 4009022
local n19 = 4009023
local n20 = 4009024
local n21 = 4009025
local n22 = 4009026
local n23 = 4009027
local n24 = 4009043
local n25 = 4009044
local n26 = 4009028
local n27 = 4009030
local n28 = 4009031
local n29 = 4009032
local n30 = 4009033
local n31 = 4009034
local n32 = 4009035
local n33 = 4009036
local n34 = 4009045
local n35 = 4009046
local n36 = 4009037
local n37 = 4009004
local n38 = 4009005
local n39 = 4009006
local n40 = 4009007
local n41 = 4009008
local n42 = 4009009
local n43 = 4009010
local n44 = 4009011
local n45 = 4009012
tbl[1] = 4009047
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
tbl[31] = n29
tbl[32] = n30
tbl[33] = n31
tbl[34] = n32
tbl[35] = n33
tbl[36] = n34
tbl[37] = n35
tbl[38] = n36
tbl[39] = n37
tbl[40] = n38
tbl[41] = n39
tbl[42] = n40
tbl[43] = n41
tbl[44] = n42
tbl[45] = n43
tbl[46] = n44
tbl[47] = n45
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220795"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220793"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133220801"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM = {}
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED = {{"0"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4009001"] = {quest_var = {-1, -1, 1, -1, -1}},
    ["4009002"] = {
        npcs = {
            {
                id = 12945,
                alias = "Npc12945",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13098,
                alias = "Npc13098",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_Ya",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009004"] = {},
    ["4009005"] = {},
    ["4009007"] = {},
    ["4009008"] = {},
    ["4009009"] = {},
    ["4009011"] = {},
    ["4009039"] = {
        npcs = {
            {
                id = 12945,
                alias = "Npc12945",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009040"] = {
        npcs = {
            {
                id = 12945,
                alias = "Npc12945",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009047"] = {},
    ["4009003"] = {
        npcs = {
            {
                id = 12945,
                alias = "Npc12945",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4009001"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12945,
                alias = "Npc12945",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13098,
                alias = "Npc13098",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_Ya",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009002"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1035",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009003"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009003_NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13101,
                alias = "Npc13101",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009003_Search",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4009003_Player"}}
    },
    ["4009004"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009004_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12941,
                alias = "Npc12941",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009010_N12942",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12942,
                alias = "Npc12942",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009010_N12943",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12943,
                alias = "Npc12943",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009010_N12941",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4009005"] = {
        npcs = {
            {
                id = 12944,
                alias = "Npc12944",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009006_N12944",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009006"] = {
        npcs = {
            {
                id = 12944,
                alias = "Npc12944",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009006_N12944",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009007"] = {},
    ["4009008"] = {
        npcs = {
            {
                id = 12944,
                alias = "Npc12944",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009006_N12944",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009009"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1035",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12941,
                alias = "Npc12941",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N12941",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12942,
                alias = "Npc12942",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N12942",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12943,
                alias = "Npc12943",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N12943",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1039",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200907FesRoute21",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4009010"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1035",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009006_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12941,
                alias = "Npc12941",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N12941",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12942,
                alias = "Npc12942",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N12942",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12943,
                alias = "Npc12943",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N12943",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1039",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009013_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200907FesRoute21",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4009011"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1035",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q201701Zaoyou",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1039",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200907FesRoute21",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["4009012"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1035",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q201701Zaoyou",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1032",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1039",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009011_N1013",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200907FesRoute21",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4009013"] = {
        npcs = {
            {
                id = 12945,
                alias = "Npc12945",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009014"] = {
        npcs = {
            {
                id = 12945,
                alias = "Npc12945",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N12945",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13012,
                alias = "Npc13012",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009014_Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4009015"] = {},
    ["4009016"] = {},
    ["4009017"] = {},
    ["4009018"] = {},
    ["4009019"] = {},
    ["4009020"] = {},
    ["4009021"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009003_NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13101,
                alias = "Npc13101",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009003_Search",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4009003_Player"}}
    },
    ["4009022"] = {},
    ["4009023"] = {
        npcs = {
            {
                id = 13012,
                alias = "Npc13012",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009014_Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009024"] = {},
    ["4009025"] = {},
    ["4009026"] = {},
    ["4009027"] = {},
    ["4009028"] = {},
    ["4009029"] = {},
    ["4009030"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009003_NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13101,
                alias = "Npc13101",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009003_Search",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4009003_Player"}}
    },
    ["4009031"] = {},
    ["4009032"] = {
        npcs = {
            {
                id = 13012,
                alias = "Npc13012",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009014_Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009033"] = {},
    ["4009034"] = {},
    ["4009035"] = {},
    ["4009036"] = {},
    ["4009037"] = {},
    ["4009038"] = {},
    ["4009039"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1035",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009040"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1035",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009001_N1033",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4009041"] = {},
    ["4009042"] = {},
    ["4009043"] = {},
    ["4009044"] = {},
    ["4009045"] = {},
    ["4009046"] = {},
    ["4009047"] = {}
}
