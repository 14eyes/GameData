main_id = 75245
local tbl = {}
local n = 7524502
local v = 7524503
tbl[1] = 7524501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7524501"] = {}, ["7524502"] = {}, ["7524503"] = {}}

quest_data = {
    ["7524501"] = {
        npcs = {
            {
                id = 21966,
                alias = "Npc21966",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11821:855.239,200.225,13962.570,0.000,39.104,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                platformInfo = {
                    sceneId = 3,
                    groupId = 133520110,
                    configId = 110004,
                    offsetPos = {x = 0.0, y = 0.91, z = 2.479},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            },
            {
                id = 21965,
                alias = "Npc21965",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11820:853.854,200.054,13963.190,0.000,71.371,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2,
                platformInfo = {
                    sceneId = 3,
                    groupId = 133520110,
                    configId = 110004,
                    offsetPos = {x = 0.0, y = 0.9, z = 1.64},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        }
    },
    ["7524502"] = {
        npcs = {
            {
                id = 21966,
                alias = "Npc21966",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11821:855.239,200.225,13962.570,0.000,39.104,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21965,
                alias = "Npc21965",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11820:853.854,200.054,13963.190,0.000,71.371,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_11898:858.668,200.011,13964.350,0.000,224.515,0.000]"}}
    },
    ["7524503"] = {
        npcs = {
            {
                id = 21966,
                alias = "Npc21966",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11821:855.239,200.225,13962.570,0.000,39.104,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21965,
                alias = "Npc21965",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11820:853.854,200.054,13963.190,0.000,71.371,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2,
                platformInfo = {
                    sceneId = 3,
                    groupId = 0,
                    configId = 0,
                    offsetPos = {x = 0.0, y = 0.0, z = 0.0},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        }
    }
}
