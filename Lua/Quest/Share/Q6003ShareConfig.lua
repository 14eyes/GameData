main_id = 6003
local tbl = {}
local n = 600301
local v = 600303
local n2 = 600302
local n3 = 600304
local n4 = 600305
local n5 = 600308
local n6 = 600309
local n7 = 600307
local n8 = 600310
local n9 = 600311
local n10 = 600306
local n11 = 600313
tbl[1] = 600312
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
    ["600301"] = {},
    ["600304"] = {},
    ["600305"] = {},
    ["600308"] = {},
    ["600309"] = {},
    ["600310"] = {},
    ["600311"] = {},
    ["600312"] = {},
    ["600313"] = {}
}

quest_data = {
    ["600301"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_13:-8.380,0.331,-34.702,0.000,90.000,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_120:-2.175,0.318,-31.211,0.000,193.292,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1312,
                alias = "Npc1312",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_125:-0.482,0.313,-33.348,0.000,262.490,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_124:-0.620,0.313,-32.205,0.000,248.189,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1314,
                alias = "Npc1314",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_122:-1.567,0.312,-34.956,0.000,309.167,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_121:-3.456,0.312,-34.833,0.000,44.927,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_123:-3.611,0.350,-32.172,0.000,132.786,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["600302"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_361000001:6337.768,207.505,9518.070,0.000,100.073,0.000]"}}
    },
    ["600303"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_361000001:6337.768,207.505,9518.070,0.000,100.073,0.000]"}}
    },
    ["600304"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_74:-4.145,0.328,-33.330,0.000,85.315,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["600305"] = {
        npcs = {
            {
                id = 16179,
                alias = "Npc16179",
                script = "Actor/Npc/TempNPC",
                pos = "[20322_3:309.422,310.760,540.634,0.000,206.717,0.000]",
                scene_id = 20322,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["600306"] = {},
    ["600307"] = {},
    ["600308"] = {},
    ["600309"] = {
        npcs = {
            {
                id = 12695,
                alias = "Npc12695",
                script = "Actor/Npc/TempNPC",
                pos = "[20322_4:335.539,293.620,189.253,359.880,0.000,2.400]",
                scene_id = 20322,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16457,
                alias = "Npc16457",
                script = "Actor/Npc/TempNPC",
                pos = "[20322_2:335.243,289.002,230.961,0.000,173.235,0.000]",
                scene_id = 20322,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["600310"] = {},
    ["600311"] = {
        npcs = {
            {
                id = 12695,
                alias = "Npc12695",
                script = "Actor/Npc/TempNPC",
                pos = "[20322_2:335.243,289.002,230.961,0.000,173.235,0.000]",
                scene_id = 20322,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["600312"] = {},
    ["600313"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360700256:1773.084,221.047,9500.563,0.000,67.941,0.000]"}},
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1291, pos = "[20321_15:1603.782,243.775,9447.892,0.000,298.497,0.000]"}
        }
    }
}
