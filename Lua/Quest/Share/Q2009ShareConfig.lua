main_id = 2009
local tbl = {}
local n = 200910
local v = 200909
local n2 = 200921
local n3 = 200922
local n4 = 200902
local n5 = 200903
local n6 = 200914
local n7 = 200915
local n8 = 200916
local n9 = 200920
local n10 = 200917
local n11 = 200924
local n12 = 200918
local n13 = 200923
local n14 = 200919
local n15 = 200911
local n16 = 200913
local n17 = 200912
local n18 = 200925
local n19 = 200904
local n20 = 200926
local n21 = 200905
local n22 = 200906
local n23 = 200907
local n24 = 200927
local n25 = 200928
local n26 = 200929
local n27 = 200930
local n28 = 200931
local n29 = 200908
tbl[1] = 200901
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200901"] = {},
    ["200902"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200902zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200903"] = {},
    ["200904"] = {},
    ["200905"] = {},
    ["200906"] = {},
    ["200908"] = {},
    ["200909"] = {},
    ["200910"] = {},
    ["200911"] = {},
    ["200912"] = {},
    ["200913"] = {},
    ["200914"] = {},
    ["200915"] = {
        npcs = {
            {
                id = 12055,
                alias = "Npc12055",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12056,
                alias = "Npc12056",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200916"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12055,
                alias = "Npc12055",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12056,
                alias = "Npc12056",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200917"] = {},
    ["200918"] = {},
    ["200919"] = {
        npcs = {
            {
                id = 12065,
                alias = "Npc12065",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12064,
                alias = "Npc12064",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200920"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12055,
                alias = "Npc12055",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12056,
                alias = "Npc12056",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200921"] = {},
    ["200922"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200902zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200923"] = {},
    ["200924"] = {},
    ["200925"] = {}
}

quest_data = {
    ["200901"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200901paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q200901born"}}
    },
    ["200902"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200902zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200903"] = {
        npcs = {
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q200903wu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200904"] = {
        npcs = {
            {
                id = 12058,
                alias = "Npc12058",
                script = "Actor/Npc/TempNPC",
                pos = "Q200904repair1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200905"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200903paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200906"] = {
        npcs = {
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q200906wu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q200906salo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12014,
                alias = "Npc12014",
                script = "Actor/Npc/TempNPC",
                pos = "Q200906mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12015,
                alias = "Npc12015",
                script = "Actor/Npc/TempNPC",
                pos = "Q200906mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12016,
                alias = "Npc12016",
                script = "Actor/Npc/TempNPC",
                pos = "Q200906mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12017,
                alias = "Npc12017",
                script = "Actor/Npc/TempNPC",
                pos = "Q200906mass4",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12238,
                alias = "Npc12238",
                script = "Actor/Npc/TempNPC",
                pos = "Q200904trigger",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["200907"] = {transmit_points = {{point_id = 8, scene_id = 3, pos = "Q200907trans"}}},
    ["200908"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200906paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q200906salo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q200906born"}}
    },
    ["200909"] = {
        npcs = {
            {
                id = 12047,
                alias = "Npc12047",
                script = "Actor/Npc/TempNPC",
                pos = "Q200909mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12048,
                alias = "Npc12048",
                script = "Actor/Npc/TempNPC",
                pos = "Q200909mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200910"] = {
        npcs = {
            {
                id = 12049,
                alias = "Npc12049",
                script = "Actor/Npc/TempNPC",
                pos = "Q200910mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12050,
                alias = "Npc12050",
                script = "Actor/Npc/TempNPC",
                pos = "Q200910mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200911"] = {},
    ["200912"] = {
        gadgets = {
            {
                id = 70710087,
                alias = "Gadget70710087",
                pos = "Q200912repair2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70300118,
                alias = "Gadget70300118",
                pos = "Q200912guild2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200913"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200913paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q200913born"}}
    },
    ["200914"] = {
        npcs = {
            {
                id = 12055,
                alias = "Npc12055",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12056,
                alias = "Npc12056",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200915"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200914zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200916"] = {},
    ["200917"] = {
        npcs = {
            {
                id = 12065,
                alias = "Npc12065",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12064,
                alias = "Npc12064",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200918"] = {
        gadgets = {
            {
                id = 70710291,
                alias = "Gadget70710291",
                pos = "Q200918thunder1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710291,
                alias = "Gadget70710291",
                pos = "Q200918thunder2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710291,
                alias = "Gadget70710291",
                pos = "Q200918thunder3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710291,
                alias = "Gadget70710291",
                pos = "Q200918thunder4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 70350220,
                alias = "Gadget70350220",
                pos = "Q200918trans",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 4, scene_id = 3, pos = "Q200918trans"}}
    },
    ["200919"] = {
        npcs = {
            {
                id = 12065,
                alias = "Npc12065",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "Q200917born"}}
    },
    ["200920"] = {},
    ["200921"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200902zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200922"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200902zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200923"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "Q200917born"}}
    },
    ["200924"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200925"] = {
        gadgets = {
            {
                id = 70710086,
                alias = "Gadget70710086",
                pos = "Q200912repair1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70300118,
                alias = "Gadget70300118",
                pos = "Q200912guild1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200926"] = {},
    ["200927"] = {
        npcs = {
            {
                id = 12128,
                alias = "Npc12128",
                script = "Actor/Npc/TempNPC",
                pos = "Q200907monster",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 6, scene_id = 3, pos = "Q200907trans"}}
    },
    ["200928"] = {},
    ["200929"] = {
        npcs = {
            {
                id = 12129,
                alias = "Npc12129",
                script = "Actor/Npc/TempNPC",
                pos = "Q200907monster",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 7, scene_id = 3, pos = "Q200907trans"}}
    },
    ["200930"] = {},
    ["200931"] = {}
}
