main_id = 40205
local tbl = {}
local n = 4020506
local v = 4020507
local n2 = 4020501
local n3 = 4020508
local n4 = 4020502
local n5 = 4020509
local n6 = 4020503
local n7 = 4020504
tbl[1] = 4020505
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
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133607261,133606173,133606136,133606251"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"151"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4020501"] = {
        npcs = {
            {
                id = 15467,
                alias = "Npc15467",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13309:1423.775,204.131,9336.764,0.000,103.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020502"] = {},
    ["4020503"] = {},
    ["4020504"] = {},
    ["4020505"] = {},
    ["4020506"] = {},
    ["4020507"] = {},
    ["4020508"] = {},
    ["4020509"] = {}
}

quest_data = {
    ["4020501"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11975:1805.005,240.155,10370.710,0.000,340.256,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7103,
                alias = "Npc7103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13767:1804.357,240.204,10371.960,0.000,158.026,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4020502"] = {
        npcs = {
            {
                id = 7103,
                alias = "Npc7103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13767:1804.357,240.204,10371.960,0.000,158.026,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15538,
                alias = "Npc15538",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13310:1831.734,219.986,10442.670,0.000,260.287,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15540,
                alias = "Npc15540",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13768:1830.762,219.974,10442.320,0.000,71.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_11976:1806.656,223.310,10413.250,0.000,259.660,0.000]"}}
    },
    ["4020503"] = {
        npcs = {
            {
                id = 7103,
                alias = "Npc7103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13767:1804.357,240.204,10371.960,0.000,158.026,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11976:1806.656,223.310,10413.250,0.000,259.660,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4020504"] = {
        npcs = {
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11974:1804.140,240.183,10366.990]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4020505"] = {},
    ["4020506"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11975:1805.005,240.155,10370.710,0.000,340.256,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15467,
                alias = "Npc15467",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13309:1423.775,204.131,9336.764,0.000,103.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7103,
                alias = "Npc7103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13767:1804.357,240.204,10371.960,0.000,158.026,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11967:1447.961,204.105,9367.152,0.000,209.003,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4020507"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11975:1805.005,240.155,10370.710,0.000,340.256,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15467,
                alias = "Npc15467",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13309:1423.775,204.131,9336.764,0.000,103.564,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7103,
                alias = "Npc7103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13767:1804.357,240.204,10371.960,0.000,158.026,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4020508"] = {
        npcs = {
            {
                id = 7103,
                alias = "Npc7103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13767:1804.357,240.204,10371.960,0.000,158.026,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15538,
                alias = "Npc15538",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13310:1831.734,219.986,10442.670,0.000,260.287,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15540,
                alias = "Npc15540",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13768:1830.762,219.974,10442.320,0.000,71.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4020509"] = {
        npcs = {
            {
                id = 7103,
                alias = "Npc7103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13767:1804.357,240.204,10371.960,0.000,158.026,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11976:1806.656,223.310,10413.250,0.000,259.660,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13707:1762.559,223.778,10434.640,0.000,180.000,0.000]"}}
    }
}
