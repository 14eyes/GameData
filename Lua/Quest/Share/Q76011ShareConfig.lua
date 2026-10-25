main_id = 76011
local tbl = {}
local n = 7601101
local v = 7601102
local n2 = 7601103
local n3 = 7601104
local n4 = 7601105
local n5 = 7601106
local n6 = 7601118
local n7 = 7601107
local n8 = 7601108
local n9 = 7601117
local n10 = 7601110
local n11 = 7601109
local n12 = 7601113
local n13 = 7601114
local n14 = 7601115
local n15 = 7601116
local n16 = 7601111
local n17 = 7601119
local n18 = 7601120
tbl[1] = 7601112
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
tbl[18] = n16
tbl[19] = n17
tbl[20] = n18
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7601101"] = {},
    ["7601102"] = {},
    ["7601103"] = {},
    ["7601104"] = {},
    ["7601105"] = {},
    ["7601108"] = {},
    ["7601109"] = {},
    ["7601110"] = {},
    ["7601111"] = {},
    ["7601112"] = {},
    ["7601113"] = {},
    ["7601114"] = {},
    ["7601115"] = {},
    ["7601116"] = {},
    ["7601117"] = {},
    ["7601118"] = {},
    ["7601119"] = {},
    ["7601120"] = {}
}

quest_data = {
    ["7601101"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11150:1941.900,236.600,10546.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601102"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12524:1961.140,243.825,10587.130,0.000,248.067,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601103"] = {},
    ["7601104"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11132:1950.017,241.623,10578.700,0.000,299.154,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601105"] = {},
    ["7601106"] = {},
    ["7601107"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360300001:1586.336,-772.760,10690.350]"}}
    },
    ["7601108"] = {
        transmit_points = {
            {point_id = 2, scene_id = 3, pos = "[3_360300002:2061.295,296.170,10741.780,0.000,40.613,0.000]"},
            {point_id = 1, scene_id = 3, pos = "[3_360300001:1586.336,-772.760,10690.350]"}
        }
    },
    ["7601109"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13379:1890.024,-25.172,10770.810,0.000,105.678,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_360300002:2061.295,296.170,10741.780,0.000,40.613,0.000]"}}
    },
    ["7601110"] = {},
    ["7601111"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13380:1979.047,-18.879,10771.320,0.000,100.679,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601112"] = {},
    ["7601113"] = {
        npcs = {
            {
                id = 22188,
                alias = "Npc22188",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11127:1981.663,-18.440,10771.300,0.000,276.471,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601114"] = {},
    ["7601115"] = {},
    ["7601116"] = {
        npcs = {
            {
                id = 22161,
                alias = "Npc22161",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11323:1919.082,21.709,10771.920,0.000,94.603,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601117"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12588:2062.670,296.468,10741.330]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_360300002:2061.295,296.170,10741.780,0.000,40.613,0.000]"}}
    },
    ["7601118"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11123:1586.026,-778.590,10690.890]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601119"] = {},
    ["7601120"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13219:2065.146,302.401,10761.360]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
