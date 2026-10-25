main_id = 72663
local tbl = {}
local n = 7266302
local v = 7266305
local n2 = 7266304
local n3 = 7266303
local n4 = 7266306
tbl[1] = 7266301
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
tbl3[1] = "133213365"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133212564"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_UNLOCK_POINT = {}
local tbl5 = {}
local str3 = "401"
tbl5[1] = "3"
tbl5[2] = str3
qUEST_EXEC_UNLOCK_POINT[1] = tbl5
server.QUEST_EXEC_UNLOCK_POINT = qUEST_EXEC_UNLOCK_POINT
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7266302"] = {}}

quest_data = {
    ["7266301"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266302"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266303"] = {},
    ["7266304"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72663_jingjinghua2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266305"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72663_jingjinghua2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266306"] = {}
}
