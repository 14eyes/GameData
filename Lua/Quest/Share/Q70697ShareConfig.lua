main_id = 70697
sub_ids = {7069701}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local v = {}
local str = ""
v[1] = "133001292"
v[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = v
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl.SERVER = server
cancel_action = tbl
rewind_data = {["7069701"] = {}}

quest_data = {
    ["7069701"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100553:1502.585,268.273,-1094.495,0.000,61.822,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
