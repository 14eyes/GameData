main_id = 19118
local tbl = {}
local n = 1911805
local v = 1911804
local n2 = 1911803
local n3 = 1911802
local n4 = 1911806
tbl[1] = 1911801
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
tbl3[1] = "133220008"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1911801"] = {},
    ["1911802"] = {},
    ["1911803"] = {},
    ["1911804"] = {},
    ["1911805"] = {
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
    ["1911801"] = {
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
                id = 12294,
                alias = "Npc12294",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911801photo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911601tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1911802"] = {
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
    ["1911803"] = {},
    ["1911804"] = {
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
    ["1911805"] = {
        npcs = {
            {
                id = 12295,
                alias = "Npc12295",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911805photo",
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
    ["1911806"] = {
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
    }
}
