main_id = 23003
local tbl = {}
local n = 2300302
local v = 2300303
local n2 = 2300305
local n3 = 2300306
local n4 = 2300308
local n5 = 2300309
local n6 = 2300310
local n7 = 2300307
tbl[1] = 2300301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133302082"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "201072001,1"
tbl4[1] = "1072"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["2300302"] = {}, ["2300303"] = {}, ["2300305"] = {}, ["2300306"] = {}, ["2300307"] = {}}

quest_data = {
    ["2300301"] = {},
    ["2300302"] = {
        npcs = {
            {
                id = 4004,
                alias = "Npc4004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300302_N4004",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1072, pos = "Q2300302_trans"}}
    },
    ["2300303"] = {
        npcs = {
            {
                id = 4004,
                alias = "Npc4004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300303_N4004_9",
                scene_id = 1072,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2300305"] = {},
    ["2300306"] = {},
    ["2300307"] = {},
    ["2300308"] = {},
    ["2300309"] = {},
    ["2300310"] = {}
}
