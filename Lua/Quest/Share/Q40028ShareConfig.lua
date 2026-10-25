main_id = 40028
local tbl = {}
local n = 4002802
local v = 4002803
local n2 = 4002804
local n3 = 4002818
local n4 = 4002806
local n5 = 4002815
local n6 = 4002819
local n7 = 4002807
local n8 = 4002808
local n9 = 4002816
local n10 = 4002809
local n11 = 4002820
local n12 = 4002810
local n13 = 4002811
local n14 = 4002812
local n15 = 4002813
local n16 = 4002814
local n17 = 4002817
local n18 = 4002805
local n19 = 4002821
tbl[1] = 4002801
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133002069"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002057"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133002093"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133002108"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133002080"
tbl7[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl8 = {}
local str6 = "133002928,2"
tbl8[1] = "3"
tbl8[2] = str6
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl8
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4002801"] = {},
    ["4002803"] = {},
    ["4002804"] = {},
    ["4002807"] = {},
    ["4002808"] = {},
    ["4002809"] = {},
    ["4002812"] = {},
    ["4002813"] = {},
    ["4002814"] = {},
    ["4002816"] = {},
    ["4002818"] = {},
    ["4002820"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_bnt_03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_04",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_03",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["4002801"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_talk_ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_bannet",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002802"] = {
        gadgets = {
            {
                id = 70310023,
                alias = "Gadget70310023",
                pos = "Q4002802_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002803"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002804"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_bannet",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002805"] = {},
    ["4002806"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_bannet",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_01",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4002807"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_bnt_02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_03",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_01",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4002808"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_diff_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_diff_ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_diff_bannet",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_diff_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_diff_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "Q40028_quest_transmit"}}
    },
    ["4002809"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_04",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_bnt_03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_04",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_03",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        gadgets = {
            {
                id = 70300048,
                alias = "Gadget70300048",
                pos = "Q4002809_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002810"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_04",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_bnt_03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_04",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_03",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4002811"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_04",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_bnt_03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_04",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002812"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_05",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_bnt_04",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_05",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002813"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002813_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q4002813_ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002813_bannet",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002813_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4002814"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_finaltalk_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q4002813_ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002813_bannet",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002813_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4002814_track_home"}}
    },
    ["4002815"] = {},
    ["4002816"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002816_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q4002816_ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002816_bannet",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002816_eula",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002816_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4002817"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4002814_player_transmit"}}},
    ["4002818"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40028_ambor_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_talk_bannet",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_eula_01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_01",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4002819"] = {},
    ["4002820"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40028_abd_03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70300048,
                alias = "Gadget70300048",
                pos = "Q4002809_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002821"] = {}
}
