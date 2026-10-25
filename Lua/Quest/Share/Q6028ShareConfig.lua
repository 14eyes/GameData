main_id = 6028
local tbl = {}
local n = 602802
local v = 602803
local n2 = 602804
local n3 = 602805
tbl[1] = 602801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["602801"] = {},
    ["602802"] = {
        avatar = {
            offline_dungeon_id = 1276,
            scene_id = 20296,
            pos = "[20296_38:23.622,37.181,852.045,0.000,90.000,0.000]"
        }
    },
    ["602803"] = {},
    ["602804"] = {},
    ["602805"] = {}
}

quest_data = {
    ["602801"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1276, pos = "[20296_38:23.622,37.181,852.045,0.000,90.000,0.000]"}}
    },
    ["602802"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["602803"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[20296_26:110.980,27.455,851.694,0.000,78.962,0.000]",
                scene_id = 20296,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["602804"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_106:2.734,0.338,-34.713,0.000,107.832,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1205, pos = "[1205_115:-2.410,0.314,-34.170]"}}
    },
    ["602805"] = {
        npcs = {
            {
                id = 16149,
                alias = "Npc16149",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700225:1677.997,277.741,9397.990,0.000,338.583,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360700226:1678.981,278.066,9395.447,0.000,337.479,0.000]"}}
    }
}
