main_id = 40207
local tbl = {}
local n = 4020702
tbl[1] = 4020701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str = ""
tbl2[1] = "133607179"
tbl2[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
v.SERVER = server
cancel_action = v
rewind_data = {["4020701"] = {}, ["4020702"] = {}}

quest_data = {
    ["4020701"] = {},
    ["4020702"] = {
        npcs = {
            {
                id = 1312,
                alias = "Npc1312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13889:1638.816,202.689,9933.188,0.000,110.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13890:1640.071,202.669,9932.836,0.000,290.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
