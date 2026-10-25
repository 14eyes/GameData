main_id = 74042
local tbl = {}
local n = 7404217
local v = 7404202
local n2 = 7404215
local n3 = 7404203
local n4 = 7404204
local n5 = 7404205
local n6 = 7404206
local n7 = 7404207
local n8 = 7404208
local n9 = 7404209
local n10 = 7404210
local n11 = 7404211
local n12 = 7404213
local n13 = 7404214
local n14 = 7404216
local n15 = 7404212
tbl[1] = 7404201
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
tbl[14] = n12
tbl[15] = n13
tbl[16] = n14
tbl[17] = n15
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7404201"] = {},
    ["7404202"] = {},
    ["7404203"] = {},
    ["7404204"] = {},
    ["7404205"] = {},
    ["7404206"] = {},
    ["7404207"] = {},
    ["7404208"] = {},
    ["7404209"] = {},
    ["7404210"] = {},
    ["7404211"] = {},
    ["7404213"] = {},
    ["7404214"] = {},
    ["7404215"] = {},
    ["7404217"] = {}
}

quest_data = {
    ["7404201"] = {},
    ["7404202"] = {
        npcs = {
            {
                id = 21046,
                alias = "Npc21046",
                script = "Actor/Npc/TempNPC",
                pos = "QDiaoYuLao_Delaroche",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7404203"] = {
        npcs = {
            {
                id = 21046,
                alias = "Npc21046",
                script = "Actor/Npc/TempNPC",
                pos = "QDiaoYuLao_Giving",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                inWater = true
            }
        }
    },
    ["7404204"] = {},
    ["7404205"] = {},
    ["7404206"] = {},
    ["7404207"] = {
        npcs = {
            {
                id = 21046,
                alias = "Npc21046",
                script = "Actor/Npc/TempNPC",
                pos = "QDiaoYuLao_Giving",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                inWater = true
            }
        }
    },
    ["7404208"] = {},
    ["7404209"] = {},
    ["7404210"] = {},
    ["7404211"] = {},
    ["7404212"] = {},
    ["7404213"] = {},
    ["7404214"] = {},
    ["7404215"] = {
        npcs = {
            {
                id = 21046,
                alias = "Npc21046",
                script = "Actor/Npc/TempNPC",
                pos = "QDiaoYuLao_Giving",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7404216"] = {},
    ["7404217"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "QDiaoYuLao_Player"}}}
}
