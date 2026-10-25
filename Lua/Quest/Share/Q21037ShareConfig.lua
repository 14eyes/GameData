main_id = 21037
local tbl = {}
local n = 2103703
local v = 2103704
local n2 = 2103705
tbl[1] = 2103701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133107192"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120179"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2103704"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2103701"] = {},
    ["2103703"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103701",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103704"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103701",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21037_xiaoshimei",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2079,
                alias = "Npc2079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21037_zhiruo",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2103705"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103701",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21037_xiaoshimei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2079,
                alias = "Npc2079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21037_zhiruo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2103701"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103701",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103703"] = {
        npcs = {
            {
                id = 2418,
                alias = "Npc2418",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21037_xiaoshimei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2079,
                alias = "Npc2079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21037_zhiruo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2103704"] = {},
    ["2103705"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103701",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
