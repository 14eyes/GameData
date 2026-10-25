main_id = 22049
local tbl = {}
local n = 2204902
local v = 2204903
tbl[1] = 2204901
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
tbl3[1] = "133220683"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2204901"] = {},
    ["2204902"] = {
        npcs = {
            {
                id = 3035,
                alias = "Npc3035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12010_Yoimiya_Father_Inazuma_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204903"] = {
        npcs = {
            {
                id = 3035,
                alias = "Npc3035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12010_Yoimiya_Father_Inazuma_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2204901"] = {
        npcs = {
            {
                id = 3035,
                alias = "Npc3035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12010_Yoimiya_Father_Inazuma_1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204902"] = {},
    ["2204903"] = {}
}
