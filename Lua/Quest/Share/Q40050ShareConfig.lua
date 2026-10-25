main_id = 40050
local tbl = {}
local n = 4005004
local v = 4005006
local n2 = 4005007
local n3 = 4005013
local n4 = 4005008
local n5 = 4005009
local n6 = 4005010
local n7 = 4005011
local n8 = 4005012
local n9 = 4005001
local n10 = 4005002
local n11 = 4005003
local n12 = 4005014
tbl[1] = 4005005
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101703"}, {"101706"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "177005004,1"
tbl3[1] = "7"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4005001"] = {},
    ["4005002"] = {},
    ["4005003"] = {},
    ["4005004"] = {},
    ["4005006"] = {},
    ["4005007"] = {},
    ["4005008"] = {},
    ["4005009"] = {},
    ["4005013"] = {}
}

quest_data = {
    ["4005001"] = {},
    ["4005002"] = {},
    ["4005003"] = {},
    ["4005004"] = {},
    ["4005005"] = {},
    ["4005006"] = {},
    ["4005007"] = {},
    ["4005008"] = {},
    ["4005009"] = {},
    ["4005010"] = {},
    ["4005011"] = {},
    ["4005012"] = {},
    ["4005013"] = {},
    ["4005014"] = {}
}
