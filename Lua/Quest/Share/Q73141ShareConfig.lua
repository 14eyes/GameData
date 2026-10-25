main_id = 73141
local tbl = {}
local n = 7314102
local v = 7314103
tbl[1] = 7314101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7314102"] = {},
    ["7314103"] = {
        npcs = {
            {
                id = 20681,
                alias = "Npc20681",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314102_N20681",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7314101"] = {},
    ["7314102"] = {
        npcs = {
            {
                id = 20681,
                alias = "Npc20681",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314102_N20681",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7314103"] = {}
}
