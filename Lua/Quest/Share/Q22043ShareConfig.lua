main_id = 22043
local tbl = {}
local n = 2204302
local v = 2204303
tbl[1] = 2204301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2204301"] = {},
    ["2204302"] = {
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
    ["2204303"] = {
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
    ["2204301"] = {
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
    ["2204302"] = {},
    ["2204303"] = {}
}
