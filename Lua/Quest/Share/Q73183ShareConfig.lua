main_id = 73183
local tbl = {}
local n = 7318302
local v = 7318303
tbl[1] = 7318301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7318302"] = {},
    ["7318303"] = {
        npcs = {
            {
                id = 20810,
                alias = "Npc20810",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318302_N20810",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7318301"] = {},
    ["7318302"] = {
        npcs = {
            {
                id = 20810,
                alias = "Npc20810",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318302_N20810",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7318303"] = {}
}
