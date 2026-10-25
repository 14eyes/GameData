main_id = 76085
local tbl = {}
local n = 7608502
local v = 7608504
local n2 = 7608505
local n3 = 7608506
local n4 = 7608507
local n5 = 7608503
tbl[1] = 7608501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133603021"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7608501"] = {}, ["7608502"] = {}, ["7608503"] = {}}

quest_data = {
    ["7608501"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300006:2155.005,109.349,11195.660,0.000,265.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7608502"] = {
        npcs = {
            {
                id = 15832,
                alias = "Npc15832",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300019:2142.444,108.600,11194.990,0.000,196.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7608503"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300033:2141.005,108.600,11195.410,0.000,75.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7608504"] = {},
    ["7608505"] = {},
    ["7608506"] = {},
    ["7608507"] = {}
}
