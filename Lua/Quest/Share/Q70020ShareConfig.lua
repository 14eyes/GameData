main_id = 70020
local tbl = {}
local n = 7002002
local v = 7002003
tbl[1] = 7002001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "133104170"
tbl3[2] = str
local tbl4 = {}
local str2 = "1"
tbl4[1] = "133104174"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl6 = {}
local str3 = "1"
tbl6[1] = "133104170"
tbl6[2] = str3
local tbl7 = {}
local str4 = "1"
tbl7[1] = "133104174"
tbl7[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl7
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl5.SERVER = server2
fail_action = tbl5
local tbl8 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3 = {}
local tbl9 = {}
local str5 = "1"
tbl9[1] = "133104170"
tbl9[2] = str5
local tbl10 = {}
local str6 = "1"
tbl10[1] = "133104174"
tbl10[2] = str6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3[1] = tbl9
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3[2] = tbl10
server3.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3
tbl8.SERVER = server3
cancel_action = tbl8

rewind_data = {
    ["7002001"] = {},
    ["7002002"] = {
        npcs = {
            {
                id = 11008,
                alias = "Npc11008",
                script = "Actor/Npc/TempNPC",
                pos = "Q7002001qiuqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7002003"] = {}
}

quest_data = {
    ["7002001"] = {
        npcs = {
            {
                id = 11008,
                alias = "Npc11008",
                script = "Actor/Npc/TempNPC",
                pos = "Q7002001qiuqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 156501,
                alias = "Npc156501",
                script = "Actor/Npc/TempNPC",
                pos = "Q7002001aila",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7002002"] = {},
    ["7002003"] = {
        npcs = {
            {
                id = 11008,
                alias = "Npc11008",
                script = "Actor/Npc/TempNPC",
                pos = "Q7002001qiuqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7002402paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
