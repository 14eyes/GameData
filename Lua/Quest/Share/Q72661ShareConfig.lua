main_id = 72661
local tbl = {}
local n = 7266102
local v = 7266103
local n2 = 7266104
local n3 = 7266105
local n4 = 7266106
local n5 = 7266107
local n6 = 7266113
local n7 = 7266108
local n8 = 7266109
local n9 = 7266110
local n10 = 7266111
local n11 = 7266112
tbl[1] = 7266101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133002036"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002060"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133002037"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133002038"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101547"}, {"100984"}}
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7266101"] = {}, ["7266102"] = {}, ["7266106"] = {}, ["7266108"] = {}, ["7266109"] = {}}

quest_data = {
    ["7266101"] = {
        npcs = {
            {
                id = 1673,
                alias = "Npc1673",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_Herman",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266102"] = {},
    ["7266103"] = {},
    ["7266104"] = {},
    ["7266105"] = {},
    ["7266106"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q72661_Kuangchang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12164,
                alias = "SneakAI4",
                script = "Actor/Npc/FollowNPCFishing",
                pos = "Q72661_daobaotuan",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7266107"] = {
        npcs = {
            {
                id = 12164,
                alias = "SneakAI4",
                script = "Actor/Npc/FollowNPCFishing",
                pos = "Q72661_daobaotuan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266108"] = {},
    ["7266109"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266110"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q72661_Kuangchang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266111"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q72661_Kuangchang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266112"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q72661_Kuangchang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266113"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q72661_Kuangchang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
