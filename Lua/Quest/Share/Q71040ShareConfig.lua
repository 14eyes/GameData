main_id = 71040
local tbl = {}
local n = 7104001
local v = 7104009
local n2 = 7104002
local n3 = 7104003
local n4 = 7104005
local n5 = 7104008
tbl[1] = 7104010
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7104001"] = {},
    ["7104002"] = {},
    ["7104003"] = {},
    ["7104005"] = {},
    ["7104008"] = {},
    ["7104009"] = {},
    ["7104010"] = {}
}

quest_data = {
    ["7104001"] = {
        npcs = {
            {
                id = 20524,
                alias = "Npc20524",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104001Photo",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104002"] = {},
    ["7104003"] = {},
    ["7104005"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7104005_N1005",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104008"] = {transmit_points = {{point_id = 1, scene_id = 6, pos = "Q7104003Investigation"}}},
    ["7104009"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7104005_N1005",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "WQ71041_ZHIQIONG",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "WQ71041_ZHIQIONG",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7104010"] = {}
}
