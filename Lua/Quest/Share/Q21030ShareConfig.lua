main_id = 21030
local tbl = {}
local n = 2103002
local v = 2103003
tbl[1] = 2103001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133108224"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2103001"] = {},
    ["2103002"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102706_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2048,
                alias = "Npc2048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102705_N2048",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2103003"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102706_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2048,
                alias = "Npc2048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102705_N2048",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2103001"] = {
        npcs = {
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102706_N2031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2048,
                alias = "Npc2048",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2102705_N2048",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2103002"] = {},
    ["2103003"] = {}
}
