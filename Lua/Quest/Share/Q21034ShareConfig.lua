main_id = 21034
local tbl = {}
local n = 2103406
local v = 2103407
local n2 = 2103402
local n3 = 2103403
local n4 = 2103404
local n5 = 2103405
tbl[1] = 2103401
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
tbl3[1] = "133106081"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133106060"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133106078"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120216"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2103401"] = {},
    ["2103402"] = {},
    ["2103403"] = {},
    ["2103404"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103402",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103405"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103403",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2103401"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103401",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103402"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103402",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103403"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103403",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103404"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103402",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103405"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103403",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103406"] = {},
    ["2103407"] = {}
}
