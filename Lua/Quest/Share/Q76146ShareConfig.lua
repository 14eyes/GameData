main_id = 76146
local tbl = {}
local n = 7614602
tbl[1] = 7614601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7614601"] = {},
    ["7614602"] = {
        npcs = {
            {
                id = 22306,
                alias = "Npc22306",
                script = "Actor/Npc/TempNPC",
                pos = "[103_18:154.182,170.359,413.867,0.000,301.119,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7614601"] = {
        npcs = {
            {
                id = 22306,
                alias = "Npc22306",
                script = "Actor/Npc/TempNPC",
                pos = "[103_18:154.182,170.359,413.867,0.000,301.119,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7614602"] = {}
}
