main_id = 40075
local tbl = {}
local n = 4007502
local v = 4007503
local n2 = 4007504
local n3 = 4007505
local n4 = 4007509
local n5 = 4007510
local n6 = 4007506
local n7 = 4007507
local n8 = 4007508
local n9 = 4007511
local n10 = 4007512
tbl[1] = 4007501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "199003028"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4007501"] = {},
    ["4007502"] = {},
    ["4007503"] = {},
    ["4007504"] = {},
    ["4007505"] = {},
    ["4007506"] = {},
    ["4007507"] = {},
    ["4007508"] = {},
    ["4007512"] = {}
}

quest_data = {
    ["4007501"] = {},
    ["4007502"] = {},
    ["4007503"] = {},
    ["4007504"] = {},
    ["4007505"] = {},
    ["4007506"] = {},
    ["4007507"] = {transmit_points = {{point_id = 1, scene_id = 9, pos = "Q4007507_transmit"}}},
    ["4007508"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007508_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "T4007508_kazuha",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "T4007508_xinyan",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "T4007508_fischl",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007509"] = {transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1140, pos = "Q4007509_N10000005"}}},
    ["4007510"] = {},
    ["4007511"] = {},
    ["4007512"] = {}
}
