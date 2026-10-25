main_id = 21031
local tbl = {}
local n = 2103102
local v = 2103103
local n2 = 2103107
local n3 = 2103104
local n4 = 2103105
local n5 = 2103106
local n6 = 2103108
tbl[1] = 2103101
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
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133102272,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "133104816"
tbl4[2] = str2
local tbl5 = {}
local str3 = "0"
tbl5[1] = "133104817"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2103101"] = {},
    ["2103102"] = {},
    ["2103103"] = {},
    ["2103105"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q2103104_N10204",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103106"] = {}
}

quest_data = {
    ["2103101"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21031_N2202",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103102"] = {},
    ["2103103"] = {
        gadgets = {
            {
                id = 71700337,
                alias = "Gadget71700337",
                pos = "Q2103103_Clue3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103104"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q2103104_N10204",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103105"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21031_N2202",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103106"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21031_N2202",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103107"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2103103_Clue3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103108"] = {}
}
