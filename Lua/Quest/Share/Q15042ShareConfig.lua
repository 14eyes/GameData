main_id = 15042
local tbl = {}
local n = 1504204
local v = 1504213
local n2 = 1504214
local n3 = 1504215
local n4 = 1504202
local n5 = 1504216
local n6 = 1504203
local n7 = 1504217
tbl[1] = 1504201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1504201"] = {},
    ["1504203"] = {},
    ["1504204"] = {},
    ["1504213"] = {},
    ["1504214"] = {},
    ["1504215"] = {},
    ["1504216"] = {},
    ["1504217"] = {}
}

quest_data = {
    ["1504201"] = {
        npcs = {
            {
                id = 21845,
                alias = "Npc21845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12332:812.724,203.005,14241.990]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12332:812.724,203.005,14241.990]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1504202"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1248, pos = "[20267_3:800.308,214.571,14436.340,0.000,31.424,0.000]"}}
    },
    ["1504203"] = {},
    ["1504204"] = {},
    ["1504213"] = {
        npcs = {
            {
                id = 21846,
                alias = "Npc21846",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11866:925.115,234.372,14441.440,0.000,306.722,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11866:925.115,234.372,14441.440,0.000,306.722,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1504214"] = {},
    ["1504215"] = {
        npcs = {
            {
                id = 21845,
                alias = "Npc21845",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12331:790.053,217.849,14415.750,0.000,24.379,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12331:790.053,217.849,14415.750,0.000,24.379,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1248, pos = "[20267_3:800.308,214.571,14436.340,0.000,31.424,0.000]"}}
    },
    ["1504216"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_11647:839.643,200.600,14384.020,0.000,50.875,0.000]"}}
    },
    ["1504217"] = {
        npcs = {
            {
                id = 6551,
                alias = "Npc6551",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12330:840.007,200.600,14385.470,0.000,182.549,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
