main_id = 71075
local tbl = {}
local n = 7107502
tbl[1] = 7107501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7107501"] = {},
    ["7107502"] = {
        npcs = {
            {
                id = 20556,
                alias = "Npc20556",
                script = "Actor/Npc/TempNPC",
                pos = "Q7107501_N20556",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7107501"] = {
        npcs = {
            {
                id = 20556,
                alias = "Npc20556",
                script = "Actor/Npc/TempNPC",
                pos = "Q7107501_N20556",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7107502"] = {}
}
