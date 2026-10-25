main_id = 70100
local tbl = {}
local n = 7010002
local v = 7010003
local n2 = 7010034
local n3 = 7010004
local n4 = 7010005
local n5 = 7010030
local n6 = 7010006
local n7 = 7010035
local n8 = 7010007
local n9 = 7010031
local n10 = 7010008
local n11 = 7010036
local n12 = 7010009
local n13 = 7010032
local n14 = 7010010
local n15 = 7010037
local n16 = 7010012
local n17 = 7010033
local n18 = 7010013
local n19 = 7010014
local n20 = 7010015
local n21 = 7010038
local n22 = 7010016
local n23 = 7010040
local n24 = 7010017
local n25 = 7010019
local n26 = 7010039
local n27 = 7010041
local n28 = 7010042
local n29 = 7010020
local n30 = 7010022
local n31 = 7010023
local n32 = 7010024
local n33 = 7010025
local n34 = 7010026
local n35 = 7010028
local n36 = 7010011
local n37 = 7010018
local n38 = 7010021
local n39 = 7010027
local n40 = 7010029
tbl[1] = 7010001
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
tbl[21] = n19
tbl[22] = n20
tbl[23] = n21
tbl[24] = n22
tbl[25] = n23
tbl[26] = n24
tbl[27] = n25
tbl[28] = n26
tbl[29] = n27
tbl[30] = n28
tbl[31] = n29
tbl[32] = n30
tbl[33] = n31
tbl[34] = n32
tbl[35] = n33
tbl[36] = n34
tbl[37] = n35
tbl[38] = n36
tbl[39] = n37
tbl[40] = n38
tbl[41] = n39
tbl[42] = n40
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7010001"] = {},
    ["7010002"] = {},
    ["7010003"] = {},
    ["7010004"] = {},
    ["7010005"] = {},
    ["7010006"] = {},
    ["7010007"] = {},
    ["7010008"] = {},
    ["7010009"] = {},
    ["7010010"] = {},
    ["7010011"] = {},
    ["7010012"] = {},
    ["7010013"] = {},
    ["7010014"] = {},
    ["7010015"] = {},
    ["7010016"] = {},
    ["7010017"] = {},
    ["7010018"] = {},
    ["7010019"] = {},
    ["7010020"] = {},
    ["7010021"] = {},
    ["7010022"] = {},
    ["7010023"] = {},
    ["7010024"] = {},
    ["7010025"] = {},
    ["7010026"] = {},
    ["7010027"] = {},
    ["7010028"] = {},
    ["7010029"] = {},
    ["7010034"] = {},
    ["7010035"] = {},
    ["7010036"] = {},
    ["7010037"] = {},
    ["7010038"] = {},
    ["7010039"] = {},
    ["7010040"] = {},
    ["7010041"] = {}
}

