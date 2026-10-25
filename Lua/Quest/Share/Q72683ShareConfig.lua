main_id = 72683
local tbl = {}
local n = 7268302
tbl[1] = 7268301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str = ""
tbl2[1] = "133221077"
tbl2[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
v.SERVER = server
cancel_action = v

rewind_data = {
    ["7268301"] = {},
    ["7268302"] = {
        npcs = {
            {
                id = 30160,
                alias = "Npc30160",
                script = "Actor/Npc/TempNPC",
                pos = "Q7268301_N30160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7268301"] = {
        npcs = {
            {
                id = 30160,
                alias = "Npc30160",
                script = "Actor/Npc/TempNPC",
                pos = "Q7268301_N30160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7268302"] = {}
}
