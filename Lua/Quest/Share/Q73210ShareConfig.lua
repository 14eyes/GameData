main_id = 73210
local tbl = {}
local n = 7321004
local v = 7321005
local n2 = 7321003
local n3 = 7321002
local n4 = 7321001
tbl[1] = 7321006
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7321001"] = {}, ["7321002"] = {}, ["7321003"] = {}, ["7321004"] = {}, ["7321005"] = {}}

quest_data = {
    ["7321001"] = {},
    ["7321002"] = {},
    ["7321003"] = {},
    ["7321004"] = {},
    ["7321005"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7321002_N20885",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7321006"] = {}
}
