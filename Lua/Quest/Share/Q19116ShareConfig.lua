main_id = 19116
local tbl = {}
local n = 1911602
local v = 1911603
local n2 = 1911604
local n3 = 1911605
tbl[1] = 1911601
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
tbl3[1] = "133220008"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101602"}, {"101603"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1911601"] = {},
    ["1911603"] = {},
    ["1911602"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1911601"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911602"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911603"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911604"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911605"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
