main_id = 8022
local tbl = {}
local n = 802203
local v = 802202
tbl[1] = 802201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["802201"] = {}, ["802202"] = {}, ["802203"] = {}}

quest_data = {
    ["802201"] = {},
    ["802202"] = {
        transmit_points = {
            {point_id = 1, scene_id = 20224, pos = "[20224_26:-1065.886,201.369,2644.244,0.000,307.700,0.000]"},
            {point_id = 2, scene_id = 20224, pos = "[20224_27:-1092.281,218.657,2731.467,0.000,272.200,0.000]"},
            {point_id = 3, scene_id = 20224, pos = "[20224_28:-1064.651,219.206,2759.083,0.000,92.800,0.000]"}
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1210, pos = "[20224_26:-1065.886,201.369,2644.244,0.000,307.700,0.000]"},
            {point_id = 2, dungeon_id = 1210, pos = "[20224_27:-1092.281,218.657,2731.467,0.000,272.200,0.000]"},
            {point_id = 3, dungeon_id = 1210, pos = "[20224_28:-1064.651,219.206,2759.083,0.000,92.800,0.000]"}
        }
    },
    ["802203"] = {}
}
