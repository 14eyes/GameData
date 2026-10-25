main_id = 19113
local tbl = {}
local n = 1911302
tbl[1] = 1911301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl2 = {}
local str = "201060002,1"
tbl2[1] = "1060"
tbl2[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl2
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
v.SERVER = server
cancel_action = v
rewind_data = {["1911301"] = {}}

quest_data = {
    ["1911301"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911301tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911301tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1911302"] = {}
}
