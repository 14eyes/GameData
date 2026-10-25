main_id = 40149
local tbl = {}
local n = 4014902
local v = 4014906
local n2 = 4014903
local n3 = 4014904
local n4 = 4014905
tbl[1] = 4014901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133104837,133104835"
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
    ["4014901"] = {},
    ["4014902"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014903"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "[3_310400555:922.536,258.972,364.321,0.000,225.532,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4014904"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "[3_310400555:922.536,258.972,364.321,0.000,225.532,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4014905"] = {},
    ["4014906"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["4014901"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400533:888.421,255.563,329.875,0.000,106.702,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014902"] = {},
    ["4014903"] = {},
    ["4014904"] = {},
    ["4014905"] = {
        npcs = {
            {
                id = 2204,
                alias = "Npc2204",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400560:906.400,259.720,351.516,0.000,221.805,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "[3_310400553:926.831,258.972,365.296,0.000,34.930,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400563:926.842,258.973,355.114,0.000,296.886,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400561:904.230,259.720,350.955,0.000,118.979,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4014906"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "[3_310400555:922.536,258.972,364.321,0.000,225.532,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1060,
                alias = "Npc1060",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
