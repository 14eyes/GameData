main_id = 70018
local tbl = {}
local n = 7001802
local v = 7001803
local n2 = 7001804
tbl[1] = 7001801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "133102119"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl5 = {}
local str2 = "1"
tbl5[1] = "133102119"
tbl5[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl5
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl4.SERVER = server2
fail_action = tbl4
local tbl6 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3 = {}
local tbl7 = {}
local str3 = "1"
tbl7[1] = "133102119"
tbl7[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3[1] = tbl7
server3.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3
tbl6.SERVER = server3
cancel_action = tbl6

rewind_data = {
    ["7001801"] = {},
    ["7001802"] = {
        npcs = {
            {
                id = 11007,
                alias = "Npc11007",
                script = "Actor/Npc/TempNPC",
                pos = "Q7001701qiuqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7001803"] = {
        npcs = {
            {
                id = 11007,
                alias = "Npc11007",
                script = "Actor/Npc/TempNPC",
                pos = "Q7001701qiuqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7001804"] = {
        npcs = {
            {
                id = 11007,
                alias = "Npc11007",
                script = "Actor/Npc/TempNPC",
                pos = "Q7001701qiuqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7001801"] = {
        npcs = {
            {
                id = 11007,
                alias = "Npc11007",
                script = "Actor/Npc/TempNPC",
                pos = "Q7001701qiuqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7001802"] = {},
    ["7001803"] = {},
    ["7001804"] = {}
}
