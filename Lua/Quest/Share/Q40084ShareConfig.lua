main_id = 40084
local tbl = {}
local n = 4008403
local v = 4008417
local n2 = 4008419
local n3 = 4008404
local n4 = 4008405
local n5 = 4008414
local n6 = 4008402
local n7 = 4008406
local n8 = 4008407
local n9 = 4008418
local n10 = 4008420
local n11 = 4008408
local n12 = 4008409
local n13 = 4008413
local n14 = 4008412
local n15 = 4008410
local n16 = 4008416
local n17 = 4008411
local n18 = 4008415
tbl[1] = 4008401
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
tbl3[1] = "133302707"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120159"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4008401"] = {},
    ["4008402"] = {},
    ["4008403"] = {},
    ["4008404"] = {},
    ["4008405"] = {},
    ["4008406"] = {},
    ["4008407"] = {},
    ["4008408"] = {},
    ["4008409"] = {},
    ["4008410"] = {},
    ["4008411"] = {},
    ["4008412"] = {},
    ["4008413"] = {},
    ["4008414"] = {},
    ["4008415"] = {},
    ["4008416"] = {},
    ["4008417"] = {},
    ["4008418"] = {},
    ["4008419"] = {},
    ["4008420"] = {}
}

quest_data = {
    ["4008401"] = {},
    ["4008402"] = {},
    ["4008403"] = {},
    ["4008404"] = {
        npcs = {
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008404_N12861",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008405"] = {
        npcs = {
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008206_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70290660,
                alias = "Gadget70290660",
                pos = "Q4008405_guide",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 47103, pos = "Q4008206"}}
    },
    ["4008406"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008406_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008406_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4008407"] = {},
    ["4008408"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008408_N1063",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008409"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008206_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70290660,
                alias = "Gadget70290660",
                pos = "Q4008405_guide",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 47103, pos = "Q4008206"}}
    },
    ["4008410"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008410_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008411"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008411_N12855",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008412"] = {},
    ["4008413"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008408_N1063",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008414"] = {
        npcs = {
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008404_N12861",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008415"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q4008415_N1005",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008416"] = {},
    ["4008417"] = {},
    ["4008418"] = {},
    ["4008419"] = {},
    ["4008420"] = {}
}
