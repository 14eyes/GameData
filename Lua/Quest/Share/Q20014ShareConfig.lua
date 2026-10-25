main_id = 20014
local tbl = {}
local n = 2001402
local v = 2001403
local n2 = 2001406
local n3 = 2001405
tbl[1] = 2001401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133003074"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2001401"] = {},
    ["2001402"] = {},
    ["2001406"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2001401"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2001402"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001402_N1408",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2001403"] = {},
    ["2001405"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2001401_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2001406"] = {
        npcs = {
            {
                id = 1405,
                alias = "Npc1405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2002001_N1405",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
