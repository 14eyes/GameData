main_id = 40046
sub_ids = {4004601}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local v = {}
local str = ""
v[1] = "133002063"
v[2] = str
local tbl2 = {}
local str2 = ""
tbl2[1] = "133002071"
tbl2[2] = str2
local tbl3 = {}
local str3 = ""
tbl3[1] = "133004054"
tbl3[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = v
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str4 = "133002927,1"
tbl4[1] = "3"
tbl4[2] = str4
local tbl5 = {}
local str5 = "133002928,2"
tbl5[1] = "3"
tbl5[2] = str5
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl.SERVER = server
cancel_action = tbl
rewind_data = {["4004601"] = {}}
quest_data = {["4004601"] = {}}
