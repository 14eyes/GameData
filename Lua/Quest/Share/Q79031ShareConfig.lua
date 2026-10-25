main_id = 79031
local tbl = {}
local n = 7903102
local v = 7903105
local n2 = 7903103
local n3 = 7903106
local n4 = 7903104
tbl[1] = 7903101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7903101"] = {},
    ["7903102"] = {},
    ["7903103"] = {},
    ["7903104"] = {},
    ["7903105"] = {},
    ["7903106"] = {}
}

quest_data = {
    ["7903101"] = {},
    ["7903102"] = {},
    ["7903103"] = {},
    ["7903104"] = {},
    ["7903105"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7903105_guide",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7903106"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7903106_guide",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
