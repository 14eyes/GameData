main_id = 75165
local tbl = {}
local n = 7516510
local v = 7516502
local n2 = 7516507
local n3 = 7516503
local n4 = 7516511
local n5 = 7516504
local n6 = 7516508
local n7 = 7516505
local n8 = 7516506
local n9 = 7516509
tbl[1] = 7516501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7516501"] = {},
    ["7516502"] = {},
    ["7516503"] = {},
    ["7516504"] = {},
    ["7516505"] = {},
    ["7516506"] = {},
    ["7516507"] = {},
    ["7516508"] = {},
    ["7516509"] = {},
    ["7516510"] = {},
    ["7516511"] = {}
}

quest_data = {
    ["7516501"] = {},
    ["7516502"] = {},
    ["7516503"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7516502_tp"}}},
    ["7516504"] = {},
    ["7516505"] = {transmit_points = {{point_id = 2, scene_id = 3, pos = "Q7516502_tp"}}},
    ["7516506"] = {
        npcs = {
            {
                id = 6458,
                alias = "Npc6458",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11041:-3157.844,310.426,10135.900,0.000,134.264,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6462,
                alias = "Npc6462",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11042:-3157.031,310.408,10134.830,0.000,318.939,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7516507"] = {},
    ["7516508"] = {},
    ["7516509"] = {},
    ["7516510"] = {},
    ["7516511"] = {}
}
