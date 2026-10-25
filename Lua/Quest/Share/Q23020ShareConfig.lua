main_id = 23020
local tbl = {}
local n = 2302002
local v = 2302003
local n2 = 2302004
local n3 = 2302005
tbl[1] = 2302001
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
tbl3[1] = "133302105"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2302004"}}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl4 = {}
local str2 = "5"
tbl4[1] = "101961"
tbl4[2] = str2
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl4
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2302001"] = {},
    ["2302002"] = {
        npcs = {
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302003"] = {
        npcs = {
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302004"] = {
        npcs = {
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302005"] = {
        npcs = {
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2302001"] = {
        npcs = {
            {
                id = 4031,
                alias = "Npc4031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4031",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4032,
                alias = "Npc4032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23019_N4032",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302002"] = {},
    ["2302003"] = {},
    ["2302004"] = {},
    ["2302005"] = {}
}
