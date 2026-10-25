main_id = 41126
local tbl = {}
local n = 4112602
local v = 4112612
local n2 = 4112603
local n3 = 4112604
local n4 = 4112605
local n5 = 4112606
local n6 = 4112607
local n7 = 4112608
local n8 = 4112609
local n9 = 4112610
local n10 = 4112611
tbl[1] = 4112601
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
tbl[12] = n10
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "100626"
tbl3[2] = str
local tbl4 = {}
local str2 = "1"
tbl4[1] = "100681"
tbl4[2] = str2
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl3
qUEST_EXEC_DEL_PACK_ITEM[2] = tbl4
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102008"}}
tbl2.SERVER = server
finish_action = tbl2
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_DEL_PACK_ITEM2 = {}
local tbl6 = {}
local str3 = "1"
tbl6[1] = "100626"
tbl6[2] = str3
local tbl7 = {}
local str4 = "1"
tbl7[1] = "100681"
tbl7[2] = str4
qUEST_EXEC_DEL_PACK_ITEM2[1] = tbl6
qUEST_EXEC_DEL_PACK_ITEM2[2] = tbl7
server2.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM2
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102008"}}
tbl5.SERVER = server2
fail_action = tbl5
local tbl8 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_DEL_PACK_ITEM3 = {}
local tbl9 = {}
local str5 = "1"
tbl9[1] = "100626"
tbl9[2] = str5
local tbl10 = {}
local str6 = "1"
tbl10[1] = "100681"
tbl10[2] = str6
qUEST_EXEC_DEL_PACK_ITEM3[1] = tbl9
qUEST_EXEC_DEL_PACK_ITEM3[2] = tbl10
server3.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM3
server3.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102008"}}
tbl8.SERVER = server3
cancel_action = tbl8

rewind_data = {
    ["4112601"] = {},
    ["4112602"] = {},
    ["4112604"] = {
        npcs = {
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q41126jiayi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112608"] = {
        npcs = {
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q41126jiayi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112609"] = {
        npcs = {
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q41126jiayi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112610"] = {
        npcs = {
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q41126jiayi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112611"] = {
        npcs = {
            {
                id = 230801,
                alias = "Npc230801",
                script = "Actor/Npc/TempDailyNPC",
                pos = "Q41126xiaoliu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q41126jiayi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4112612"] = {
        npcs = {
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q41126jiayi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4112601"] = {},
    ["4112602"] = {
        npcs = {
            {
                id = 205601,
                alias = "Npc205601",
                script = "Actor/Npc/TempNPC",
                pos = "Q41126jiayi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112603"] = {},
    ["4112604"] = {},
    ["4112605"] = {},
    ["4112606"] = {},
    ["4112607"] = {},
    ["4112608"] = {},
    ["4112609"] = {
        npcs = {
            {
                id = 230801,
                alias = "Npc230801",
                script = "Actor/Npc/TempDailyNPC",
                pos = "Q41126xiaoliu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112610"] = {},
    ["4112611"] = {},
    ["4112612"] = {}
}
