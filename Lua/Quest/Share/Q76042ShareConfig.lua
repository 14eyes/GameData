main_id = 76042
local tbl = {}
local n = 7604202
local v = 7604203
local n2 = 7604204
tbl[1] = 7604201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7604201"] = {}, ["7604202"] = {}, ["7604203"] = {}, ["7604204"] = {}}

quest_data = {
    ["7604201"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_53:1.137,1.183,-52.988,0.000,216.707,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_54:0.511,1.226,-54.188,0.000,10.613,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7604202"] = {
        npcs = {
            {
                id = 21924,
                alias = "Npc21924",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700162:2427.007,200.211,8921.929,0.000,212.566,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360500016:2188.331,200.000,8785.380,0.000,234.609,0.000]"}}
    },
    ["7604203"] = {
        npcs = {
            {
                id = 15849,
                alias = "Npc15849",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700163:2198.648,204.334,8659.660,0.000,249.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7604204"] = {
        npcs = {
            {
                id = 15849,
                alias = "Npc15849",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500009:2176.260,197.261,8672.646,0.000,233.495,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21928,
                alias = "Npc21928",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360500009:2176.260,197.261,8672.646,0.000,233.495,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
