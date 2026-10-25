main_id = 24017
local tbl = {}
local n = 2401702
local v = 2401705
local n2 = 2401703
local n3 = 2401704
local n4 = 2401706
tbl[1] = 2401701
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
tbl3[1] = "133403090"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120376"}, {"120377"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2401703"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2401701"] = {},
    ["2401702"] = {
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
    ["2401703"] = {
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
    ["2401704"] = {
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
    ["2401705"] = {
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
    ["2401706"] = {
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
    ["2401701"] = {
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
    ["2401702"] = {},
    ["2401703"] = {},
    ["2401704"] = {
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
    ["2401705"] = {},
    ["2401706"] = {
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
