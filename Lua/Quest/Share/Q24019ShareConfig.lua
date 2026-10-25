main_id = 24019
local tbl = {}
local n = 2401902
local v = 2401903
tbl[1] = 2401901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133402057"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120487"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2401901"] = {},
    ["2401902"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401901_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401903"] = {}
}

quest_data = {
    ["2401901"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401901_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401902"] = {},
    ["2401903"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401901_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
