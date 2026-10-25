main_id = 75137
local tbl = {}
local n = 7513701
local v = 7513702
local n2 = 7513703
local n3 = 7513704
local n4 = 7513705
local n5 = 7513711
local n6 = 7513709
local n7 = 7513706
local n8 = 7513707
local n9 = 7513710
local n10 = 7513712
tbl[1] = 7513708
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7513701"] = {},
    ["7513702"] = {},
    ["7513703"] = {},
    ["7513704"] = {},
    ["7513705"] = {},
    ["7513707"] = {},
    ["7513708"] = {},
    ["7513710"] = {}
}

quest_data = {
    ["7513701"] = {},
    ["7513702"] = {
        npcs = {
            {
                id = 21604,
                alias = "Npc21604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8711:619.561,-618.673,10728.050,0.000,42.670,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513703"] = {},
    ["7513704"] = {},
    ["7513705"] = {
        npcs = {
            {
                id = 21604,
                alias = "Npc21604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10171:703.564,-628.112,10816.900]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21603,
                alias = "Npc21603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8613:702.963,-628.112,10827.060,0.000,293.874,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7513706"] = {
        npcs = {
            {
                id = 21604,
                alias = "Npc21604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10288:-243.051,1219.682,9967.771]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 7504840, scene_id = 3, pos = "[3_8712:-282.548,1219.647,9926.474,0.000,36.780,0.000]"},
            {point_id = 7504841, scene_id = 3, pos = "[3_8713:692.530,-628.170,10803.980,0.000,32.000,0.000]"}
        }
    },
    ["7513707"] = {
        npcs = {
            {
                id = 21604,
                alias = "Npc21604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10148:703.498,-628.112,10811.570]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513708"] = {},
    ["7513709"] = {},
    ["7513710"] = {},
    ["7513711"] = {
        transmit_points = {{point_id = 7513609, scene_id = 3, pos = "[3_8712:-282.548,1219.647,9926.474,0.000,36.780,0.000]"}}
    },
    ["7513712"] = {}
}
