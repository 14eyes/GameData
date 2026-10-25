main_id = 40115
local tbl = {}
local n = 4011501
local v = 4011509
local n2 = 4011520
local n3 = 4011502
local n4 = 4011503
local n5 = 4011517
local n6 = 4011504
local n7 = 4011519
local n8 = 4011505
local n9 = 4011506
local n10 = 4011507
local n11 = 4011508
local n12 = 4011511
local n13 = 4011512
local n14 = 4011513
local n15 = 4011516
local n16 = 4011514
local n17 = 4011515
local n18 = 4011510
tbl[1] = 4011518
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

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120320"}, {"120321"}, {"120319"}},
        QUEST_EXEC_UNLOCK_AVATAR_TEAM_V2 = {{}}
    }
}

rewind_data = {
    ["4011501"] = {},
    ["4011502"] = {},
    ["4011504"] = {},
    ["4011505"] = {},
    ["4011506"] = {},
    ["4011508"] = {},
    ["4011509"] = {},
    ["4011510"] = {},
    ["4011512"] = {},
    ["4011513"] = {},
    ["4011514"] = {},
    ["4011515"] = {},
    ["4011516"] = {},
    ["4011517"] = {},
    ["4011518"] = {},
    ["4011520"] = {}
}

quest_data = {
    ["4011501"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100108:491.198,87.751,516.530,0.000,55.876,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011501_N13247",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100109:490.833,87.742,517.532,0.000,90.821,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011502"] = {
        npcs = {
            {
                id = 13251,
                alias = "Npc13251",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011502_N13251",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011503"] = {
        npcs = {
            {
                id = 13251,
                alias = "Npc13251",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011502_N13251",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011504"] = {
        transmit_points = {{point_id = 1, scene_id = 20183, pos = "[20183_5:429.464,0.023,567.443,0.000,174.531,0.000]"}}
    },
    ["4011505"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011505_N1029",
                scene_id = 20183,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011506"] = {
        npcs = {
            {
                id = 13253,
                alias = "Npc13253",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011507_N13253",
                scene_id = 20183,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011507"] = {
        npcs = {
            {
                id = 13253,
                alias = "Npc13253",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011507_N13253",
                scene_id = 20183,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011508"] = {},
    ["4011509"] = {},
    ["4011510"] = {},
    ["4011511"] = {
        npcs = {
            {
                id = 13251,
                alias = "Npc13251",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011511_N13251",
                scene_id = 20183,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011512"] = {},
    ["4011513"] = {transmit_points = {{point_id = 1, scene_id = 10, pos = "Q4011514_N1029"}}},
    ["4011514"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011514_N1029",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011515"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100035:376.967,110.384,605.722,359.976,236.655,1.619]",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011516"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100036:407.982,111.953,552.502,0.000,178.451,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011517"] = {
        npcs = {
            {
                id = 13251,
                alias = "Npc13251",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100143:834.549,238.714,294.192,0.000,119.545,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011518"] = {},
    ["4011519"] = {},
    ["4011520"] = {}
}
