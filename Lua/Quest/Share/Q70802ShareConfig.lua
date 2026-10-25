main_id = 70802
local tbl = {}
local n = 7080202
local v = 7080203
local n2 = 7080204
local n3 = 7080205
local n4 = 7080206
local n5 = 7080207
local n6 = 7080208
tbl[1] = 7080201
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
tbl3[1] = "133105073"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7080201"] = {},
    ["7080202"] = {},
    ["7080203"] = {
        npcs = {
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080201_N1668",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080204"] = {
        npcs = {
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080201_N1668",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080203_N1409",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7080206"] = {
        npcs = {
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080201_N1668",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080203_N1409",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7080207"] = {
        npcs = {
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080201_N1668",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080203_N1409",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7080208"] = {
        npcs = {
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080201_N1668",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080203_N1409",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7080201"] = {},
    ["7080202"] = {
        npcs = {
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080201_N1668",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080203"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080203_N1409",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1577,
                alias = "Npc1577",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080203_N1577",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7080204"] = {},
    ["7080205"] = {},
    ["7080206"] = {
        npcs = {
            {
                id = 1577,
                alias = "Npc1577",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080206_N1577",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080207"] = {},
    ["7080208"] = {}
}
