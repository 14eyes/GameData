main_id = 77235
local tbl = {}
local n = 7723502
tbl[1] = 7723501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7723501"] = {}, ["7723502"] = {}}

quest_data = {
    ["7723501"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_11:63.269,-4.142,-459.145]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"},
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}
        }
    },
    ["7723502"] = {}
}
