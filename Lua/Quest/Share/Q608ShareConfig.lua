main_id = 608
local tbl = {}
local n = 60801
local v = 60802
local n2 = 60803
local n3 = 60804
tbl[1] = 60805
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["60801"] = {}, ["60802"] = {}, ["60803"] = {}, ["60804"] = {}, ["60805"] = {}}

quest_data = {
    ["60801"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_29:2304.367,213.990,-914.319,0.000,304.583,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_30:2302.789,213.990,-916.828,0.000,322.167,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20260, pos = "[20260_30:2302.789,213.990,-916.828,0.000,322.167,0.000]"}}
    },
    ["60802"] = {},
    ["60803"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_29:2304.367,213.990,-914.319,0.000,304.583,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60804"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_105:2302.401,213.990,-915.060,0.000,230.873,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_106:2301.818,213.990,-916.116,0.000,3.131,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["60805"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_29:2304.367,213.990,-914.319,0.000,304.583,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_30:2302.789,213.990,-916.828,0.000,322.167,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
