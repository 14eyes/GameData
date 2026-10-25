main_id = 73112
local tbl = {}
local n = 7311202
local v = 7311203
local n2 = 7311204
local n3 = 7311205
local n4 = 7311206
local n5 = 7311207
local n6 = 7311208
tbl[1] = 7311201
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
    ["7311201"] = {},
    ["7311202"] = {},
    ["7311203"] = {},
    ["7311204"] = {},
    ["7311205"] = {},
    ["7311206"] = {},
    ["7311207"] = {},
    ["7311208"] = {}
}

quest_data = {
    ["7311201"] = {},
    ["7311202"] = {
        npcs = {
            {
                id = 20753,
                alias = "Npc20753",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "OBSLNL_HY2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7311203"] = {},
    ["7311204"] = {},
    ["7311205"] = {},
    ["7311206"] = {},
    ["7311207"] = {},
    ["7311208"] = {}
}
