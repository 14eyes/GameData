main_id = 2010
local tbl = {}
local n = 201002
local v = 201003
local n2 = 201004
local n3 = 201005
local n4 = 201006
local n5 = 201012
local n6 = 201013
local n7 = 201017
local n8 = 201007
local n9 = 201014
local n10 = 201010
local n11 = 201016
local n12 = 201018
local n13 = 201008
local n14 = 201015
local n15 = 201011
local n16 = 201009
tbl[1] = 201001
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["201001"] = {},
    ["201003"] = {},
    ["201005"] = {},
    ["201009"] = {
        npcs = {
            {
                id = 12070,
                alias = "Npc12070",
                script = "Actor/Npc/TempNPC",
                pos = "Q201009Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201010"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201011"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201012"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201014"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201015"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201017"] = {
        npcs = {
            {
                id = 12146,
                alias = "Npc12146",
                script = "Actor/Npc/TempNPC",
                pos = "Q201012Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12147,
                alias = "Npc12147",
                script = "Actor/Npc/TempNPC",
                pos = "Q201012Soldier2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201007"] = {
        npcs = {
            {
                id = 12146,
                alias = "Npc12146",
                script = "Actor/Npc/TempNPC",
                pos = "Q201012Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12147,
                alias = "Npc12147",
                script = "Actor/Npc/TempNPC",
                pos = "Q201012Soldier2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["201001"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201001Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201002"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201001Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 45001001,
                alias = "Gadget45001001",
                pos = "Q201002_Skiff",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201003"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201001Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201004"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201004Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201005"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3146,
                alias = "Npc3146",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201006Dajiu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201006"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3146,
                alias = "Npc3146",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201006Dajiu",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["201007"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201008"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12098,
                alias = "Npc12098",
                script = "Actor/Npc/TempNPC",
                pos = "Q201015Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q201015Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["201009"] = {
        npcs = {
            {
                id = 12070,
                alias = "Npc12070",
                script = "Actor/Npc/TempNPC",
                pos = "Q201009Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q201009Player"}}
    },
    ["201010"] = {
        npcs = {
            {
                id = 12098,
                alias = "Npc12098",
                script = "Actor/Npc/TempNPC",
                pos = "Q201014Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q201014Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12212,
                alias = "Npc12212",
                script = "Actor/Npc/TempNPC",
                pos = "Q201008Mob1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12213,
                alias = "Npc12213",
                script = "Actor/Npc/TempNPC",
                pos = "Q201008Mob2",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12214,
                alias = "Npc12214",
                script = "Actor/Npc/TempNPC",
                pos = "Q201008Mob3",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["201011"] = {
        npcs = {
            {
                id = 12070,
                alias = "Npc12070",
                script = "Actor/Npc/TempNPC",
                pos = "Q201009Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q201009Player"}}
    },
    ["201012"] = {
        npcs = {
            {
                id = 12146,
                alias = "Npc12146",
                script = "Actor/Npc/TempNPC",
                pos = "Q201012Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12147,
                alias = "Npc12147",
                script = "Actor/Npc/TempNPC",
                pos = "Q201012Soldier2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201013"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12146,
                alias = "Npc12146",
                script = "Actor/Npc/TempNPC",
                pos = "Q201012Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12147,
                alias = "Npc12147",
                script = "Actor/Npc/TempNPC",
                pos = "Q201012Soldier2",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["201014"] = {
        npcs = {
            {
                id = 12098,
                alias = "Npc12098",
                script = "Actor/Npc/TempNPC",
                pos = "Q201014Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q201014Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201015"] = {
        npcs = {
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q201015Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201016"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12098,
                alias = "Npc12098",
                script = "Actor/Npc/TempNPC",
                pos = "Q201016Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q201016Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["201017"] = {},
    ["201018"] = {
        npcs = {
            {
                id = 12013,
                alias = "Npc12013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201011Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12098,
                alias = "Npc12098",
                script = "Actor/Npc/TempNPC",
                pos = "Q201015Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q201015Soldier1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12212,
                alias = "Npc12212",
                script = "Actor/Npc/TempNPC",
                pos = "Q201008Mob1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12213,
                alias = "Npc12213",
                script = "Actor/Npc/TempNPC",
                pos = "Q201008Mob2",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12214,
                alias = "Npc12214",
                script = "Actor/Npc/TempNPC",
                pos = "Q201008Mob3",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    }
}
