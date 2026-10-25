main_id = 75130
local tbl = {}
local n = 7513002
local v = 7513003
tbl[1] = 7513001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7513001"] = {},
    ["7513002"] = {
        npcs = {
            {
                id = 21746,
                alias = "Npc21746",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10474:-1810.089,145.032,9579.089,0.000,307.882,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513003"] = {}
}

quest_data = {
    ["7513001"] = {
        npcs = {
            {
                id = 21746,
                alias = "Npc21746",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9980:-1809.172,145.046,9574.240,0.000,315.287,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513002"] = {},
    ["7513003"] = {
        npcs = {
            {
                id = 21744,
                alias = "Npc21744",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10053:-1810.247,144.226,9591.044,0.000,277.302,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
