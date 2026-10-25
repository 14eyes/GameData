main_id = 73135
local tbl = {}
local n = 7313502
local v = 7313503
tbl[1] = 7313501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7313502"] = {},
    ["7313503"] = {
        npcs = {
            {
                id = 20675,
                alias = "Npc20675",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313502_N20675",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7313501"] = {},
    ["7313502"] = {
        npcs = {
            {
                id = 20675,
                alias = "Npc20675",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313502_N20675",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7313503"] = {}
}
