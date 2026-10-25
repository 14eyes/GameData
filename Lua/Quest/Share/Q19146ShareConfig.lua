main_id = 19146
local tbl = {}
local n = 1914610
local v = 1914611
local n2 = 1914612
local n3 = 1914608
local n4 = 1914602
local n5 = 1914603
local n6 = 1914604
local n7 = 1914605
local n8 = 1914606
local n9 = 1914607
local n10 = 1914613
local n11 = 1914609
tbl[1] = 1914601
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220747"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220774"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133220775"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133221093"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1914601"] = {}, ["1914608"] = {}, ["1914609"] = {}}

quest_data = {
    ["1914601"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914601_C1914601_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914602"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1914605_C1914605_N10000005"}}
    },
    ["1914603"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1914606_C1914606_N10000005"}}
    },
    ["1914604"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1914607_C1914607_N10000005"}}
    },
    ["1914605"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914605_C1914605_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914605_C1914605_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914606"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914606_C1914606_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914606_C1914606_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914606_C1914606_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914606_C1914606_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914607"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914607_C1914607_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914607_C1914607_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914607_C1914607_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914607_C1914607_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914608"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914607_C1914607_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914607_C1914607_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914607_C1914607_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914607_C1914607_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914609"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914609_C1914609_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914609_C1914609_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914609_C1914609_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914609_C1914609_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914609_C1914609_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914605_C1914605_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1914610"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914601_C1914601_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914611"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914601_C1914601_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914612"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12530,
                alias = "Npc12530",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914601_C1914601_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3163,
                alias = "Npc3163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914601_C1914601_N12530",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914613"] = {}
}
