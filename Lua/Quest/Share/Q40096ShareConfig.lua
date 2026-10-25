main_id = 40096
local tbl = {}
local n = 4009601
local v = 4009606
local n2 = 4009607
local n3 = 4009611
local n4 = 4009608
local n5 = 4009609
local n6 = 4009610
local n7 = 4009602
local n8 = 4009603
local n9 = 4009604
tbl[1] = 4009605
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "201035002,1"
tbl3[1] = "1035"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4009601"] = {},
    ["4009602"] = {},
    ["4009603"] = {},
    ["4009604"] = {},
    ["4009605"] = {},
    ["4009607"] = {},
    ["4009609"] = {},
    ["4009610"] = {},
    ["4009611"] = {}
}

quest_data = {
    ["4009601"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_N10000005",
                scene_id = 1035,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4009606_N10000005"}}
    },
    ["4009602"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_T4009601_N1021",
                scene_id = 1035,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_T4009601_N10204",
                scene_id = 1035,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_T4009601_N10232",
                scene_id = 1035,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4009601_T4009601_N1001",
                scene_id = 1035,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_T4009601_N1012",
                scene_id = 1035,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_T4009601_N1023",
                scene_id = 1035,
                room_id = 1,
                data_index = 6
            },
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_T4009601_N10045",
                scene_id = 1035,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4009601_T4009601_N1005",
                scene_id = 1035,
                room_id = 1,
                data_index = 8
            },
            {
                id = 13097,
                alias = "Npc13097",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009602_N10204_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["4009603"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009603_N1021_guide",
                scene_id = 1035,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4009602_N10204_guide"}}
    },
    ["4009604"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009602_N10204_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4009605"] = {},
    ["4009606"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009606_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1035, pos = "Q4009601_N10000005"}}
    },
    ["4009607"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_N10000005",
                scene_id = 1035,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4009608"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009606_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1035, pos = "Q4009601_N10000005"}}
    },
    ["4009609"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_N10000005",
                scene_id = 1035,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4009610"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_N10000005",
                scene_id = 1035,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4009611"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q4009601_N10000005",
                scene_id = 1035,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4009606_N10000005"}}
    }
}
