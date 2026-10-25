main_id = 25022
local tbl = {}
local n = 2502202
local v = 2502203
local n2 = 2502204
local n3 = 2502205
tbl[1] = 2502201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2502001"}}}}

rewind_data = {
    ["2502201"] = {},
    ["2502202"] = {
        npcs = {
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400155:-1387.545,153.744,7609.827,0.000,180.412,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502203"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502201_N14267",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400155:-1387.545,153.744,7609.827,0.000,180.412,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502204"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502201_N14267",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400155:-1387.545,153.744,7609.827,0.000,180.412,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502205"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502201_N14267",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400155:-1387.545,153.744,7609.827,0.000,180.412,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2502201"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502201_N14267",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400155:-1387.545,153.744,7609.827,0.000,180.412,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502202"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400182:-1385.991,153.764,7608.386,0.000,272.210,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502203"] = {},
    ["2502204"] = {},
    ["2502205"] = {}
}
