main_id = 24020
local tbl = {}
local n = 2402002
local v = 2402003
local n2 = 2402004
local n3 = 2402005
local n4 = 2402006
tbl[1] = 2402001
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
tbl3[1] = "133403160"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120376"}, {"120377"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2402004"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2402001"] = {},
    ["2402002"] = {
        npcs = {
            {
                id = 5142,
                alias = "Npc5142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401701_N5142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2402003"] = {
        npcs = {
            {
                id = 5142,
                alias = "Npc5142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401701_N5142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2402004"] = {
        npcs = {
            {
                id = 5142,
                alias = "Npc5142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401701_N5142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2402005"] = {
        npcs = {
            {
                id = 5142,
                alias = "Npc5142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401701_N5142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2402006"] = {
        npcs = {
            {
                id = 5142,
                alias = "Npc5142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401701_N5142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2402001"] = {
        npcs = {
            {
                id = 5142,
                alias = "Npc5142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401701_N5142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2402002"] = {},
    ["2402003"] = {},
    ["2402004"] = {},
    ["2402005"] = {
        npcs = {
            {
                id = 5142,
                alias = "Npc5142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401701_N5142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2402006"] = {
        npcs = {
            {
                id = 5142,
                alias = "Npc5142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401701_N5142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
