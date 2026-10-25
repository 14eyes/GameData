main_id = 19105
local tbl = {}
local n = 1910502
tbl[1] = 1910501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {}
local client = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str = ""
tbl2[1] = "133001008"
tbl2[2] = str
local tbl3 = {}
local str2 = ""
tbl3[1] = "133001005"
tbl3[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl3
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
v.CLIENT = client
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl4 = {}
local str3 = ""
tbl4[1] = "133001008"
tbl4[2] = str3
local tbl5 = {}
local str4 = ""
tbl5[1] = "133001005"
tbl5[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
v.SERVER = server
cancel_action = v

rewind_data = {
    ["1910501"] = {},
    ["1910502"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Allan01_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 153901,
                alias = "Npc153901",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Allan01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 153701,
                alias = "Npc153701",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Draff02",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}

quest_data = {
    ["1910501"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Draff01_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 153901,
                alias = "Npc153901",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Allan01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 153701,
                alias = "Npc153701",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Draff01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1910502"] = {}
}
