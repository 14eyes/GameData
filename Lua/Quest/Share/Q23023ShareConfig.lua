main_id = 23023
local tbl = {}
local n = 2302302
local v = 2302304
local n2 = 2302303
local n3 = 2302305
local n4 = 2302306
tbl[1] = 2302301
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
tbl3[1] = "133302115"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2302301"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2302301"] = {},
    ["2302302"] = {
        npcs = {
            {
                id = 4079,
                alias = "Npc4079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_WAERTAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4080,
                alias = "Npc4080",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_GUERGENG",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302303"] = {
        npcs = {
            {
                id = 4079,
                alias = "Npc4079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_WAERTAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4080,
                alias = "Npc4080",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_GUERGENG",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302304"] = {
        npcs = {
            {
                id = 4079,
                alias = "Npc4079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_WAERTAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4080,
                alias = "Npc4080",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_GUERGENG",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302305"] = {
        npcs = {
            {
                id = 4079,
                alias = "Npc4079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_WAERTAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4080,
                alias = "Npc4080",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_GUERGENG",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302306"] = {
        npcs = {
            {
                id = 4079,
                alias = "Npc4079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_WAERTAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4080,
                alias = "Npc4080",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_GUERGENG",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2302301"] = {
        npcs = {
            {
                id = 4079,
                alias = "Npc4079",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_WAERTAN",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4080,
                alias = "Npc4080",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23023_GUERGENG",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2302302"] = {},
    ["2302303"] = {},
    ["2302304"] = {},
    ["2302305"] = {},
    ["2302306"] = {}
}
