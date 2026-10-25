main_id = 40025
local tbl = {}
local n = 4002502
local v = 4002503
local n2 = 4002504
local n3 = 4002505
local n4 = 4002506
local n5 = 4002510
local n6 = 4002509
local n7 = 4002507
local n8 = 4002508
tbl[1] = 4002501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004054"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002071"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133002063"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl6 = {}
local str4 = "133002928,2"
tbl6[1] = "3"
tbl6[2] = str4
local tbl7 = {}
local str5 = "133002927,1"
tbl7[1] = "3"
tbl7[2] = str5
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl7
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4002501"] = {},
    ["4002502"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "DUMMY_POS_40025_Timaeus01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002503"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "DUMMY_POS_40025_Timaeus01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002504"] = {
        npcs = {
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40025_Joel01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002505"] = {},
    ["4002506"] = {},
    ["4002507"] = {},
    ["4002508"] = {},
    ["4002509"] = {},
    ["4002510"] = {}
}

quest_data = {
    ["4002501"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "DUMMY_POS_40025_Timaeus01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "DUMMY_POS 40025_Sucrose01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "DUMMY_POS_40025_Albedo01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4002502"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "DUMMY_POS 40025_Sucrose01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12254,
                alias = "Npc12254",
                script = "Actor/Npc/TempNPC",
                pos = "DUMMY_POS_40025_Albedo01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002503"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "DUMMY_POS 40025_Sucrose01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40025_Joel01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "DUMMY_POS_40025_Ambor",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1577,
                alias = "Npc1577",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "DUMMY_POS_40025_Pallad",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "DUMMY_POS_40025_Cyrus01",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4002504"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q40025_Ambor01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1577,
                alias = "Npc1577",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4002504_N1577",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4002504_N1409",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q40025_Eula01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12253,
                alias = "Npc12253",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4002504_Gerald",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4002505"] = {},
    ["4002506"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4002506_paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002507"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002507_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4002507_paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002508"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002508_albedo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710234,
                alias = "Footprint_09",
                pos = "Q40025_Footpriint",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002509"] = {},
    ["4002510"] = {}
}
