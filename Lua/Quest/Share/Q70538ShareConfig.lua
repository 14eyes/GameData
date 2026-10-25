main_id = 70538
local tbl = {}
local n = 7053804
local v = 7053802
local n2 = 7053803
tbl[1] = 7053801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004142"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7053801"] = {}, ["7053803"] = {}}

quest_data = {
    ["7053801"] = {
        npcs = {
            {
                id = 30414,
                alias = "Npc30414",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6245:2542.294,202.400,-472.537,0.000,212.645,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7053802"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_6246:2263.428,235.990,-783.801,0.000,257.472,0.000]"}}
    },
    ["7053803"] = {
        npcs = {
            {
                id = 1459,
                alias = "Npc1459",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6247:2261.872,235.990,-784.188,0.000,79.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7053804"] = {
        npcs = {
            {
                id = 30414,
                alias = "Npc30414",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6245:2542.294,202.400,-472.537,0.000,212.645,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
