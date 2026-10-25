main_id = 73702
local tbl = {}
local n = 7370202
local v = 7370203
local n2 = 7370204
local n3 = 7370205
local n4 = 7370206
tbl[1] = 7370201
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
local str = ""
tbl3[1] = "133316426"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {}
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7370201"] = {}, ["7370202"] = {}, ["7370204"] = {}, ["7370206"] = {}}

quest_data = {
    ["7370201"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7370201_N4284_T7370201",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7370202"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7370206_N4284_T7370206",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7370203"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7370206_N4284_T7370206",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7370204"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7370206_N4284_T7370206",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7370205"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7370206_N4284_T7370206",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7370206"] = {
        npcs = {
            {
                id = 13210,
                alias = "Npc13210",
                script = "Actor/Npc/TempNPC",
                pos = "Q7370206_N13210",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7370206_N4284_T7370206",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
