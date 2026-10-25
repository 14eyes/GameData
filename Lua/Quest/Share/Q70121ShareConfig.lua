main_id = 70121
local tbl = {}
local n = 7012102
local v = 7012103
local n2 = 7012104
local n3 = 7012105
local n4 = 7012106
local n5 = 7012107
local n6 = 7012108
tbl[1] = 7012101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7012101"] = {},
    ["7012102"] = {},
    ["7012103"] = {},
    ["7012104"] = {},
    ["7012105"] = {},
    ["7012106"] = {}
}

quest_data = {
    ["7012101"] = {},
    ["7012102"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7012105",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7012103"] = {},
    ["7012104"] = {},
    ["7012105"] = {},
    ["7012106"] = {},
    ["7012107"] = {},
    ["7012108"] = {}
}
