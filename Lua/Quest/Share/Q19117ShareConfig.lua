main_id = 19117
local tbl = {}
local n = 1911702
local v = 1911703
local n2 = 1911704
local n3 = 1911705
tbl[1] = 1911701
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
local str = ""
tbl3[1] = "133220695"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133213497"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1911701"] = {},
    ["1911702"] = {
        npcs = {
            {
                id = 12156,
                alias = "Npc12156",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911701mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911703"] = {},
    ["1911704"] = {
        npcs = {
            {
                id = 12156,
                alias = "Npc12156",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911701mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911705"] = {}
}

quest_data = {
    ["1911701"] = {
        npcs = {
            {
                id = 12156,
                alias = "Npc12156",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911701mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911702"] = {},
    ["1911703"] = {
        npcs = {
            {
                id = 12156,
                alias = "Npc12156",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911701mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911704"] = {
        npcs = {
            {
                id = 12159,
                alias = "Npc12159",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911704mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911705"] = {
        npcs = {
            {
                id = 12280,
                alias = "Npc12280",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911701mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12156,
                alias = "Npc12156",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1911701mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
