main_id = 22037
local tbl = {}
local n = 2203702
local v = 2203705
local n2 = 2203706
local n3 = 2203703
local n4 = 2203704
tbl[1] = 2203701
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
tbl3[1] = "133220354"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101538"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2203701"] = {},
    ["2203702"] = {},
    ["2203704"] = {
        npcs = {
            {
                id = 3151,
                alias = "Npc3151",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22036_PIKA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203706"] = {
        npcs = {
            {
                id = 3151,
                alias = "Npc3151",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22036_PIKA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203703"] = {
        npcs = {
            {
                id = 3151,
                alias = "Npc3151",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22036_PIKA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2203701"] = {
        npcs = {
            {
                id = 3080,
                alias = "Npc3080",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22036_WAXIDE",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203702"] = {
        npcs = {
            {
                id = 3151,
                alias = "Npc3151",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22036_PIKA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203703"] = {},
    ["2203704"] = {},
    ["2203705"] = {},
    ["2203706"] = {}
}
