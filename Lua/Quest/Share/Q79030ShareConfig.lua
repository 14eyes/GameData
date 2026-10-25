main_id = 79030
local tbl = {}
local n = 7903002
local v = 7903005
local n2 = 7903003
local n3 = 7903004
tbl[1] = 7903001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7903001"] = {}, ["7903002"] = {}, ["7903003"] = {}, ["7903004"] = {}, ["7903005"] = {}}

quest_data = {
    ["7903001"] = {},
    ["7903002"] = {},
    ["7903003"] = {},
    ["7903004"] = {},
    ["7903005"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7903001_guide",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
