main_id = 40073
local tbl = {}
local n = 4007321
local v = 4007303
local n2 = 4007322
local n3 = 4007304
local n4 = 4007305
local n5 = 4007306
local n6 = 4007307
local n7 = 4007308
local n8 = 4007309
local n9 = 4007310
local n10 = 4007319
local n11 = 4007312
local n12 = 4007313
local n13 = 4007320
local n14 = 4007314
local n15 = 4007311
local n16 = 4007301
local n17 = 4007315
local n18 = 4007316
local n19 = 4007317
local n20 = 4007318
tbl[1] = 4007302
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "199002005"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "199002049,1"
tbl4[1] = "9"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4007302"] = {},
    ["4007303"] = {},
    ["4007304"] = {},
    ["4007305"] = {},
    ["4007306"] = {},
    ["4007307"] = {},
    ["4007308"] = {},
    ["4007309"] = {},
    ["4007310"] = {},
    ["4007311"] = {},
    ["4007312"] = {},
    ["4007313"] = {},
    ["4007314"] = {},
    ["4007315"] = {},
    ["4007316"] = {},
    ["4007317"] = {
        npcs = {
            {
                id = 12663,
                alias = "Npc12663",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007315_N2601",
                scene_id = 20141,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "T4007317_oz",
                scene_id = 20141,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007318"] = {},
    ["4007319"] = {},
    ["4007322"] = {}
}

quest_data = {
    ["4007301"] = {transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1145, pos = "T4007315_player"}}},
    ["4007302"] = {
        npcs = {
            {
                id = 12630,
                alias = "Npc12630",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007301_N12630",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12631,
                alias = "Npc12631",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007301_N12631",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007302_N10011",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007302_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007302_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007302_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4007303"] = {transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1143, pos = "T4007304_player"}}},
    ["4007304"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007304_N10011",
                scene_id = 20139,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007304_N1032",
                scene_id = 20139,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007304_N1042",
                scene_id = 20139,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007304_N10095",
                scene_id = 20139,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007305"] = {},
    ["4007306"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007306_N10011",
                scene_id = 20139,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007306_N1032",
                scene_id = 20139,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007306_N1042",
                scene_id = 20139,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007306_N10095",
                scene_id = 20139,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007307"] = {},
    ["4007308"] = {},
    ["4007309"] = {},
    ["4007310"] = {},
    ["4007311"] = {},
    ["4007312"] = {},
    ["4007313"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007313_N10011",
                scene_id = 20139,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007313_N1032",
                scene_id = 20139,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007313_N1042",
                scene_id = 20139,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007313_N10095",
                scene_id = 20139,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12626,
                alias = "Npc12626",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007313_N12626",
                scene_id = 20139,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4007314"] = {},
    ["4007315"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007315_N10011",
                scene_id = 20141,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007315_N1032",
                scene_id = 20141,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007315_N1042",
                scene_id = 20141,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007315_N10095",
                scene_id = 20141,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12663,
                alias = "Npc12663",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007315_N2601",
                scene_id = 20141,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4007316"] = {
        npcs = {
            {
                id = 12663,
                alias = "Npc12663",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007315_N2601",
                scene_id = 20141,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "T4007317_oz",
                scene_id = 20141,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007317"] = {
        npcs = {
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007317_N10011",
                scene_id = 20141,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007317_N1032",
                scene_id = 20141,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007317_N1042",
                scene_id = 20141,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007317_N10095",
                scene_id = 20141,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2601,
                alias = "Npc2601",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007317_N10011",
                scene_id = 20141,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 9, pos = "Q4007318_transmit"}}
    },
    ["4007318"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007318_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007318_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007318_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12625,
                alias = "Npc12625",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007318_N12625",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2601,
                alias = "Npc2601",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007318_N10011",
                scene_id = 9,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007318_N10011",
                scene_id = 9,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4007319"] = {},
    ["4007320"] = {},
    ["4007321"] = {},
    ["4007322"] = {}
}
