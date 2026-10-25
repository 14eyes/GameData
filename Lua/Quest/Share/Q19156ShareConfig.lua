main_id = 19156
local tbl = {}
local n = 1915602
local v = 1915605
local n2 = 1915606
tbl[1] = 1915601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"506"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133302662"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1915601"] = {}, ["1915606"] = {}}

quest_data = {
    ["1915601"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915602_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915602_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1915602"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915602_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915602_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1915605"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915602_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915602_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1915606"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915602_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915602_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
