main_id = 79008
local tbl = {}
local n = 7900805
local v = 7900802
local n2 = 7900803
local n3 = 7900804
tbl[1] = 7900801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "144004087"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "144004088"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl2.SERVER = server
finish_action = tbl2
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3 = {}
local tbl6 = {}
local str3 = "0"
tbl6[1] = "144004087"
tbl6[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3[1] = tbl6
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP3
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP4 = {}
local tbl7 = {}
local str4 = "0"
tbl7[1] = "144004088"
tbl7[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP4[1] = tbl7
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP4
tbl5.SERVER = server2
fail_action = tbl5
local tbl8 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP5 = {}
local tbl9 = {}
local str5 = "0"
tbl9[1] = "144004087"
tbl9[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP5[1] = tbl9
server3.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP5
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP6 = {}
local tbl10 = {}
local str6 = "0"
tbl10[1] = "144004088"
tbl10[2] = str6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP6[1] = tbl10
server3.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP6
tbl8.SERVER = server3
cancel_action = tbl8
rewind_data = {["7900801"] = {}, ["7900802"] = {}, ["7900803"] = {}, ["7900804"] = {}, ["7900805"] = {}}

quest_data = {
    ["7900801"] = {},
    ["7900802"] = {
        npcs = {
            {
                id = 2003059,
                alias = "Npc2003059",
                script = "Actor/Npc/TempNPC",
                pos = "Q7900802",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7900802",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7900803"] = {},
    ["7900804"] = {},
    ["7900805"] = {}
}
