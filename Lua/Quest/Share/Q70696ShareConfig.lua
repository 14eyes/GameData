main_id = 70696
local tbl = {}
local n = 7069602
tbl[1] = 7069601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7069601"] = {}, ["7069602"] = {}}

quest_data = {
    ["7069601"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "[3_322001642:-3009.445,224.596,-4399.051,0.000,110.980,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7069602"] = {
        npcs = {
            {
                id = 16137,
                alias = "Npc16137",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300100524:1473.330,267.601,-1106.230,0.000,121.224,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
