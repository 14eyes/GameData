main_id = 16801
local tbl = {}
local n = 1680103
local v = 1680105
local n2 = 1680106
local n3 = 1680107
tbl[1] = 1680102
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "201204017"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "201204011,1"
tbl4[1] = "1204"
tbl4[2] = str2
local tbl5 = {}
local str3 = "201204016,1"
tbl5[1] = "1204"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1680102"] = {}}
quest_data = {["1680102"] = {}, ["1680103"] = {}, ["1680105"] = {}, ["1680106"] = {}, ["1680107"] = {}}
