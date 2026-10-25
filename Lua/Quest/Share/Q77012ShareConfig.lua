main_id = 77012
local tbl = {}
local n = 7701203
local v = 7701204
local n2 = 7701202
tbl[1] = 7701201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7701201"] = {}, ["7701202"] = {}, ["7701203"] = {}, ["7701204"] = {}}

quest_data = {
    ["7701201"] = {
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
    ["7701202"] = {},
    ["7701203"] = {},
    ["7701204"] = {}
}
