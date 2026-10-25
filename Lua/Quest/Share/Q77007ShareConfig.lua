main_id = 77007
local tbl = {}
local n = 7700702
tbl[1] = 7700701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7700701"] = {}, ["7700702"] = {}}

quest_data = {
    ["7700701"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800036:8597.095,205.279,7970.882,0.000,359.142,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_370800036:8597.095,205.279,7970.882,0.000,359.142,0.000]"},
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}
        }
    },
    ["7700702"] = {}
}
