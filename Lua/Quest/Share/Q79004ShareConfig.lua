main_id = 79004
local tbl = {}
local n = 7900402
local v = 7900412
local n2 = 7900413
local n3 = 7900414
local n4 = 7900415
local n5 = 7900416
local n6 = 7900405
local n7 = 7900406
local n8 = 7900407
local n9 = 7900408
local n10 = 7900409
local n11 = 7900411
local n12 = 7900410
local n13 = 7900417
local n14 = 7900419
local n15 = 7900422
local n16 = 7900403
local n17 = 7900404
local n18 = 7900420
local n19 = 7900421
local n20 = 7900418
tbl[1] = 7900401
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
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "100841"
tbl3[2] = str
local tbl4 = {}
local str2 = "1"
tbl4[1] = "100842"
tbl4[2] = str2
local tbl5 = {}
local str3 = "1"
tbl5[1] = "100843"
tbl5[2] = str3
local tbl6 = {}
local str4 = "1"
tbl6[1] = "100844"
tbl6[2] = str4
local tbl7 = {}
local str5 = "1"
tbl7[1] = "100851"
tbl7[2] = str5
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl3
qUEST_EXEC_DEL_PACK_ITEM[2] = tbl4
qUEST_EXEC_DEL_PACK_ITEM[3] = tbl5
qUEST_EXEC_DEL_PACK_ITEM[4] = tbl6
qUEST_EXEC_DEL_PACK_ITEM[5] = tbl7
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7900402"] = {},
    ["7900403"] = {},
    ["7900404"] = {},
    ["7900405"] = {},
    ["7900406"] = {},
    ["7900407"] = {},
    ["7900408"] = {},
    ["7900409"] = {},
    ["7900422"] = {}
}

quest_data = {
    ["7900401"] = {},
    ["7900402"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900405paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900403"] = {
        npcs = {
            {
                id = 164201,
                alias = "Npc164201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "q7900404said",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900408paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7900404"] = {
        npcs = {
            {
                id = 164201,
                alias = "Npc164201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "q7900404said",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            }
        }
    },
    ["7900405"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900405paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900406"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900406paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900407"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900407paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900408"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900408paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900409"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900408paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900410"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900408paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900411"] = {},
    ["7900412"] = {},
    ["7900413"] = {},
    ["7900414"] = {},
    ["7900415"] = {},
    ["7900416"] = {},
    ["7900417"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900408paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900418"] = {},
    ["7900419"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "q7900408paimon",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7900420"] = {},
    ["7900421"] = {},
    ["7900422"] = {}
}
