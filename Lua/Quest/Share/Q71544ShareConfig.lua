main_id = 71544
sub_ids = {7154401}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local v = {}
local str = ""
local str2 = ""
v[1] = "133115201"
v[2] = str
v[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = v
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl.SERVER = server
cancel_action = tbl
rewind_data = {["7154401"] = {}}

quest_data = {
    ["7154401"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500342:2426.257,343.059,2400.461,0.000,336.034,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500339:2439.302,343.059,2404.749,0.000,184.541,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1308,
                alias = "Npc1308",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500343:2425.266,343.059,2400.396]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
