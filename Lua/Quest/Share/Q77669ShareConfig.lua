main_id = 77669
local tbl = {}
local n = 7766902
tbl[1] = 7766901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str = ""
local str2 = ""
tbl2[1] = "201162005,201162018"
tbl2[2] = str
tbl2[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
v.SERVER = server
cancel_action = v
rewind_data = {["7766901"] = {}, ["7766902"] = {}}

quest_data = {
    ["7766901"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_22:-39.295,0.609,-1.119]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1339,
                alias = "Npc1339_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_224:-40.413,0.578,-0.059,0.000,325.680,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7766902"] = {}
}
