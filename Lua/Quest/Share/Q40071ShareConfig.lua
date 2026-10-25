main_id = 40071
local tbl = {}
local n = 4007102
local v = 4007117
local n2 = 4007103
local n3 = 4007104
local n4 = 4007105
local n5 = 4007108
local n6 = 4007109
local n7 = 4007110
local n8 = 4007111
local n9 = 4007112
local n10 = 4007119
local n11 = 4007116
local n12 = 4007113
local n13 = 4007118
local n14 = 4007106
local n15 = 4007114
local n16 = 4007107
local n17 = 4007115
tbl[1] = 4007101
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
tbl3[1] = "199001037"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "199002080"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4007101"] = {},
    ["4007102"] = {},
    ["4007103"] = {},
    ["4007104"] = {},
    ["4007105"] = {},
    ["4007107"] = {},
    ["4007108"] = {},
    ["4007109"] = {},
    ["4007110"] = {},
    ["4007111"] = {},
    ["4007112"] = {},
    ["4007113"] = {},
    ["4007114"] = {},
    ["4007115"] = {},
    ["4007116"] = {},
    ["4007118"] = {}
}

quest_data = {
    ["4007101"] = {},
    ["4007102"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007102_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007102_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007102_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1141, pos = "T4007103_player"}}
    },
    ["4007103"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007103_N1032",
                scene_id = 20137,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007103_N1042",
                scene_id = 20137,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007103_N10095",
                scene_id = 20137,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4007104"] = {},
    ["4007105"] = {},
    ["4007106"] = {transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1147, pos = "T4007114_player"}}},
    ["4007107"] = {},
    ["4007108"] = {},
    ["4007109"] = {},
    ["4007110"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007110_N1032",
                scene_id = 20137,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007110_N1042",
                scene_id = 20137,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007110_N10095",
                scene_id = 20137,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12626,
                alias = "Npc12626",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007110_N12626",
                scene_id = 20137,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007111"] = {},
    ["4007112"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007112_N1032",
                scene_id = 20137,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007112_N1042",
                scene_id = 20137,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007112_N10095",
                scene_id = 20137,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12626,
                alias = "Npc12626",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007112_N12626",
                scene_id = 20137,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007113"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007113_N1032",
                scene_id = 20137,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007113_N1042",
                scene_id = 20137,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007113_N10095",
                scene_id = 20137,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4007114"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007114_N1032",
                scene_id = 20143,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007114_N1042",
                scene_id = 20143,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007114_N10095",
                scene_id = 20143,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12628,
                alias = "Npc12628",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007114_N12628",
                scene_id = 20143,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4007115"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007115_N1032",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007115_N1042",
                scene_id = 9,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007115_N10095",
                scene_id = 9,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12629,
                alias = "Npc12629",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007115_N12629",
                scene_id = 9,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 9, pos = "Q4007107_transmit"}}
    },
    ["4007116"] = {},
    ["4007117"] = {},
    ["4007118"] = {},
    ["4007119"] = {}
}
