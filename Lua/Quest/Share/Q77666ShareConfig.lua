main_id = 77666
local tbl = {}
local n = 7766609
local v = 7766602
local n2 = 7766605
local n3 = 7766606
local n4 = 7766607
local n5 = 7766608
local n6 = 7766604
local n7 = 7766603
tbl[1] = 7766601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"232"}}}
local qUEST_EXEC_LOCK_POINT = {}
local tbl3 = {}
local str = "3"
tbl3[1] = "1162"
tbl3[2] = str
qUEST_EXEC_LOCK_POINT[1] = tbl3
server.QUEST_EXEC_LOCK_POINT = qUEST_EXEC_LOCK_POINT
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7766601"] = {},
    ["7766602"] = {},
    ["7766603"] = {},
    ["7766604"] = {},
    ["7766605"] = {},
    ["7766606"] = {},
    ["7766607"] = {},
    ["7766608"] = {
        npcs = {
            {
                id = 3516,
                alias = "Npc3516",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_12:8718.798,200.280,7994.860,0.000,152.550,0.000]",
                scene_id = 20382,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3517,
                alias = "Npc3517",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_13:8718.155,200.233,7993.866,0.000,80.300,0.000]",
                scene_id = 20382,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7766609"] = {}
}

quest_data = {
    ["7766601"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1350, pos = "[20382_2:8853.197,206.197,7943.362]"}}
    },
    ["7766602"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_2:8853.197,206.197,7943.362]",
                scene_id = 20382,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_13:1.177,-0.077,9.255]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1341,
                alias = "Npc1341_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_17:1.485,-0.077,-8.547]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7766603"] = {},
    ["7766604"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_17:1.485,-0.077,-8.547]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_213:3.593,3.022,-48.034,0.000,300.053,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_212:2.553,3.022,-47.347,0.000,103.309,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1339,
                alias = "Npc1339_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_211:0.044,3.521,-54.042]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7766605"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_2:8853.197,206.197,7943.362]",
                scene_id = 20382,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_13:1.177,-0.077,9.255]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1341,
                alias = "Npc1341_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_17:1.485,-0.077,-8.547]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7766606"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_6:8720.123,200.000,7992.260]",
                scene_id = 20382,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_13:1.177,-0.077,9.255]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1341,
                alias = "Npc1341_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_17:1.485,-0.077,-8.547]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7766607"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_6:8720.123,200.000,7992.260]",
                scene_id = 20382,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_13:1.177,-0.077,9.255]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1341,
                alias = "Npc1341_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_17:1.485,-0.077,-8.547]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            },
            {
                id = 3516,
                alias = "Npc3516",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_12:8718.798,200.280,7994.860,0.000,152.550,0.000]",
                scene_id = 20382,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3517,
                alias = "Npc3517",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_13:8718.155,200.233,7993.866,0.000,80.300,0.000]",
                scene_id = 20382,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7766608"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[20382_7:8688.612,200.000,7989.285]",
                scene_id = 20382,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_13:1.177,-0.077,9.255]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1341,
                alias = "Npc1341_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_17:1.485,-0.077,-8.547]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 2, scene_id = 1162, pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]"}}
    },
    ["7766609"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_16:-0.003,3.519,-53.909,0.000,18.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_13:1.177,-0.077,9.255]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            }
        }
    }
}
