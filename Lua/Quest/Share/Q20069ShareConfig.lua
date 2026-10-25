main_id = 20069
local tbl = {}
local n = 2006902
local v = 2006907
local n2 = 2006908
local n3 = 2006903
local n4 = 2006904
local n5 = 2006906
local n6 = 2006909
local n7 = 2006905
local n8 = 2006912
tbl[1] = 2006901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl3 = {}
local str = "3"
tbl3[1] = "100689"
tbl3[2] = str
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl3
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105905"}, {"133002917"}, {"133105908"}, {"133105907"}, {"133105906"}}
tbl2.SERVER = server
finish_action = tbl2
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_DEL_PACK_ITEM2 = {}
local tbl5 = {}
local str2 = "3"
tbl5[1] = "100689"
tbl5[2] = str2
qUEST_EXEC_DEL_PACK_ITEM2[1] = tbl5
server2.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM2
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105905"}, {"133002917"}, {"133105908"}, {"133105907"}, {"133105906"}}
tbl4.SERVER = server2
fail_action = tbl4
local tbl6 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_DEL_PACK_ITEM3 = {}
local tbl7 = {}
local str3 = "3"
tbl7[1] = "100689"
tbl7[2] = str3
qUEST_EXEC_DEL_PACK_ITEM3[1] = tbl7
server3.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM3
server3.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105905"}, {"133002917"}, {"133105908"}, {"133105907"}, {"133105906"}}
tbl6.SERVER = server3
cancel_action = tbl6

rewind_data = {
    ["2006901"] = {},
    ["2006902"] = {},
    ["2006904"] = {},
    ["2006905"] = {},
    ["2006907"] = {},
    ["2006908"] = {},
    ["2006909"] = {}
}

quest_data = {
    ["2006901"] = {},
    ["2006902"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2006908_targetPos1"}}},
    ["2006903"] = {},
    ["2006904"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2006904_interactPos"}}},
    ["2006905"] = {},
    ["2006906"] = {},
    ["2006907"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2006909_targetPos1"}}},
    ["2006908"] = {},
    ["2006909"] = {},
    ["2006912"] = {},
    ["2006913"] = {}
}
