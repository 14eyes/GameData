main_id = 73177
local tbl = {}
local n = 7317702
local v = 7317703
tbl[1] = 7317701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317702"] = {},
    ["7317703"] = {
        npcs = {
            {
                id = 20804,
                alias = "Npc20804",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317702_N20804",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7317701"] = {},
    ["7317702"] = {
        npcs = {
            {
                id = 20804,
                alias = "Npc20804",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317702_N20804",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317703"] = {}
}
