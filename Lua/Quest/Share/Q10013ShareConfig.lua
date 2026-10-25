main_id = 10013
local tbl = {}
local n = 1001302
local v = 1001303
local n2 = 1001304
local n3 = 1001305
local n4 = 1001306
local n5 = 1001307
local n6 = 1001308
local n7 = 1001309
local n8 = 1001310
local n9 = 1001311
local n10 = 1001312
local n11 = 1001313
tbl[1] = 1001301
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
local tbl2 = {["1001301"] = {}, ["1001302"] = {}, ["1001303"] = {}}
local tbl3 = {}
local quest_var = {}
local n12 = 0
local n13 = 0
local n14 = 1
local n15 = 0
quest_var[1] = 0
quest_var[2] = n12
quest_var[3] = n13
quest_var[4] = n14
quest_var[5] = n15
tbl3.quest_var = quest_var
tbl2["1001304"] = tbl3
tbl2["1001305"] = {}
local tbl4 = {}
local quest_var2 = {}
local n16 = -1
local n17 = -1
local n18 = -1
local n19 = -1
quest_var2[1] = 1
quest_var2[2] = n16
quest_var2[3] = n17
quest_var2[4] = n18
quest_var2[5] = n19
tbl4.quest_var = quest_var2
tbl2["1001306"] = tbl4
tbl2["1001307"] = {}
tbl2["1001308"] = {}
tbl2["1001309"] = {}
tbl2["1001310"] = {}
tbl2["1001311"] = {}
tbl2["1001312"] = {}
tbl2["1001313"] = {}
rewind_data = tbl2

quest_data = {
    ["1001301"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16020:3116.923,202.497,-233.275,0.000,282.215,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1001302"] = {},
    ["1001303"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1325, pos = "[20356_6:322.478,158.438,578.826,0.000,160.134,0.000]"}}
    },
    ["1001304"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[20356_1:324.762,158.439,574.765,0.000,159.705,0.000]",
                scene_id = 20356,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20356, pos = "[20356_1:324.762,158.439,574.765,0.000,159.705,0.000]"}}
    },
    ["1001305"] = {
        npcs = {
            {
                id = 16719,
                alias = "Npc16719",
                script = "Actor/Npc/TempNPC",
                pos = "[20356_8:451.477,145.018,572.065]",
                scene_id = 20356,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16720,
                alias = "Npc16720",
                script = "Actor/Npc/TempNPC",
                pos = "[20356_7:458.002,145.126,569.492]",
                scene_id = 20356,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20356, pos = "[20356_10:449.404,145.126,567.028,0.000,78.781,0.000]"}}
    },
    ["1001306"] = {
        npcs = {
            {
                id = 16721,
                alias = "Npc16721",
                script = "Actor/Npc/TempNPC",
                pos = "[20356_9:446.891,145.125,566.952,0.000,264.853,0.000]",
                scene_id = 20356,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20356, pos = "[20356_12:449.622,145.126,567.227,0.000,259.879,0.000]"}}
    },
    ["1001307"] = {
        npcs = {
            {
                id = 1326,
                alias = "Npc1326",
                script = "Actor/Npc/TempNPC",
                pos = "[20356_3:524.516,146.590,709.523,0.000,116.985,0.000]",
                scene_id = 20356,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1001308"] = {},
    ["1001309"] = {
        npcs = {
            {
                id = 1326,
                alias = "Npc1326",
                script = "Actor/Npc/TempNPC",
                pos = "[20356_4:690.442,141.680,832.946,0.000,56.304,0.000]",
                scene_id = 20356,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1001310"] = {},
    ["1001311"] = {
        npcs = {
            {
                id = 1326,
                alias = "Npc1326",
                script = "Actor/Npc/TempNPC",
                pos = "[20356_4:690.442,141.680,832.946,0.000,56.304,0.000]",
                scene_id = 20356,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1001312"] = {
        npcs = {
            {
                id = 1326,
                alias = "Npc1326",
                script = "Actor/Npc/TempNPC",
                pos = "[20356_4:690.442,141.680,832.946,0.000,56.304,0.000]",
                scene_id = 20356,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1001313"] = {
        npcs = {
            {
                id = 1326,
                alias = "Npc1326",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16021:2396.219,260.214,-623.885,0.000,240.481,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_16752:2394.132,259.998,-619.911,0.000,186.009,0.000]"}}
    }
}
