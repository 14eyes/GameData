main_id = 79059
local tbl = {}
local n = 7905902
local v = 7905903
tbl[1] = 7905901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7905901"] = {},
    ["7905902"] = {
        npcs = {
            {
                id = 21110,
                alias = "Npc21110",
                script = "Actor/Npc/TempNPC",
                pos = "Studio3_Read",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7905903"] = {}
}

quest_data = {
    ["7905901"] = {
        npcs = {
            {
                id = 21110,
                alias = "Npc21110",
                script = "Actor/Npc/TempNPC",
                pos = "Studio3_Read",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7905902"] = {
        npcs = {
            {
                id = 21111,
                alias = "Npc21111",
                script = "Actor/Npc/TempNPC",
                pos = "Studio3_Shot",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7905903"] = {}
}
