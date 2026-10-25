main_id = 23007
local tbl = {}
local n = 2300702
local v = 2300703
local n2 = 2300704
local n3 = 2300705
local n4 = 2300706
local n5 = 2300707
local n6 = 2300708
local n7 = 2300709
tbl[1] = 2300701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101905"}, {"101906"}, {"101907"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133302094"
tbl3[2] = str
local tbl4 = {}
local str2 = "0"
tbl4[1] = "133302096"
tbl4[2] = str2
local tbl5 = {}
local str3 = "0"
tbl5[1] = "133303083"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2300708"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2300701"] = {},
    ["2300703"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300705"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300707"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300708"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300709"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300702"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300704"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300706"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2300701"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300702"] = {},
    ["2300703"] = {},
    ["2300704"] = {},
    ["2300705"] = {},
    ["2300706"] = {},
    ["2300707"] = {},
    ["2300708"] = {},
    ["2300709"] = {}
}
