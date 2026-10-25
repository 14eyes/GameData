main_id = 73181
local tbl = {}
local n = 7318102
local v = 7318103
tbl[1] = 7318101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7318102"] = {},
    ["7318103"] = {
        npcs = {
            {
                id = 20808,
                alias = "Npc20808",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318102_N20808",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7318101"] = {},
    ["7318102"] = {
        npcs = {
            {
                id = 20808,
                alias = "Npc20808",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318102_N20808",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7318103"] = {}
}
