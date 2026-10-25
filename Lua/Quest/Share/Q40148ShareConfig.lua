main_id = 40148
local tbl = {}
local n = 4014802
local v = 4014806
local n2 = 4014803
local n3 = 4014804
local n4 = 4014805
tbl[1] = 4014801
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
tbl3[1] = "133104837,133104834"
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
    ["4014801"] = {},
    ["4014802"] = {
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
    ["4014803"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400534:922.885,258.972,363.918,0.000,198.850,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4014804"] = {
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
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4014805"] = {
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
    ["4014806"] = {
        npcs = {
            {
                id = 2202,
                alias = "Npc2202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310400532:896.893,265.090,332.755,0.000,257.211,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4014801"] = {
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
    ["4014802"] = {},
    ["4014803"] = {
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
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400530:888.953,255.563,331.809,0.000,127.215,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014804"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400555:922.536,258.972,364.321,0.000,225.532,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400556:920.960,258.971,364.382,0.000,127.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4014805"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400558:923.680,258.974,368.117,0.000,175.653,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400559:924.529,258.974,367.367,0.000,261.416,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4014806"] = {
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
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400534:922.885,258.972,363.918,0.000,198.850,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400552:906.122,259.720,351.998,0.000,106.997,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310400557:922.547,258.971,362.699,0.000,320.585,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
