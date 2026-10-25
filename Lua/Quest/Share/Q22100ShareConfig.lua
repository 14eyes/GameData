main_id = 22100
local tbl = {}
local n = 2210002
local v = 2210003
tbl[1] = 2210001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133102272,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["2210001"] = {}, ["2210002"] = {}, ["2210003"] = {}}
quest_data = {["2210001"] = {}, ["2210002"] = {}, ["2210003"] = {}}
