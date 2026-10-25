main_id = 6010
local tbl = {}
local n = 601002
local v = 601003
local n2 = 601004
local n3 = 601017
local n4 = 601005
local n5 = 601006
local n6 = 601007
local n7 = 601008
local n8 = 601015
local n9 = 601018
local n10 = 601009
local n11 = 601014
local n12 = 601016
local n13 = 601010
local n14 = 601011
local n15 = 601012
local n16 = 601013
tbl[1] = 601001
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["601001"] = {},
    ["601002"] = {},
    ["601003"] = {},
    ["601004"] = {},
    ["601005"] = {},
    ["601006"] = {},
    ["601009"] = {},
    ["601010"] = {},
    ["601011"] = {},
    ["601012"] = {},
    ["601013"] = {},
    ["601015"] = {},
    ["601016"] = {},
    ["601017"] = {},
    ["601018"] = {}
}

quest_data = {
    ["601001"] = {
        npcs = {
            {
                id = 15386,
                alias = "Npc15386",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_16:-33.232,2.184,-7.199]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1314,
                alias = "Npc1314",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_14:-22.271,1.291,-6.815,0.000,324.903,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["601002"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_5:0.401,0.312,-63.645]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["601003"] = {
        npcs = {
            {
                id = 1314,
                alias = "Npc1314",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11752:3758.803,218.543,9208.004]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 9, scene_id = 3, pos = "[3_11753:2242.528,200.262,9518.904,0.000,59.810,0.000]"}}
    },
    ["601004"] = {
        npcs = {
            {
                id = 1314,
                alias = "Npc1314",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11753:2242.528,200.262,9518.904,0.000,59.810,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1258, pos = "[20278_1:1757.069,225.840,9495.331,0.000,241.910,0.000]"}}
    },
    ["601005"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_1:1757.069,225.840,9495.331,0.000,241.910,0.000]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1258, pos = "[20278_1:1757.069,225.840,9495.331,0.000,241.910,0.000]"}}
    },
    ["601006"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_4:1693.910,223.149,9430.492]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1258, pos = "[20278_1:1757.069,225.840,9495.331,0.000,241.910,0.000]"}}
    },
    ["601007"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_4:1693.910,223.149,9430.492]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1258, pos = "[20278_1:1757.069,225.840,9495.331,0.000,241.910,0.000]"}}
    },
    ["601008"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_2:1649.122,224.059,9445.048,0.000,182.109,0.000]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1258, pos = "[20278_1:1757.069,225.840,9495.331,0.000,241.910,0.000]"}}
    },
    ["601009"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_2:1649.122,224.059,9445.048,0.000,182.109,0.000]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 10, scene_id = 20278, pos = "[20278_9:1622.733,255.726,9395.583]"}},
        transmit_points_enter_dungeon = {{point_id = 3, dungeon_id = 1258, pos = "[20278_36:1623.339,255.974,9394.031]"}}
    },
    ["601010"] = {
        transmit_points_enter_dungeon = {{point_id = 4, dungeon_id = 1258, pos = "[20278_37:1649.609,227.689,9472.398]"}}
    },
    ["601011"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_3:1652.411,228.486,9499.277]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 4, dungeon_id = 1258, pos = "[20278_37:1649.609,227.689,9472.398]"}}
    },
    ["601012"] = {
        npcs = {
            {
                id = 1314,
                alias = "Npc1314",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11753:2242.528,200.262,9518.904,0.000,59.810,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 5, scene_id = 3, pos = "[3_11753:2242.528,200.262,9518.904,0.000,59.810,0.000]"},
            {point_id = 6, scene_id = 3, pos = "[3_11740:2136.161,109.109,11208.750,0.000,244.948,0.000]"}
        }
    },
    ["601013"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11740:2136.161,109.109,11208.750,0.000,244.948,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["601014"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_8:1654.169,295.876,9477.730]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 4, scene_id = 20278, pos = "[20278_7:1649.273,227.689,9472.140]"}},
        transmit_points_enter_dungeon = {{point_id = 3, dungeon_id = 1258, pos = "[20278_36:1623.339,255.974,9394.031]"}}
    },
    ["601015"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_2:1649.122,224.059,9445.048,0.000,182.109,0.000]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 15, scene_id = 20278, pos = "[20278_36:1623.339,255.974,9394.031]"}},
        transmit_points_enter_dungeon = {{point_id = 3, dungeon_id = 1258, pos = "[20278_36:1623.339,255.974,9394.031]"}}
    },
    ["601016"] = {
        transmit_points_enter_dungeon = {{point_id = 4, dungeon_id = 1258, pos = "[20278_37:1649.609,227.689,9472.398]"}}
    },
    ["601017"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_1:1757.069,225.840,9495.331,0.000,241.910,0.000]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1258, pos = "[20278_1:1757.069,225.840,9495.331,0.000,241.910,0.000]"}}
    },
    ["601018"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_2:1649.122,224.059,9445.048,0.000,182.109,0.000]",
                scene_id = 20278,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15486,
                alias = "Npc15486",
                script = "Actor/Npc/TempNPC",
                pos = "[20278_26:1623.984,255.395,9397.030]",
                scene_id = 20278,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 3, dungeon_id = 1258, pos = "[20278_36:1623.339,255.974,9394.031]"}}
    }
}
