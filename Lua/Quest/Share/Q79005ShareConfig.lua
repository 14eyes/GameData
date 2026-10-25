main_id = 79005
local tbl = {}
local n = 7900501
local v = 7900502
local n2 = 7900504
local n3 = 7900503
local n4 = 7900505
local n5 = 7900507
local n6 = 7900508
tbl[1] = 7900506
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "100845"
tbl3[2] = str
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl3
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_DEL_PACK_ITEM2 = {}
local tbl5 = {}
local str2 = "1"
tbl5[1] = "100845"
tbl5[2] = str2
qUEST_EXEC_DEL_PACK_ITEM2[1] = tbl5
server2.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM2
tbl4.SERVER = server2
cancel_action = tbl4
rewind_data = {["7900501"] = {}, ["7900502"] = {}, ["7900503"] = {}, ["7900505"] = {}, ["7900507"] = {}}

quest_data = {
    ["7900501"] = {},
    ["7900502"] = {},
    ["7900503"] = {},
    ["7900504"] = {},
    ["7900505"] = {},
    ["7900506"] = {},
    ["7900507"] = {},
    ["7900508"] = {}
}
