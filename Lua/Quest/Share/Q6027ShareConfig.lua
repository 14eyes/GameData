main_id = 6027
local tbl = {}
local n = 602712
local v = 602713
local n2 = 602714
local n3 = 602715
local n4 = 602716
local n5 = 602717
local n6 = 602718
local n7 = 602719
local n8 = 602721
local n9 = 602722
local n10 = 602723
local n11 = 602724
local n12 = 602710
local n13 = 602725
local n14 = 602726
local n15 = 602727
local n16 = 602728
local n17 = 602729
local n18 = 602730
local n19 = 602731
local n20 = 602732
local n21 = 602733
local n22 = 602701
local n23 = 602702
local n24 = 602703
local n25 = 602706
local n26 = 602707
local n27 = 602704
local n28 = 602705
tbl[1] = 602711
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["602701"] = {},
    ["602702"] = {},
    ["602703"] = {},
    ["602704"] = {
        npcs = {
            {
                id = 16058,
                alias = "Npc16058",
                script = "Actor/Npc/TempNPC",
                pos = "[20303_16:1665.897,227.897,9462.485,0.000,272.541,0.000]",
                scene_id = 20303,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["602705"] = {
        npcs = {
            {
                id = 16058,
                alias = "Npc16058",
                script = "Actor/Npc/TempNPC",
                pos = "[20303_16:1665.897,227.897,9462.485,0.000,272.541,0.000]",
                scene_id = 20303,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["602710"] = {},
    ["602711"] = {},
    ["602712"] = {},
    ["602713"] = {},
    ["602714"] = {},
    ["602715"] = {},
    ["602716"] = {},
    ["602717"] = {},
    ["602718"] = {},
    ["602719"] = {},
    ["602721"] = {},
    ["602722"] = {},
    ["602723"] = {},
    ["602724"] = {},
    ["602725"] = {},
    ["602726"] = {},
    ["602727"] = {},
    ["602728"] = {},
    ["602729"] = {},
    ["602730"] = {},
    ["602731"] = {},
    ["602732"] = {},
    ["602733"] = {}
}

quest_data = {
    ["602701"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1282, pos = "[20303_2:1650.957,227.775,9473.770,0.000,346.953,0.000]"}}
    },
    ["602702"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20303_3:1649.781,227.752,9477.462,0.000,175.986,0.000]",
                scene_id = 20303,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["602703"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 16058,
                alias = "Npc16058",
                script = "Actor/Npc/TempNPC",
                pos = "[20303_16:1665.897,227.897,9462.485,0.000,272.541,0.000]",
                scene_id = 20303,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "[20303_26:1622.839,227.881,9489.093,0.000,19.836,0.000]",
                scene_id = 20303,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[20303_26:1622.839,227.881,9489.093,0.000,19.836,0.000]",
                scene_id = 20303,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 1294, pos = "[20319_1:-2.158,-0.672,-1.599]"},
            {point_id = 2, dungeon_id = 1295, pos = "[20319_1:-2.158,-0.672,-1.599]"},
            {point_id = 3, dungeon_id = 1296, pos = "[20319_1:-2.158,-0.672,-1.599]"},
            {point_id = 4, dungeon_id = 10811, pos = "[51171_1:545.961,270.206,497.225]"}
        }
    },
    ["602704"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["602705"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[20303_22:1637.126,227.900,9487.669,0.000,89.085,0.000]",
                scene_id = 20303,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["602706"] = {},
    ["602707"] = {},
    ["602710"] = {},
    ["602711"] = {},
    ["602712"] = {},
    ["602713"] = {},
    ["602714"] = {},
    ["602715"] = {},
    ["602716"] = {},
    ["602717"] = {},
    ["602718"] = {},
    ["602719"] = {},
    ["602721"] = {},
    ["602722"] = {},
    ["602723"] = {},
    ["602724"] = {},
    ["602725"] = {},
    ["602726"] = {},
    ["602727"] = {},
    ["602728"] = {},
    ["602729"] = {},
    ["602730"] = {},
    ["602731"] = {},
    ["602732"] = {},
    ["602733"] = {}
}
