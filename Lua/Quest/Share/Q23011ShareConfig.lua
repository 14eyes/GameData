main_id = 23011
local tbl = {}
local n = 2301102
local v = 2301107
local n2 = 2301103
local n3 = 2301104
local n4 = 2301105
local n5 = 2301106
tbl[1] = 2301101
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
local str = ""
tbl3[1] = "133302177"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133302178"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl5 = {}
local str3 = "1"
tbl5[1] = "101965"
tbl5[2] = str3
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl5
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2301101"] = {},
    ["2301102"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2303201_N1517",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2301103"] = {},
    ["2301104"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2303201_N1517",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4052,
                alias = "Npc4052",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23032_N4052",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2301105"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2303201_N1517",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4052,
                alias = "Npc4052",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23032_N4052",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2301106"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2303201_N1517",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2301101"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2303201_N1517",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2301102"] = {
        npcs = {
            {
                id = 4052,
                alias = "Npc4052",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23032_N4052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2301103"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2303201_N1517",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4052,
                alias = "Npc4052",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23032_N4052",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2301104"] = {},
    ["2301105"] = {},
    ["2301106"] = {},
    ["2301107"] = {}
}
