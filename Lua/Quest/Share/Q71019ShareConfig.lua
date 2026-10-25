main_id = 71019
local tbl = {}
local n = 7101902
local v = 7101903
tbl[1] = 7101901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7101901"] = {}, ["7101902"] = {}}

quest_data = {
    ["7101901"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "WQ2102106_Target",
                scene_id = 3,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7101902"] = {}
}
