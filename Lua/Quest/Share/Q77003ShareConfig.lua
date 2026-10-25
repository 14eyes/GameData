main_id = 77003
local tbl = {}
local n = 7700303
local v = 7700302
local n2 = 7700304
tbl[1] = 7700301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7700301"] = {}, ["7700302"] = {}, ["7700303"] = {}, ["7700304"] = {}}

quest_data = {
    ["7700301"] = {
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
    ["7700302"] = {transmit_points = {{point_id = 1, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}}},
    ["7700303"] = {},
    ["7700304"] = {}
}
