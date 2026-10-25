main_id = 73173
local tbl = {}
local n = 7317302
local v = 7317303
tbl[1] = 7317301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317302"] = {},
    ["7317303"] = {
        npcs = {
            {
                id = 20800,
                alias = "Npc20800",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317302_N20800",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7317301"] = {},
    ["7317302"] = {
        npcs = {
            {
                id = 20800,
                alias = "Npc20800",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317302_N20800",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317303"] = {}
}
