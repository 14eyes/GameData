main_id = 77004
local tbl = {}
local n = 7700402
tbl[1] = 7700401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7700401"] = {}, ["7700402"] = {}}

quest_data = {
    ["7700401"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[1158_44:-14.787,0.011,22.018,0.000,304.739,0.000]",
                scene_id = 1158,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 1158, pos = "[1158_44:-14.787,0.011,22.018,0.000,304.739,0.000]"},
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}
        }
    },
    ["7700402"] = {}
}
