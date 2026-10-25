main_id = 22026
local tbl = {}
local n = 2202602
local v = 2202603
local n2 = 2202604
tbl[1] = 2202601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133209017"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101520"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2202601"] = {},
    ["2202602"] = {
        npcs = {
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/TempNPC",
                pos = "Q22026_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202603"] = {
        npcs = {
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/TempNPC",
                pos = "Q22026_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202604"] = {
        npcs = {
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/TempNPC",
                pos = "Q22026_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2202601"] = {
        npcs = {
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/TempNPC",
                pos = "Q22026_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202602"] = {},
    ["2202603"] = {},
    ["2202604"] = {}
}
