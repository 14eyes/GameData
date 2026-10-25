main_id = 23025
local tbl = {}
local n = 2302502
local v = 2302503
local n2 = 2302504
local n3 = 2302505
local n4 = 2302506
local n5 = 2302507
local n6 = 2302508
local n7 = 2302511
local n8 = 2302509
local n9 = 2302510
tbl[1] = 2302501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133304138"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133304243"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133304142"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl6 = {}
local str4 = "133304002,1"
tbl6[1] = "3"
tbl6[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl6
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl7 = {}
local str5 = "0"
tbl7[1] = "23025"
tbl7[2] = str5
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl7
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2302502"] = {},
    ["2302503"] = {},
    ["2302504"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302503_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302505"] = {},
    ["2302506"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302505_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302507"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302505_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302508"] = {},
    ["2302509"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302505_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302510"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302505_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302511"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302505_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2302501"] = {},
    ["2302502"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302502_N4087_1570",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302503"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302503_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302504"] = {},
    ["2302505"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302505_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302506"] = {},
    ["2302507"] = {},
    ["2302508"] = {
        npcs = {
            {
                id = 4087,
                alias = "Npc4087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302505_N4087",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302509"] = {},
    ["2302510"] = {},
    ["2302511"] = {}
}
