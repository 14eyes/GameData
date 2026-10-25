main_id = 41114
local tbl = {}
local n = 4111407
local v = 4111408
local n2 = 4111403
local n3 = 4111414
local n4 = 4111404
local n5 = 4111405
local n6 = 4111409
local n7 = 4111410
local n8 = 4111411
local n9 = 4111412
local n10 = 4111415
local n11 = 4111413
local n12 = 4111416
local n13 = 4111402
local n14 = 4111406
tbl[1] = 4111401
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "100245"
tbl3[2] = str
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl3
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "201004906,1"
tbl4[1] = "1004"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4111401"] = {},
    ["4111403"] = {},
    ["4111404"] = {},
    ["4111405"] = {},
    ["4111406"] = {},
    ["4111407"] = {},
    ["4111408"] = {},
    ["4111409"] = {},
    ["4111410"] = {},
    ["4111411"] = {},
    ["4111412"] = {},
    ["4111413"] = {},
    ["4111414"] = {},
    ["4111415"] = {},
    ["4111416"] = {}
}

quest_data = {
    ["4111401"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111401Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Ozzy",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111213Fischl",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4111402"] = {},
    ["4111403"] = {
        gadgets = {
            {
                id = 70710217,
                alias = "Q4111403Book",
                pos = "Q4111408Target",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            },
            {
                id = 70300118,
                alias = "Q4111403Target",
                pos = "Q4111408Target",
                scene_id = 1004,
                room_id = 100401,
                data_index = 2
            }
        }
    },
    ["4111404"] = {
        gadgets = {
            {
                id = 70300118,
                alias = "Q4111404Target",
                pos = "Q4111414Target",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            }
        }
    },
    ["4111405"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4111414Paimon",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4111406"] = {},
    ["4111407"] = {},
    ["4111408"] = {},
    ["4111409"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111409Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111410"] = {
        npcs = {
            {
                id = 10013,
                alias = "Npc10013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111411Scaramouche",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111411"] = {},
    ["4111412"] = {},
    ["4111413"] = {
        gadgets = {
            {
                id = 70300118,
                alias = "Q4111413Target",
                pos = "Q4111413Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111414"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4111408Paimon",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            }
        }
    },
    ["4111415"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111415Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4111416"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q4111416Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
