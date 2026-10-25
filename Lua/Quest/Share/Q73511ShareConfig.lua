main_id = 73511
local tbl = {}
local n = 7351102
local v = 7351103
tbl[1] = 7351101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "133309822"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7351101"] = {},
    ["7351102"] = {
        npcs = {
            {
                id = 4403,
                alias = "Npc4403",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351101_N4403",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30343,
                alias = "Npc30343",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351101_N30343",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7351103"] = {
        npcs = {
            {
                id = 30342,
                alias = "Npc30342",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351102_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7351101"] = {
        npcs = {
            {
                id = 4403,
                alias = "Npc4403",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351101_N4403",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30343,
                alias = "Npc30343",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351101_N30343",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7351102"] = {
        npcs = {
            {
                id = 30342,
                alias = "Npc30342",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351102_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7351103"] = {}
}
