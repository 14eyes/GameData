main_id = 40051
local tbl = {}
local n = 4005102
local v = 4005103
local n2 = 4005104
local n3 = 4005105
local n4 = 4005117
local n5 = 4005106
local n6 = 4005107
local n7 = 4005108
local n8 = 4005120
local n9 = 4005109
local n10 = 4005110
local n11 = 4005111
local n12 = 4005118
local n13 = 4005112
local n14 = 4005113
local n15 = 4005119
local n16 = 4005114
local n17 = 4005115
local n18 = 4005116
tbl[1] = 4005101
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
tbl3[1] = "177005001"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "177005022"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101704"}, {"101706"}, {"101703"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl5 = {}
local str3 = "177005004,1"
tbl5[1] = "7"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4005101"] = {},
    ["4005102"] = {},
    ["4005103"] = {},
    ["4005104"] = {},
    ["4005105"] = {},
    ["4005109"] = {},
    ["4005110"] = {quest_var = {-1, -1, -1, -1, -1}},
    ["4005111"] = {},
    ["4005112"] = {},
    ["4005114"] = {},
    ["4005116"] = {},
    ["4005117"] = {},
    ["4005118"] = {},
    ["4005119"] = {},
    ["4005120"] = {}
}

quest_data = {
    ["4005101"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005101_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 7, pos = "Q4005102_N10000005"}}
    },
    ["4005102"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005102_N30000",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005103"] = {
        npcs = {
            {
                id = 20518,
                alias = "NPC20518",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005103_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005104"] = {
        npcs = {
            {
                id = 20518,
                alias = "NPC20518",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005103_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005105"] = {
        npcs = {
            {
                id = 20518,
                alias = "NPC20518",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005103_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005106"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4005106_N1005",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 7, pos = "Q4005106_transmit"}}
    },
    ["4005107"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4005107_N1005",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 7, pos = "Q4005107_transmit"}}
    },
    ["4005108"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4005108_N1005",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 7, pos = "Q4005108_transmit"}}
    },
    ["4005109"] = {},
    ["4005110"] = {},
    ["4005111"] = {},
    ["4005112"] = {},
    ["4005113"] = {},
    ["4005114"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005114_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005115"] = {
        npcs = {
            {
                id = 30000,
                alias = "Npc30000",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005114_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005116"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005116_N1037",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005117"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4005117_N1005",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4005118"] = {},
    ["4005119"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4005113_guide",
                scene_id = 7,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 7, pos = "Q4005119"}}
    },
    ["4005120"] = {}
}
