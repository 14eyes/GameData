main_id = 74100
local tbl = {}
local n = 7410003
local v = 7410004
local n2 = 7410006
local n3 = 7410005
local n4 = 7410007
local n5 = 7410009
local n6 = 7410010
local n7 = 7410011
local n8 = 7410012
local n9 = 7410013
local n10 = 7410002
local n11 = 7410008
tbl[1] = 7410001
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
tbl[12] = n10
tbl[13] = n11
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7410001"] = {},
    ["7410003"] = {},
    ["7410004"] = {},
    ["7410006"] = {},
    ["7410007"] = {},
    ["7410008"] = {},
    ["7410010"] = {},
    ["7410013"] = {}
}

quest_data = {
    ["7410001"] = {},
    ["7410002"] = {},
    ["7410003"] = {
        npcs = {
            {
                id = 20996,
                alias = "Npc20996",
                script = "Actor/Npc/TempNPC",
                pos = "Q7410003_N20996",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20997,
                alias = "Npc20997",
                script = "Actor/Npc/TempNPC",
                pos = "Q7410003_N20997",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20998,
                alias = "Npc20998",
                script = "Actor/Npc/TempNPC",
                pos = "Q7410003_N20998",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7410004"] = {
        npcs = {
            {
                id = 20999,
                alias = "Npc20999",
                script = "Actor/Npc/TempNPC",
                pos = "Q7410004_N20999",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7410005"] = {},
    ["7410006"] = {
        npcs = {
            {
                id = 20995,
                alias = "Npc20995",
                script = "Actor/Npc/TempNPC",
                pos = "[1080_31:178.562,-21.321,196.957,0.000,235.320,0.000]",
                scene_id = 1080,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7410007"] = {},
    ["7410008"] = {},
    ["7410009"] = {},
    ["7410010"] = {},
    ["7410011"] = {},
    ["7410012"] = {},
    ["7410013"] = {}
}
