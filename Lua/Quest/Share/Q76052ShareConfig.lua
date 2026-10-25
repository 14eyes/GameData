main_id = 76052
local tbl = {}
local n = 7605202
local v = 7605204
local n2 = 7605205
local n3 = 7605206
local n4 = 7605203
tbl[1] = 7605201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133603022"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7605201"] = {}, ["7605202"] = {}, ["7605203"] = {}}

quest_data = {
    ["7605201"] = {
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
    ["7605202"] = {
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
    ["7605203"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300019:2142.444,108.600,11194.990,0.000,196.225,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1318,
                alias = "Npc1318_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300033:2141.005,108.600,11195.410,0.000,75.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7605204"] = {},
    ["7605205"] = {},
    ["7605206"] = {}
}
