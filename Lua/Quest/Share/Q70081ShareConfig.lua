main_id = 70081
local tbl = {}
local n = 7008105
local v = 7008103
local n2 = 7008102
local n3 = 7008104
tbl[1] = 7008101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7008101"] = {}, ["7008103"] = {}, ["7008104"] = {}}

quest_data = {
    ["7008101"] = {
        transmit_points = {
            {point_id = 1, scene_id = 103, pos = "[103_910302034:-774.847,589.251,1121.998,0.000,80.885,0.000]"}
        }
    },
    ["7008102"] = {},
    ["7008103"] = {},
    ["7008104"] = {
        transmit_points = {
            {point_id = 1, scene_id = 103, pos = "[103_910302034:-774.847,589.251,1121.998,0.000,80.885,0.000]"}
        }
    },
    ["7008105"] = {}
}
