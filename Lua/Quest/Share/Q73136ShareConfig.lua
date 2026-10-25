main_id = 73136
local tbl = {}
local n = 7313602
local v = 7313603
tbl[1] = 7313601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7313602"] = {},
    ["7313603"] = {
        npcs = {
            {
                id = 20676,
                alias = "Npc20676",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313602_N20676",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7313601"] = {},
    ["7313602"] = {
        npcs = {
            {
                id = 20676,
                alias = "Npc20676",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313602_N20676",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7313603"] = {}
}
