main_id = 40080
local tbl = {}
local n = 4008002
local v = 4008003
local n2 = 4008004
local n3 = 4008007
local n4 = 4008005
local n5 = 4008006
local n6 = 4008008
tbl[1] = 4008001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133002113"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4008001"] = {},
    ["4008002"] = {},
    ["4008003"] = {},
    ["4008004"] = {},
    ["4008005"] = {},
    ["4008006"] = {}
}

quest_data = {
    ["4008001"] = {
        npcs = {
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008002_N1027",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008002_N1027",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4008002"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008002_N1011",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008002_N1019",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008002_N1027",
                scene_id = 1004,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008002_N1027",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["4008003"] = {
        npcs = {
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008003_N1062",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008003_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008003_N1061",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008003_N1062",
                scene_id = 1004,
                room_id = 1,
                data_index = 4
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008003_N1061",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4008004"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008005_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4008004_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4008005"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008005_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008005_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4008006"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008006_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008006_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4008006_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4008006_N1007",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30274,
                alias = "Npc30274",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4008006_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1537,
                alias = "Npc1537",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4008006_N1537",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 30173,
                alias = "Npc30173",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4008006_N30173",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 30240,
                alias = "Npc30240",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4008006_N30240",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1539,
                alias = "Npc1539",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4008006_N1539",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 30250,
                alias = "Npc30250",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4008006_N30250",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1028,
                alias = "Npc1028",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008006_N1028",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 30234,
                alias = "Npc30234",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T4008006_N30234",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008006_N1028",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["4008007"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008005_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4008004_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4008008"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4008006_N1001",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
