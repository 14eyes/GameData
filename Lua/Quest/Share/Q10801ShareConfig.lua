main_id = 10801
local tbl = {}
local n = 1080102
local v = 1080103
tbl[1] = 1080101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1080101"] = {}}

quest_data = {
    ["1080101"] = {transmit_points = {{point_id = 3, scene_id = 1008, pos = "[1008_138:4.071,0.025,-5.743]"}}},
    ["1080102"] = {transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_300401944:2340.540,259.998,-684.321]"}}},
    ["1080103"] = {}
}
