main_id = 70517
local tbl = {}
local n = 7051702
tbl[1] = 7051701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str = ""
tbl2[1] = "199001104"
tbl2[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
v.SERVER = server
cancel_action = v
rewind_data = {["7051701"] = {}}

quest_data = {
    ["7051701"] = {
        npcs = {
            {
                id = 30221,
                alias = "Npc30221",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051701_T7051701_N30202",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051702"] = {}
}
