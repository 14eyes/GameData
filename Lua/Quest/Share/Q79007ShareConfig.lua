main_id = 79007
local tbl = {}
local n = 7900702
local v = 7900703
local n2 = 7900704
local n3 = 7900705
local n4 = 7900706
tbl[1] = 7900701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "144003017"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7900701"] = {}, ["7900702"] = {}}

quest_data = {
    ["7900701"] = {},
    ["7900702"] = {},
    ["7900703"] = {},
    ["7900704"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q79007Paimon",
                scene_id = 4,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7900705"] = {},
    ["7900706"] = {}
}
