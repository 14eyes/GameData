main_id = 40072
local tbl = {}
local n = 4007220
local v = 4007203
local n2 = 4007204
local n3 = 4007205
local n4 = 4007206
local n5 = 4007207
local n6 = 4007208
local n7 = 4007215
local n8 = 4007216
local n9 = 4007209
local n10 = 4007210
local n11 = 4007214
local n12 = 4007218
local n13 = 4007219
local n14 = 4007211
local n15 = 4007201
local n16 = 4007217
local n17 = 4007212
local n18 = 4007213
tbl[1] = 4007202
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "199001190"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "199001037"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "199002081"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl6 = {}
local str4 = "199002047,1"
tbl6[1] = "9"
tbl6[2] = str4
local tbl7 = {}
local str5 = "199001089,1"
tbl7[1] = "9"
tbl7[2] = str5
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl6
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl7
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4007201"] = {},
    ["4007202"] = {},
    ["4007203"] = {},
    ["4007204"] = {},
    ["4007205"] = {},
    ["4007206"] = {},
    ["4007207"] = {},
    ["4007208"] = {},
    ["4007209"] = {},
    ["4007210"] = {},
    ["4007211"] = {},
    ["4007212"] = {},
    ["4007213"] = {},
    ["4007214"] = {},
    ["4007215"] = {},
    ["4007216"] = {},
    ["4007218"] = {}
}

quest_data = {
    ["4007201"] = {},
    ["4007202"] = {
        npcs = {
            {
                id = 12630,
                alias = "Npc12630",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007201_N12630",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12631,
                alias = "Npc12631",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007201_N12630",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007202_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007202_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007202_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4007203"] = {transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1142, pos = "T4007204_player"}}},
    ["4007204"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007204_N1032",
                scene_id = 20138,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007204_N1042",
                scene_id = 20138,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007204_N10095",
                scene_id = 20138,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4007205"] = {},
    ["4007206"] = {},
    ["4007207"] = {},
    ["4007208"] = {},
    ["4007209"] = {},
    ["4007210"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007210_N1032",
                scene_id = 20138,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007210_N1042",
                scene_id = 20138,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007210_N10095",
                scene_id = 20138,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12626,
                alias = "Npc12626",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007210_N12626",
                scene_id = 20138,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007211"] = {},
    ["4007212"] = {},
    ["4007213"] = {
        npcs = {
            {
                id = 12629,
                alias = "Npc12629",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007213_N12629",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007213_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007213_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007213_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 9, pos = "Q4007212_transmit"}}
    },
    ["4007214"] = {},
    ["4007215"] = {},
    ["4007216"] = {},
    ["4007217"] = {transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1148, pos = "Q4007212_guide"}}},
    ["4007218"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007218_N1032",
                scene_id = 20138,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007218_N1042",
                scene_id = 20138,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007218_N10095",
                scene_id = 20138,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12626,
                alias = "Npc12626",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007218_N12626",
                scene_id = 20138,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007219"] = {},
    ["4007220"] = {}
}
