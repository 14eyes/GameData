main_id = 73176
local tbl = {}
local n = 7317602
local v = 7317603
tbl[1] = 7317601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317602"] = {},
    ["7317603"] = {
        npcs = {
            {
                id = 20803,
                alias = "Npc20803",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317602_N20803",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7317601"] = {},
    ["7317602"] = {
        npcs = {
            {
                id = 20803,
                alias = "Npc20803",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317602_N20803",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317603"] = {}
}
