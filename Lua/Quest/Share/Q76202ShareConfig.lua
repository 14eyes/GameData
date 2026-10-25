main_id = 76202
local tbl = {}
local n = 7620202
local v = 7620203
local n2 = 7620211
local n3 = 7620204
local n4 = 7620205
local n5 = 7620206
local n6 = 7620207
local n7 = 7620208
local n8 = 7620210
local n9 = 7620209
tbl[1] = 7620201
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7620201"] = {},
    ["7620202"] = {},
    ["7620203"] = {},
    ["7620204"] = {},
    ["7620205"] = {},
    ["7620206"] = {},
    ["7620207"] = {},
    ["7620208"] = {},
    ["7620209"] = {},
    ["7620210"] = {},
    ["7620211"] = {}
}

quest_data = {
    ["7620201"] = {},
    ["7620202"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_1:23.167,0.373,-18.805,0.000,178.042,0.000]",
                scene_id = 1156,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7620203"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_2:28.153,0.279,-23.856,359.990,29.844,359.976]",
                scene_id = 1156,
                room_id = 1,
                data_index = 1
            },
            {
                id = 16577,
                alias = "Npc16577",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_3:31.061,1.750,-21.583,0.000,91.093,0.000]",
                scene_id = 1156,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1319, pos = "[20349_6:262.212,74.075,288.811,0.000,223.827,0.000]"}}
    },
    ["7620204"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20349_2:258.301,74.080,284.870,0.000,199.866,0.000]",
                scene_id = 20349,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1322,
                alias = "Npc1322_2",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_2:28.153,0.279,-23.856,359.990,29.844,359.976]",
                scene_id = 1156,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7620205"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_2",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_2:28.153,0.279,-23.856,359.990,29.844,359.976]",
                scene_id = 1156,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20349, pos = "[20349_8:-1470.716,55.454,61.241,0.000,263.345,0.000]"}}
    },
    ["7620206"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20349_9:-1469.660,55.454,62.011,0.000,252.867,0.000]",
                scene_id = 20349,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1322,
                alias = "Npc1322_2",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_2:28.153,0.279,-23.856,359.990,29.844,359.976]",
                scene_id = 1156,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20349, pos = "[20349_8:-1470.716,55.454,61.241,0.000,263.345,0.000]"}}
    },
    ["7620207"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_2",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_2:28.153,0.279,-23.856,359.990,29.844,359.976]",
                scene_id = 1156,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7620208"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_2",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_2:28.153,0.279,-23.856,359.990,29.844,359.976]",
                scene_id = 1156,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7620209"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_28:36.879,0.275,-23.156,0.000,307.737,0.000]",
                scene_id = 1156,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7620210"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_2",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_2:28.153,0.279,-23.856,359.990,29.844,359.976]",
                scene_id = 1156,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1156, pos = "[1156_29:34.884,0.275,-21.137,0.000,145.873,0.000]"}}
    },
    ["7620211"] = {
        npcs = {
            {
                id = 1322,
                alias = "Npc1322_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1156_2:28.153,0.279,-23.856,359.990,29.844,359.976]",
                scene_id = 1156,
                room_id = 1,
                data_index = 1
            }
        }
    }
}