quest_data = {
    ["7010001"] = {},
    ["7010002"] = {
        npcs = {
            {
                id = 17101,
                alias = "Npc17101",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200046:9519.972,392.853,6551.748]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7010003"] = {
        npcs = {
            {
                id = 17100,
                alias = "Npc17100",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200047:9504.663,414.628,6586.601]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7010004"] = {
        npcs = {
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200048:9615.153,384.888,6469.325,0.000,35.264,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7010005"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1351, pos = "[20383_5:8516.396,324.037,6790.741,0.000,116.504,0.000]"}}
    },
    ["7010006"] = {
        npcs = {
            {
                id = 17102,
                alias = "Npc17102",
                script = "Actor/Npc/TempNPC",
                pos = "[20383_1:8870.482,238.020,6891.304]",
                scene_id = 20383,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_370900016:8860.692,237.924,6880.907]"}}
    },
    ["7010007"] = {
        transmit_points_enter_dungeon = {{point_id = 2, dungeon_id = 1351, pos = "[20383_6:9550.711,229.983,7596.816,0.000,218.550,0.000]"}}
    },
    ["7010008"] = {
        npcs = {
            {
                id = 17103,
                alias = "Npc17103",
                script = "Actor/Npc/TempNPC",
                pos = "[20383_2:9535.834,290.744,7512.580]",
                scene_id = 20383,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_370900017:9534.532,246.632,7537.698]"}}
    },
    ["7010009"] = {
        transmit_points_enter_dungeon = {{point_id = 3, dungeon_id = 1351, pos = "[20383_7:9431.306,247.428,7588.810]"}}
    },
    ["7010010"] = {
        npcs = {
            {
                id = 17104,
                alias = "Npc17104",
                script = "Actor/Npc/TempNPC",
                pos = "[20383_3:9333.596,308.058,7660.138]",
                scene_id = 20383,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_370900018:9400.280,273.622,7615.169]"}}
    },
    ["7010011"] = {},
    ["7010012"] = {
        transmit_points_enter_dungeon = {{point_id = 4, dungeon_id = 1351, pos = "[20383_8:8970.060,220.000,6467.443]"}}
    },
    ["7010013"] = {
        npcs = {
            {
                id = 15921,
                alias = "Npc15921",
                script = "Actor/Npc/TempNPC",
                pos = "[20383_4:8824.961,232.000,6339.210]",
                scene_id = 20383,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7010014"] = {},
    ["7010015"] = {
        npcs = {
            {
                id = 17105,
                alias = "Npc17105",
                script = "Actor/Npc/TempNPC",
                pos = "[20383_4:8824.961,232.000,6339.210]",
                scene_id = 20383,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200049:8824.000,232.000,6339.000,0.000,129.055,0.000]"}}
    },
    ["7010016"] = {},
    ["7010017"] = {
        npcs = {
            {
                id = 17100,
                alias = "Npc17100",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_64:0.261,0.052,-376.872]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7010018"] = {},
    ["7010019"] = {
        npcs = {
            {
                id = 17106,
                alias = "Npc17106",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_65:-21.413,-3.960,-461.126]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7010020"] = {
        npcs = {
            {
                id = 17100,
                alias = "Npc17100",
                script = "Actor/Npc/TempNPC",
                pos = "[51331_6:8972.502,71.292,7137.357]",
                scene_id = 51331,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 5, dungeon_id = 10951, pos = "[51331_6:8972.502,71.292,7137.357]"}}
    },
    ["7010021"] = {},
    ["7010022"] = {
        npcs = {
            {
                id = 17509,
                alias = "Npc17509",
                script = "Actor/Npc/TempNPC",
                pos = "[51331_3:9392.537,159.561,7245.859,0.000,78.679,0.000]",
                scene_id = 51331,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17108,
                alias = "Npc17108",
                script = "Actor/Npc/TempNPC",
                pos = "[51331_3:9392.537,159.561,7245.859,0.000,78.679,0.000]",
                scene_id = 51331,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7010023"] = {},
    ["7010024"] = {
        npcs = {
            {
                id = 17100,
                alias = "Npc17100",
                script = "Actor/Npc/TempNPC",
                pos = "[51331_3:9392.537,159.561,7245.859,0.000,78.679,0.000]",
                scene_id = 51331,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7010025"] = {},
    ["7010026"] = {
        npcs = {
            {
                id = 17100,
                alias = "Npc17100",
                script = "Actor/Npc/TempNPC",
                pos = "[51331_5:9337.102,203.356,7284.200]",
                scene_id = 51331,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_370900019:9336.522,203.366,7281.016]"}}
    },
    ["7010027"] = {},
    ["7010028"] = {
        npcs = {
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371100005:9557.633,293.448,7515.408,0.000,47.957,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_370900019:9336.522,203.366,7281.016]"}}
    },
    ["7010029"] = {},
    ["7010030"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1351, pos = "[20383_5:8516.396,324.037,6790.741,0.000,116.504,0.000]"}}
    },
    ["7010031"] = {
        transmit_points_enter_dungeon = {{point_id = 2, dungeon_id = 1351, pos = "[20383_6:9550.711,229.983,7596.816,0.000,218.550,0.000]"}}
    },
    ["7010032"] = {
        transmit_points_enter_dungeon = {{point_id = 3, dungeon_id = 1351, pos = "[20383_7:9431.306,247.428,7588.810]"}}
    },
    ["7010033"] = {
        transmit_points_enter_dungeon = {{point_id = 4, dungeon_id = 1351, pos = "[20383_8:8970.060,220.000,6467.443]"}}
    },
    ["7010034"] = {},
    ["7010035"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_370900016:8860.692,237.924,6880.907]"}}},
    ["7010036"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_370900017:9534.532,246.632,7537.698]"}}},
    ["7010037"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_370900018:9400.280,273.622,7615.169]"}}},
    ["7010038"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200049:8824.000,232.000,6339.000,0.000,129.055,0.000]"}}
    },
    ["7010039"] = {},
    ["7010040"] = {},
    ["7010041"] = {
        transmit_points_enter_dungeon = {{point_id = 5, dungeon_id = 10951, pos = "[51331_6:8972.502,71.292,7137.357]"}}
    },
    ["7010042"] = {
        transmit_points_enter_dungeon = {{point_id = 5, dungeon_id = 10951, pos = "[51331_6:8972.502,71.292,7137.357]"}}
    }
}
