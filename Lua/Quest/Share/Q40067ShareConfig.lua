main_id = 40067
local tbl = {}
local n = 4006702
local v = 4006703
local n2 = 4006704
local n3 = 4006705
local n4 = 4006706
local n5 = 4006707
local n6 = 4006708
local n7 = 4006709
local n8 = 4006717
local n9 = 4006710
local n10 = 4006711
local n11 = 4006715
local n12 = 4006716
local n13 = 4006712
local n14 = 4006713
local n15 = 4006714
tbl[1] = 4006701
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "199004131"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "199004023"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101841,101843"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4006701"] = {},
    ["4006702"] = {},
    ["4006703"] = {},
    ["4006704"] = {},
    ["4006705"] = {},
    ["4006706"] = {},
    ["4006707"] = {},
    ["4006708"] = {},
    ["4006709"] = {},
    ["4006710"] = {},
    ["4006711"] = {},
    ["4006712"] = {},
    ["4006713"] = {},
    ["4006714"] = {},
    ["4006715"] = {},
    ["4006716"] = {},
    ["4006717"] = {}
}

quest_data = {
    ["4006701"] = {},
    ["4006702"] = {transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1144, pos = "Q4006703_guide"}}},
    ["4006703"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006703_N1042",
                scene_id = 20140,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006703_N10011",
                scene_id = 20140,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006703_N10095",
                scene_id = 20140,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4006704"] = {},
    ["4006705"] = {},
    ["4006706"] = {},
    ["4006707"] = {},
    ["4006708"] = {},
    ["4006709"] = {},
    ["4006710"] = {
        npcs = {
            {
                id = 12646,
                alias = "Npc12646",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006710_N12646",
                scene_id = 20140,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4006711"] = {},
    ["4006712"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006712_N1032",
                scene_id = 20140,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006712_N1042",
                scene_id = 20140,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006712_N10011",
                scene_id = 20140,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006712_N10095",
                scene_id = 20140,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 9, pos = "T4006713_player"}}
    },
    ["4006713"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006713_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4006713_xinyan",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "T4006713_fischl",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "T4006713_mona",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4006714"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006714_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12625,
                alias = "Npc12625",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006714_N12625",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4006715"] = {
        npcs = {
            {
                id = 12646,
                alias = "Npc12646",
                script = "Actor/Npc/TempNPC",
                pos = "Q4006715_N12646",
                scene_id = 20140,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4006716"] = {},
    ["4006717"] = {}
}
