main_id = 10012
local tbl = {}
local n = 1001202
local v = 1001203
local n2 = 1001204
local n3 = 1001205
tbl[1] = 1001201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1001201"] = {}, ["1001202"] = {}, ["1001203"] = {}, ["1001204"] = {}, ["1001205"] = {}}

quest_data = {
    ["1001201"] = {},
    ["1001202"] = {
        npcs = {
            {
                id = 16498,
                alias = "Npc16498",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16665:3504.145,221.158,-234.634,0.000,69.003,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1001203"] = {
        npcs = {
            {
                id = 16498,
                alias = "Npc16498",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15493:3503.449,221.158,-234.315,0.000,274.526,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15498:3164.334,271.904,-10.350,0.000,33.153,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_16733:3367.226,227.218,-61.410,0.000,88.266,0.000]"}}
    },
    ["1001204"] = {
        npcs = {
            {
                id = 1326,
                alias = "Npc1326",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16732:3400.395,225.466,-71.055,0.000,149.480,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_16664:3498.255,221.158,-233.712,0.000,81.337,0.000]"}}
    },
    ["1001205"] = {
        npcs = {
            {
                id = 1310,
                alias = "Npc1310",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16608:3503.728,221.158,-234.507,0.000,255.213,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
