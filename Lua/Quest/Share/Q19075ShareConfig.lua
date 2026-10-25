main_id = 19075
sub_ids = {1907501}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_LOCK_POINT = {}
local v = {}
local str = "741"
v[1] = "3"
v[2] = str
qUEST_EXEC_LOCK_POINT[1] = v
server.QUEST_EXEC_LOCK_POINT = qUEST_EXEC_LOCK_POINT
tbl.SERVER = server
cancel_action = tbl
rewind_data = {["1907501"] = {}}

quest_data = {
    ["1907501"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907501_N515",
                scene_id = 1079,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907501_N515",
                scene_id = 1079,
                room_id = 1,
                data_index = 2
            }
        }
    }
}
