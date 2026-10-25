main_id = 70812
local tbl = {}
local n = 7081202
local v = 7081203
local n2 = 7081204
local n3 = 7081205
local n4 = 7081206
local n5 = 7081207
local n6 = 7081208
tbl[1] = 7081201
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
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133004355,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133004356,1"
tbl4[1] = "3"
tbl4[2] = str2
local tbl5 = {}
local str3 = "133004357,1"
tbl5[1] = "3"
tbl5[2] = str3
local tbl6 = {}
local str4 = "133004360,1"
tbl6[1] = "3"
tbl6[2] = str4
local tbl7 = {}
local str5 = "133004359,1"
tbl7[1] = "3"
tbl7[2] = str5
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[3] = tbl5
qUEST_EXEC_REFRESH_GROUP_SUITE[4] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE[5] = tbl7
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100557"}, {"100558"}, {"100559"}}
tbl2.SERVER = server
finish_action = tbl2
local tbl8 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl9 = {}
local str6 = "133004355,1"
tbl9[1] = "3"
tbl9[2] = str6
local tbl10 = {}
local str7 = "133004356,1"
tbl10[1] = "3"
tbl10[2] = str7
local tbl11 = {}
local str8 = "133004357,1"
tbl11[1] = "3"
tbl11[2] = str8
local tbl12 = {}
local str9 = "133004360,1"
tbl12[1] = "3"
tbl12[2] = str9
local tbl13 = {}
local str10 = "133004359,1"
tbl13[1] = "3"
tbl13[2] = str10
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl9
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl10
qUEST_EXEC_REFRESH_GROUP_SUITE2[3] = tbl11
qUEST_EXEC_REFRESH_GROUP_SUITE2[4] = tbl12
qUEST_EXEC_REFRESH_GROUP_SUITE2[5] = tbl13
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
server2.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100557"}, {"100558"}, {"100559"}}
tbl8.SERVER = server2
fail_action = tbl8
local tbl14 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE3 = {}
local tbl15 = {}
local str11 = "133004355,1"
tbl15[1] = "3"
tbl15[2] = str11
local tbl16 = {}
local str12 = "133004356,1"
tbl16[1] = "3"
tbl16[2] = str12
local tbl17 = {}
local str13 = "133004357,1"
tbl17[1] = "3"
tbl17[2] = str13
local tbl18 = {}
local str14 = "133004360,1"
tbl18[1] = "3"
tbl18[2] = str14
local tbl19 = {}
local str15 = "133004359,1"
tbl19[1] = "3"
tbl19[2] = str15
qUEST_EXEC_REFRESH_GROUP_SUITE3[1] = tbl15
qUEST_EXEC_REFRESH_GROUP_SUITE3[2] = tbl16
qUEST_EXEC_REFRESH_GROUP_SUITE3[3] = tbl17
qUEST_EXEC_REFRESH_GROUP_SUITE3[4] = tbl18
qUEST_EXEC_REFRESH_GROUP_SUITE3[5] = tbl19
server3.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE3
server3.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100557"}, {"100558"}, {"100559"}}
tbl14.SERVER = server3
cancel_action = tbl14

rewind_data = {
    ["7081201"] = {},
    ["7081202"] = {},
    ["7081203"] = {},
    ["7081204"] = {},
    ["7081205"] = {},
    ["7081206"] = {},
    ["7081207"] = {},
    ["7081208"] = {}
}

quest_data = {
    ["7081201"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}},
        npcs = {
            {
                id = 1445,
                alias = "Npc1445",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Alami",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7081202"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}}},
    ["7081203"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}}},
    ["7081204"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}}},
    ["7081205"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}}},
    ["7081206"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}}},
    ["7081207"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}}},
    ["7081208"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q70812PlayerTransmit"}},
        npcs = {
            {
                id = 1445,
                alias = "Npc1445",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Alami",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
