main_id = 74155
local tbl = {}
local n = 7415501
tbl[1] = 7415502
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7415501"] = {
        npcs = {
            {
                id = 21253,
                alias = "Npc21253",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6392:3590.305,436.337,4530.821,0.000,76.637,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7415502"] = {}
}

quest_data = {
    ["7415501"] = {},
    ["7415502"] = {
        npcs = {
            {
                id = 21253,
                alias = "Npc21253",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6392:3590.305,436.337,4530.821,0.000,76.637,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
