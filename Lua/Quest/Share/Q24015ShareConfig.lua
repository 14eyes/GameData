main_id = 24015
local tbl = {}
local n = 2401501
local v = 2401502
local n2 = 2401503
local n3 = 2401504
local n4 = 2401507
local n5 = 2401505
local n6 = 2401506
tbl[1] = 2401508
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133403169"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133403279"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133403174"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["2401508"] = {}}

quest_data = {
    ["2401501"] = {
        npcs = {
            {
                id = 5140,
                alias = "Npc5140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300064:2446.804,451.433,4673.133,0.000,140.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401502"] = {},
    ["2401503"] = {},
    ["2401504"] = {
        npcs = {
            {
                id = 5140,
                alias = "Npc5140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300064:2446.804,451.433,4673.133,0.000,140.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401505"] = {},
    ["2401506"] = {
        npcs = {
            {
                id = 5140,
                alias = "Npc5140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300098:2391.516,472.655,4654.657,0.000,305.194,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401507"] = {
        npcs = {
            {
                id = 5140,
                alias = "Npc5140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300098:2391.516,472.655,4654.657,0.000,305.194,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401508"] = {}
}
