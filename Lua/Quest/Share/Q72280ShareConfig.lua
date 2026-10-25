main_id = 72280
local tbl = {}
local n = 7228001
local v = 7228019
local n2 = 7228002
local n3 = 7228003
local n4 = 7228016
local n5 = 7228004
local n6 = 7228005
local n7 = 7228006
local n8 = 7228011
local n9 = 7228017
local n10 = 7228007
local n11 = 7228008
local n12 = 7228009
local n13 = 7228010
local n14 = 7228012
local n15 = 7228013
local n16 = 7228015
local n17 = 7228014
tbl[1] = 7228018
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133209067"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133209100"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133221074"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101754"}, {"101755"}}
server.QUEST_EXEC_STOP_BARGAIN = {{"6"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7228001"] = {},
    ["7228002"] = {},
    ["7228004"] = {
        npcs = {
            {
                id = 20573,
                alias = "Npc20573",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20574,
                alias = "Npc20574",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228006",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7228005"] = {
        npcs = {
            {
                id = 20572,
                alias = "Npc20572",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20574,
                alias = "Npc20574",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228006",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7228006"] = {
        npcs = {
            {
                id = 20572,
                alias = "Npc20572",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20573,
                alias = "Npc20573",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7228007"] = {
        npcs = {
            {
                id = 20574,
                alias = "Npc20574",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228006",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228008"] = {
        npcs = {
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7228001_N3082",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228009"] = {
        npcs = {
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7228001_N3082",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228010"] = {
        npcs = {
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7228001_N3082",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20575,
                alias = "Npc20575",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7228009",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7228011"] = {
        npcs = {
            {
                id = 20572,
                alias = "Npc20572",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20573,
                alias = "Npc20573",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20574,
                alias = "Npc20574",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228006",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7228013"] = {
        npcs = {
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7228001_N3082",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228015"] = {
        npcs = {
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7228001_N3082",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228017"] = {
        npcs = {
            {
                id = 20572,
                alias = "Npc20572",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20573,
                alias = "Npc20573",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20574,
                alias = "Npc20574",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228006",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7228018"] = {}
}

quest_data = {
    ["7228001"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228001_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228003_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7228001_N3082",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20570,
                alias = "Npc20570",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228001_N20570",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20571,
                alias = "Npc20571",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228001_N3025",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7228002"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228003_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228003"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228003_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228004"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228003_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20572,
                alias = "Npc20572",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228004",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7228005"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228003_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20573,
                alias = "Npc20573",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7228006"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228003_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20574,
                alias = "Npc20574",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228006",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7228007"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228007_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7228001_N3082",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20572,
                alias = "Npc20572",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228007",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20573,
                alias = "Npc20573",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228007_N20573",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7228008"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228008_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228008_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20574,
                alias = "Npc20574",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228006",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7228009"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20575,
                alias = "Npc20575",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7228009",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20570,
                alias = "Npc20570",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N3025",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7228010"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20570,
                alias = "Npc20570",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N3025",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7228011"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228003_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228012"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20575,
                alias = "Npc20575",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7228009",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20570,
                alias = "Npc20570",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228010_N3025",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7228013"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228014_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228007_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7228014"] = {},
    ["7228015"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228014_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228007_N1040",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228014_N1036",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7228016"] = {},
    ["7228017"] = {
        npcs = {
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q7228001_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7228018"] = {},
    ["7228019"] = {}
}
