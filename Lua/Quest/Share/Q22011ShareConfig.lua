main_id = 22011
local tbl = {}
local n = 2201102
local v = 2201103
local n2 = 2201104
local n3 = 2201105
tbl[1] = 2201101
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
tbl3[1] = "133220133"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100883"}, {"100884"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2201101"] = {},
    ["2201102"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_zhenqin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201105"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_zhenqin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2201101"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_zhenqin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201102"] = {},
    ["2201103"] = {},
    ["2201104"] = {},
    ["2201105"] = {}
}
