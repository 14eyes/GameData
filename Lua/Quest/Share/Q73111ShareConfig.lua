main_id = 73111
local tbl = {}
local n = 7311102
local v = 7311103
local n2 = 7311104
local n3 = 7311105
local n4 = 7311106
local n5 = 7311107
local n6 = 7311108
tbl[1] = 7311101
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
    ["7311101"] = {},
    ["7311102"] = {},
    ["7311103"] = {},
    ["7311104"] = {},
    ["7311105"] = {},
    ["7311106"] = {},
    ["7311107"] = {},
    ["7311108"] = {}
}

quest_data = {
    ["7311101"] = {},
    ["7311102"] = {
        npcs = {
            {
                id = 20752,
                alias = "Npc20752",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "OBSLNL_HY1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7311103"] = {},
    ["7311104"] = {},
    ["7311105"] = {},
    ["7311106"] = {},
    ["7311107"] = {},
    ["7311108"] = {}
}
