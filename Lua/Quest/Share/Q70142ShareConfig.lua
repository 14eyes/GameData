main_id = 70142
local tbl = {}
local n = 7014201
local v = 7014202
tbl[1] = 7014203
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7014201"] = {}, ["7014202"] = {}, ["7014203"] = {}}

quest_data = {
    ["7014201"] = {transmit_points = {{point_id = 7014201, scene_id = 3, pos = "WQ70142_CS"}}},
    ["7014202"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "WQ70142_CS",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7014203"] = {}
}
