main_id = 77106
local tbl = {}
local n = 7710602
tbl[1] = 7710601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7710601"] = {}, ["7710602"] = {}}

quest_data = {
    ["7710601"] = {
        npcs = {
            {
                id = 7653,
                alias = "Npc7653",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15053:8412.766,440.192,6150.055,0.000,152.206,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 8, scene_id = 3, pos = "[3_18106:8415.884,439.885,6147.758,0.000,296.394,0.000]"}}
    },
    ["7710602"] = {
        npcs = {
            {
                id = 7653,
                alias = "Npc7653",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15053:8412.766,440.192,6150.055,0.000,152.206,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 8, scene_id = 3, pos = "[3_18106:8415.884,439.885,6147.758,0.000,296.394,0.000]"}}
    }
}
