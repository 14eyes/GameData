main_id = 74506
local tbl = {}
local n = 7450603
local v = 7450602
tbl[1] = 7450601
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
tbl3[1] = "133401172"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7450601"] = {},
    ["7450602"] = {
        npcs = {
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6562:3552.219,446.167,4434.630,0.000,354.140,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7450603"] = {}
}

quest_data = {
    ["7450601"] = {},
    ["7450602"] = {
        npcs = {
            {
                id = 30423,
                alias = "Npc30423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6271:3559.818,446.167,4448.293,0.000,147.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7450603"] = {
        npcs = {
            {
                id = 30423,
                alias = "Npc30423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6271:3559.818,446.167,4448.293,0.000,147.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6562:3552.219,446.167,4434.630,0.000,354.140,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
