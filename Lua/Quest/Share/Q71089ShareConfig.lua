main_id = 71089
local tbl = {}
local n = 7108902
local v = 7108903
tbl[1] = 7108901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7108901"] = {}, ["7108902"] = {}, ["7108903"] = {}}

quest_data = {
    ["7108901"] = {},
    ["7108902"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7104525_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7108903"] = {}
}
