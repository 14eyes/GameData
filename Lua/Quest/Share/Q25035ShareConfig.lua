main_id = 25035
local tbl = {}
local n = 2503502
local v = 2503503
local n2 = 2503504
local n3 = 2503505
local n4 = 2503506
local n5 = 2503507
local n6 = 2503508
tbl[1] = 2503501
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
tbl3[1] = "133502089"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121019"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2503507"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2503501"] = {},
    ["2503502"] = {
        npcs = {
            {
                id = 6101,
                alias = "Npc6101",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503501_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503506"] = {
        npcs = {
            {
                id = 6101,
                alias = "Npc6101",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503501_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503507"] = {},
    ["2503508"] = {
        npcs = {
            {
                id = 6101,
                alias = "Npc6101",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200209:-2087.130,243.995,8437.817,0.000,76.153,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2503501"] = {
        npcs = {
            {
                id = 6101,
                alias = "Npc6101",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503501_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503502"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200298:-2213.324,204.361,8575.094,0.000,10.661,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503503"] = {},
    ["2503504"] = {},
    ["2503505"] = {},
    ["2503506"] = {},
    ["2503507"] = {
        npcs = {
            {
                id = 6101,
                alias = "Npc6101",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200209:-2087.130,243.995,8437.817,0.000,76.153,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503508"] = {}
}
