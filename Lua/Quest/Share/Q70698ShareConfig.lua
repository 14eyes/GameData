main_id = 70698
sub_ids = {7069801}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local v = {}
local str = ""
v[1] = "133001290"
v[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = v
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl.SERVER = server
cancel_action = tbl
rewind_data = {["7069801"] = {}}

quest_data = {
    ["7069801"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100554:1527.006,266.644,-1046.563,0.000,339.111,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
