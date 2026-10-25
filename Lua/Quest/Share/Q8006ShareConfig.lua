main_id = 8006
local tbl = {}
local n = 800602
local v = 800603
local n2 = 800612
local n3 = 800604
local n4 = 800605
local n5 = 800609
local n6 = 800610
local n7 = 800613
local n8 = 800611
local n9 = 800606
local n10 = 800614
local n11 = 800607
local n12 = 800608
tbl[1] = 800601
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "166001248"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "166001256"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "166001282"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "166001137"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["800601"] = {},
    ["800602"] = {},
    ["800603"] = {},
    ["800604"] = {},
    ["800605"] = {},
    ["800606"] = {},
    ["800608"] = {}
}

quest_data = {
    ["800601"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800601_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800601_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800602"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800602_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800603"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800603_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800604"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800604_T800604_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800605_N12458",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800605"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800604_T800604_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800605_N12427",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800606"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800606_T800606_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800606_T800606_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800607"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800606_T800606_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800608"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800606_T800606_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q800606_T800606_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800609"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800604_T800604_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12458,
                alias = "Npc12458",
                script = "Actor/Npc/TempNPC",
                pos = "Q800605_N12458",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800610"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800604_T800604_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12459,
                alias = "Npc12459",
                script = "Actor/Npc/TempNPC",
                pos = "Q800605_N12459",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800611"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800611_T800611_N1005",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12460,
                alias = "Npc12460",
                script = "Actor/Npc/TempNPC",
                pos = "Q800605_N12460",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800612"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800604_T800604_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12427,
                alias = "Npc12427",
                script = "Actor/Npc/TempNPC",
                pos = "Q800605_N12458",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["800613"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q800604_T800604_N1022",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800614"] = {}
}
