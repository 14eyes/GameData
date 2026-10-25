main_id = 77011
local tbl = {}
local n = 7701102
tbl[1] = 7701101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7701101"] = {}, ["7701102"] = {}}

quest_data = {
    ["7701101"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[1158_47:-10.345,0.011,21.268,0.000,312.561,0.000]",
                scene_id = 1158,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 1158, pos = "[1158_47:-10.345,0.011,21.268,0.000,312.561,0.000]"},
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}
        }
    },
    ["7701102"] = {}
}
