main_id = 72119
local tbl = {}
local n = 7211902
local v = 7211903
local n2 = 7211904
tbl[1] = 7211901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7211901"] = {},
    ["7211902"] = {},
    ["7211903"] = {
        npcs = {
            {
                id = 3162,
                alias = "Npc3162",
                script = "Actor/Npc/TempNPC",
                pos = "WQ_72014_Xavier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7211904"] = {
        npcs = {
            {
                id = 3162,
                alias = "Npc3162",
                script = "Actor/Npc/TempNPC",
                pos = "WQ_72014_Xavier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7211901"] = {},
    ["7211902"] = {
        npcs = {
            {
                id = 3162,
                alias = "Npc3162",
                script = "Actor/Npc/TempNPC",
                pos = "WQ_72014_Xavier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7211903"] = {},
    ["7211904"] = {}
}
