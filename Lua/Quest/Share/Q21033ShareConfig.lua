main_id = 21033
local tbl = {}
local n = 2103302
local v = 2103303
local n2 = 2103304
local n3 = 2103306
local n4 = 2103305
tbl[1] = 2103301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133106031"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133106032"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133106101"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120162"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2103304"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2103301"] = {},
    ["2103302"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21033_lanjie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103304"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21033_lanjie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103306"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21033_lanjie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2103301"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21033_lanjie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103302"] = {},
    ["2103303"] = {},
    ["2103304"] = {},
    ["2103305"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2103302",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103306"] = {}
}
