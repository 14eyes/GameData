main_id = 76115
local tbl = {}
local n = 7611502
local v = 7611503
local n2 = 7611504
tbl[1] = 7611501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7611501"] = {}, ["7611502"] = {}, ["7611504"] = {}}

quest_data = {
    ["7611501"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_144:14.551,1.291,8.687,0.000,93.096,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_143:15.384,1.291,9.066,0.000,196.735,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7611502"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500013:2538.221,337.786,8984.792,0.000,172.127,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500014:2537.213,337.621,8984.311,0.000,121.141,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7125,
                alias = "Npc7125",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500012:2562.855,346.076,8984.549,0.000,264.148,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_360500015:2546.742,339.490,8966.065,0.000,57.835,0.000]"}}
    },
    ["7611503"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500013:2538.221,337.786,8984.792,0.000,172.127,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500014:2537.213,337.621,8984.311,0.000,121.141,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7611504"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500013:2538.221,337.786,8984.792,0.000,172.127,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500014:2537.213,337.621,8984.311,0.000,121.141,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
