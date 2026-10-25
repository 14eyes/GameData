main_id = 73133
local tbl = {}
local n = 7313302
local v = 7313303
tbl[1] = 7313301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7313302"] = {},
    ["7313303"] = {
        npcs = {
            {
                id = 20673,
                alias = "Npc20673",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313302_N20673",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7313301"] = {},
    ["7313302"] = {
        npcs = {
            {
                id = 20673,
                alias = "Npc20673",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313302_N20673",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7313303"] = {}
}
