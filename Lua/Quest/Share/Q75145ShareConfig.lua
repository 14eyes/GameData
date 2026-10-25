main_id = 75145
local tbl = {}
local n = 7514501
local v = 7514503
tbl[1] = 7514502
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7514501"] = {}, ["7514502"] = {}, ["7514503"] = {}}

quest_data = {
    ["7514501"] = {
        npcs = {
            {
                id = 21772,
                alias = "Npc21772",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10195:-2209.462,216.265,9520.234]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7514502"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_10195:-2209.462,216.265,9520.234]"}}},
    ["7514503"] = {}
}
