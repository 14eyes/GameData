main_id = 40250
local tbl = {}
local n = 4025008
local v = 4025002
local n2 = 4025010
local n3 = 4025003
local n4 = 4025004
local n5 = 4025005
local n6 = 4025009
local n7 = 4025006
local n8 = 4025007
tbl[1] = 4025001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
local str2 = ""
tbl3[1] = "133102341,133104853"
tbl3[2] = str
tbl3[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"227"}, {"228"}, {"229"}, {"230"}, {"231"}}
server.QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4025001"] = {},
    ["4025002"] = {},
    ["4025003"] = {},
    ["4025004"] = {},
    ["4025005"] = {},
    ["4025006"] = {},
    ["4025007"] = {},
    ["4025008"] = {},
    ["4025009"] = {},
    ["4025010"] = {}
}

quest_data = {
    ["4025001"] = {},
    ["4025002"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200735:1453.904,200.712,318.413,0.000,197.965,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200734:1452.708,200.731,316.660,0.000,33.931,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1041,
                alias = "Npc1041",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200736:1454.695,200.688,317.130,0.000,300.493,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1084,
                alias = "Npc1084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200733:1449.863,200.735,314.727,0.000,107.022,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200736:1454.695,200.688,317.130,0.000,300.493,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1338, pos = "[20370_1:1304.194,200.357,234.379,0.000,222.669,0.000]"}}
    },
    ["4025003"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310200738:1309.442,200.216,249.096,0.000,200.610,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1338, pos = "[20370_1:1304.194,200.357,234.379,0.000,222.669,0.000]"}}
    },
    ["4025004"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200727:1308.329,200.270,248.187,0.000,190.555,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1339, pos = "[20371_1:1297.031,200.145,225.913,0.000,231.147,0.000]"}}
    },
    ["4025005"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310200747:1324.206,200.193,270.526,0.000,53.067,0.000]"}}
    },
    ["4025006"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400588:1051.224,205.306,386.825]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310400602:908.229,271.480,350.943,0.000,176.144,0.000]"}}
    },
    ["4025007"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400602:908.229,271.480,350.943,0.000,176.144,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4025008"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500318:2429.378,343.525,2308.863,0.000,202.219,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17131,
                alias = "Npc17131",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500317:2430.156,343.525,2305.100,0.000,235.863,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4025009"] = {
        npcs = {
            {
                id = 1093,
                alias = "Npc1093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310200746:1327.121,200.217,270.602]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_310400591:1048.899,205.489,386.870,0.000,234.718,0.000]"}}
    },
    ["4025010"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1338, pos = "[20370_1:1304.194,200.357,234.379,0.000,222.669,0.000]"}}
    }
}
