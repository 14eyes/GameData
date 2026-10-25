main_id = 20034
local tbl = {}
local n = 2003402
local v = 2003403
local n2 = 2003404
local n3 = 2003405
local n4 = 2003406
local n5 = 2003407
tbl[1] = 2003401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133003076"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2003401"] = {},
    ["2003402"] = {},
    ["2003405"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2003401"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2003402"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2003403"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2003404"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2003405"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N1024",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N10011",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2003406"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N1024",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N10011",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2003407"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1700,
                alias = "Npc1700",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003405_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N1024",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N10011",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003405_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
