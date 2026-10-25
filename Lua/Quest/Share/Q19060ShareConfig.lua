main_id = 19060
local tbl = {}
local n = 1906002
local v = 1906003
local n2 = 1906004
local n3 = 1906022
local n4 = 1906013
local n5 = 1906014
local n6 = 1906015
local n7 = 1906016
local n8 = 1906024
local n9 = 1906025
local n10 = 1906026
local n11 = 1906027
local n12 = 1906029
local n13 = 1906030
local n14 = 1906005
local n15 = 1906023
local n16 = 1906017
local n17 = 1906018
local n18 = 1906019
local n19 = 1906020
local n20 = 1906031
local n21 = 1906032
local n22 = 1906033
local n23 = 1906034
local n24 = 1906035
local n25 = 1906036
local n26 = 1906006
local n27 = 1906028
local n28 = 1906007
local n29 = 1906008
local n30 = 1906009
local n31 = 1906010
local n32 = 1906021
local n33 = 1906011
local n34 = 1906012
tbl[1] = 1906001
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133221092"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133221096"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl5 = {}
local str3 = "0"
tbl5[1] = "1906001"
tbl5[2] = str3
local tbl6 = {}
local str4 = "0"
tbl6[1] = "1906002"
tbl6[2] = str4
local tbl7 = {}
local str5 = "0"
tbl7[1] = "1906003"
tbl7[2] = str5
local tbl8 = {}
local str6 = "0"
tbl8[1] = "1906004"
tbl8[2] = str6
local tbl9 = {}
local str7 = "0"
tbl9[1] = "1906005"
tbl9[2] = str7
local tbl10 = {}
local str8 = "0"
tbl10[1] = "1906006"
tbl10[2] = str8
local tbl11 = {}
local str9 = "0"
tbl11[1] = "1906007"
tbl11[2] = str9
local tbl12 = {}
local str10 = "0"
tbl12[1] = "1906008"
tbl12[2] = str10
local tbl13 = {}
local str11 = "0"
tbl13[1] = "1906009"
tbl13[2] = str11
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl5
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[2] = tbl6
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[3] = tbl7
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[4] = tbl8
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[5] = tbl9
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[6] = tbl10
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[7] = tbl11
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[8] = tbl12
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[9] = tbl13
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1906001"] = {},
    ["1906002"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906003"] = {},
    ["1906004"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906005"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906006"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906007"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906008"] = {},
    ["1906011"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1906012"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1906021"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1906001"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906002"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906002_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906002_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906003"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906003_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906003_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906004"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906005"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906006"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906007"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906008"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906009"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906010"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906011"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1906012"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1907203_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907203_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12550,
                alias = "Npc12550",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907203_N12550",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907203_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906013"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906014"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906015"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906016"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906017"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906018"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906019"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906020"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906021"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1906022"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906023"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906024"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906025"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906026"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906027"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906028"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906029"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906030"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906031"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906032"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906033"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906034"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906035"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1906036"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1906003_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1906006_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
