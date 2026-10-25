main_id = 77005
local tbl = {}
local n = 7700502
tbl[1] = 7700501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7700501"] = {}, ["7700502"] = {}}

quest_data = {
    ["7700501"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_37:2.570,-5.955,-423.476]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 1159, pos = "[1159_37:2.570,-5.955,-423.476]"},
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}
        }
    },
    ["7700502"] = {}
}
