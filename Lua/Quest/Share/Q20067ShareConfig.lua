main_id = 20067
local tbl = {}
local n = 2006702
local v = 2006703
local n2 = 2006704
local n3 = 2006705
local n4 = 2006706
tbl[1] = 2006701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133003081"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl5 = {}
local str2 = "0"
tbl5[1] = "133003081"
tbl5[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl5
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["2006701"] = {},
    ["2006702"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002105_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2006704"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002105_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2006701"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002105_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2006702"] = {},
    ["2006703"] = {},
    ["2006704"] = {},
    ["2006705"] = {},
    ["2006706"] = {}
}
