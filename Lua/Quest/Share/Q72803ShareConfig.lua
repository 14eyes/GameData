main_id = 72803
local tbl = {}
local n = 7280302
local v = 7280303
local n2 = 7280308
local n3 = 7280304
local n4 = 7280306
local n5 = 7280307
local n6 = 7280309
tbl[1] = 7280301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220195"
tbl3[2] = str
local tbl4 = {}
local str2 = "1"
tbl4[1] = "133220075"
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
local str3 = ""
tbl6[1] = "133220195"
tbl6[2] = str3
local tbl7 = {}
local str4 = "1"
tbl7[1] = "133220075"
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
local str5 = ""
tbl9[1] = "133220195"
tbl9[2] = str5
local tbl10 = {}
local str6 = "1"
tbl10[1] = "133220075"
tbl10[2] = str6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3[1] = tbl9
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3[2] = tbl10
server3.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3
tbl8.SERVER = server3
cancel_action = tbl8
rewind_data = {["7280301"] = {}, ["7280302"] = {}, ["7280304"] = {}, ["7280306"] = {}, ["7280307"] = {}}

quest_data = {
    ["7280301"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202701xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280302"] = {},
    ["7280303"] = {},
    ["7280304"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202809xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12085,
                alias = "Npc12085",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280304daobaotuan",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7280306"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7280306xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3051,
                alias = "Npc3051",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7280306hongyi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7280307"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202702xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3001,
                alias = "Npc3001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202702mishengqiyue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7280308"] = {},
    ["7280309"] = {}
}
