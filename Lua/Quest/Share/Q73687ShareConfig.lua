main_id = 73687
local tbl = {}
local n = 7368701
local v = 7368702
tbl[1] = 7368703
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133221099"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "133209118,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7368701"] = {},
    ["7368702"] = {
        npcs = {
            {
                id = 13073,
                alias = "Npc13073",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368701BillboardPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13074,
                alias = "Npc13074",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368701Billboard2Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13141,
                alias = "Npc13141",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368701Billboard3Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7368703"] = {}
}

quest_data = {
    ["7368701"] = {
        npcs = {
            {
                id = 13073,
                alias = "Npc13073",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368701BillboardPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13074,
                alias = "Npc13074",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368701Billboard2Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13141,
                alias = "Npc13141",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368701Billboard3Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7368702"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368702AyakaHome",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13082,
                alias = "Npc13082",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368702AyakaHomeShuitian",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7368702AyakaHomeXiaoyesi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7368703"] = {}
}
