main_id = 19112
sub_ids = {1911201}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local v = {}
local str = "201060002,1"
v[1] = "1060"
v[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = v
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl.SERVER = server
cancel_action = tbl
rewind_data = {["1911201"] = {}}

quest_data = {
    ["1911201"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911201tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911201tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
