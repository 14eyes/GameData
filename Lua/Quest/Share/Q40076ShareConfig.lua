main_id = 40076
local tbl = {}
local n = 4007616
local v = 4007602
local n2 = 4007603
local n3 = 4007604
local n4 = 4007605
local n5 = 4007606
local n6 = 4007607
local n7 = 4007609
local n8 = 4007610
local n9 = 4007614
local n10 = 4007617
local n11 = 4007611
local n12 = 4007615
local n13 = 4007619
local n14 = 4007612
local n15 = 4007613
local n16 = 4007608
local n17 = 4007618
tbl[1] = 4007601
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "199003029"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4007601"] = {},
    ["4007602"] = {},
    ["4007603"] = {},
    ["4007604"] = {},
    ["4007605"] = {},
    ["4007606"] = {},
    ["4007607"] = {},
    ["4007608"] = {},
    ["4007609"] = {},
    ["4007610"] = {},
    ["4007611"] = {},
    ["4007612"] = {},
    ["4007613"] = {},
    ["4007615"] = {},
    ["4007616"] = {},
    ["4007618"] = {}
}

quest_data = {
    ["4007601"] = {},
    ["4007602"] = {},
    ["4007603"] = {},
    ["4007604"] = {},
    ["4007605"] = {},
    ["4007606"] = {},
    ["4007607"] = {},
    ["4007608"] = {},
    ["4007609"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007609_N10095",
                scene_id = 20134,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "T4007609_kazuha",
                scene_id = 20134,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4007609_xinyan",
                scene_id = 20134,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "T4007609_fischl",
                scene_id = 20134,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007610"] = {},
    ["4007611"] = {},
    ["4007612"] = {transmit_points = {{point_id = 1, scene_id = 9, pos = "Q4007613_transmit"}}},
    ["4007613"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007613_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "T4007613_kzauha",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4007613_xinyan",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "T4007613_fischl",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007614"] = {transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1140, pos = "Q4007610_transmit"}}},
    ["4007615"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007615_N10095",
                scene_id = 20136,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "T4007615_kazuha",
                scene_id = 20136,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4007615_xinyan",
                scene_id = 20136,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "T4007615_fischl",
                scene_id = 20136,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007616"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007403_N10095",
                scene_id = 20134,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "T4007403_kazuha",
                scene_id = 20134,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4007403_xinyan",
                scene_id = 20134,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "T4007403_fischl",
                scene_id = 20134,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007617"] = {},
    ["4007618"] = {},
    ["4007619"] = {}
}
