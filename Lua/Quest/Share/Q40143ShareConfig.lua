main_id = 40143
local tbl = {}
local n = 4014302
local v = 4014308
local n2 = 4014303
local n3 = 4014307
local n4 = 4014304
local n5 = 4014305
local n6 = 4014306
tbl[1] = 4014301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133104837,133104831"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "2250"
tbl4[2] = str2
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl4
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4014301"] = {},
    ["4014302"] = {},
    ["4014303"] = {},
    ["4014304"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400555:922.536,258.972,364.321,0.000,225.532,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4014305"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400555:922.536,258.972,364.321,0.000,225.532,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4014306"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014307"] = {}
}

quest_data = {
    ["4014301"] = {
        npcs = {
            {
                id = 20104,
                alias = "Npc20104",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400531:907.387,214.468,326.214,0.000,132.404,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4014302"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400561:904.230,259.720,350.955,0.000,118.979,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400560:906.400,259.720,351.516,0.000,221.805,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014303"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014304"] = {},
    ["4014305"] = {},
    ["4014306"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400535:924.154,258.972,367.775,0.000,46.044,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400564:908.003,259.741,344.889,0.000,58.337,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4014307"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400555:922.536,258.972,364.321,0.000,225.532,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4014308"] = {}
}
