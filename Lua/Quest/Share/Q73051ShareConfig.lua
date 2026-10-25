main_id = 73051
local tbl = {}
local n = 7305102
local v = 7305103
local n2 = 7305104
local n3 = 7305105
local n4 = 7305106
local n5 = 7305107
local n6 = 7305108
tbl[1] = 7305101
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
    ["7305101"] = {},
    ["7305102"] = {},
    ["7305103"] = {},
    ["7305104"] = {},
    ["7305105"] = {},
    ["7305106"] = {},
    ["7305107"] = {},
    ["7305108"] = {}
}

quest_data = {
    ["7305101"] = {},
    ["7305102"] = {
        npcs = {
            {
                id = 20750,
                alias = "Npc20750",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "OBSLNL1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7305103"] = {},
    ["7305104"] = {},
    ["7305105"] = {},
    ["7305106"] = {},
    ["7305107"] = {},
    ["7305108"] = {}
}
