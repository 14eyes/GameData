main_id = 22044
local tbl = {}
local n = 2204402
local v = 2204403
tbl[1] = 2204401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2204401"] = {},
    ["2204402"] = {
        npcs = {
            {
                id = 3182,
                alias = "Npc3182",
                script = "Actor/Npc/TempNPC",
                pos = "Q22043MAOMIGONGJIANG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204403"] = {
        npcs = {
            {
                id = 3182,
                alias = "Npc3182",
                script = "Actor/Npc/TempNPC",
                pos = "Q22043MAOMIGONGJIANG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2204401"] = {
        npcs = {
            {
                id = 3182,
                alias = "Npc3182",
                script = "Actor/Npc/TempNPC",
                pos = "Q22043MAOMIGONGJIANG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204402"] = {},
    ["2204403"] = {}
}
