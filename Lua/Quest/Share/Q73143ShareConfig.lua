main_id = 73143
local tbl = {}
local n = 7314302
local v = 7314303
tbl[1] = 7314301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7314302"] = {},
    ["7314303"] = {
        npcs = {
            {
                id = 20683,
                alias = "Npc20683",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314302_N20683",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7314301"] = {},
    ["7314302"] = {
        npcs = {
            {
                id = 20683,
                alias = "Npc20683",
                script = "Actor/Npc/TempNPC",
                pos = "Q7314302_N20683",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7314303"] = {}
}
