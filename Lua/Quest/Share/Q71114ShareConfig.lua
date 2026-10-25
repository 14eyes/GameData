main_id = 71114
local tbl = {}
local n = 7111402
local v = 7111403
local n2 = 7111406
local n3 = 7111404
local n4 = 7111405
local n5 = 7111407
local n6 = 7111408
local n7 = 7111409
tbl[1] = 7111401
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
    ["7111401"] = {},
    ["7111402"] = {},
    ["7111403"] = {},
    ["7111404"] = {
        npcs = {
            {
                id = 2526,
                alias = "Npc2526",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500135:2463.073,404.385,2160.555,0.000,11.389,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7111405"] = {},
    ["7111406"] = {},
    ["7111408"] = {},
    ["7111409"] = {},
    ["7111407"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500132:2352.619,377.008,2091.385,0.000,4.389,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13490,
                alias = "Npc13490",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500138:2350.074,376.944,2091.490,0.000,298.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13491,
                alias = "Npc13491",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500137:2354.688,377.130,2090.385,0.000,124.227,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["7111401"] = {},
    ["7111402"] = {
        npcs = {
            {
                id = 13913,
                alias = "Npc13913",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500131:2419.622,421.317,2149.969,0.000,150.566,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2526,
                alias = "Npc2526",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500135:2463.073,404.385,2160.555,0.000,11.389,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7111403"] = {
        npcs = {
            {
                id = 2526,
                alias = "Npc2526",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500135:2463.073,404.385,2160.555,0.000,11.389,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13914,
                alias = "Npc13914",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500136:2496.333,428.610,2154.759,0.000,178.732,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7111404"] = {},
    ["7111405"] = {
        npcs = {
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500132:2352.619,377.008,2091.385,0.000,4.389,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13490,
                alias = "Npc13490",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500138:2350.074,376.944,2091.490,0.000,298.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13491,
                alias = "Npc13491",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500137:2354.688,377.130,2090.385,0.000,124.227,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7111406"] = {},
    ["7111407"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_311500149:2302.092,384.795,2108.077,0.000,51.181,0.000]"}}
    },
    ["7111408"] = {
        npcs = {
            {
                id = 2526,
                alias = "Npc2526",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500146:2303.257,384.795,2107.109]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500143:2304.248,384.795,2110.352,0.000,212.298,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13490,
                alias = "Npc13490",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500145:2302.506,384.795,2110.354,0.000,173.091,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13491,
                alias = "Npc13491",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500144:2305.192,384.795,2109.109,0.000,257.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7111409"] = {
        npcs = {
            {
                id = 2526,
                alias = "Npc2526",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_311500157:2301.599,382.806,2098.820,0.000,83.515,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13489,
                alias = "Npc13489",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311400059:2151.573,304.876,1489.261,0.000,351.767,0.000]",
                scene_id = 3,
                room_id = 1190,
                data_index = 2
            },
            {
                id = 13490,
                alias = "Npc13490",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311400063:2150.419,304.766,1491.175,0.000,125.869,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13491,
                alias = "Npc13491",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311400062:2150.010,304.673,1490.049,0.000,77.064,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
