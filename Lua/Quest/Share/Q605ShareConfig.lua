main_id = 605
local tbl = {}
local n = 60501
local v = 60502
local n2 = 60503
local n3 = 60504
tbl[1] = 60505
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["60501"] = {},
    ["60502"] = {},
    ["60503"] = {},
    ["60504"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_8:2211.437,210.417,-968.821,0.000,197.326,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60505"] = {}
}

quest_data = {
    ["60501"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_11:2268.349,215.990,-889.768,0.000,300.963,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20260, pos = "[20260_19:2263.509,215.990,-887.731,0.000,241.400,0.000]"}}
    },
    ["60502"] = {},
    ["60503"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_8:2211.437,210.417,-968.821,0.000,197.326,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60504"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_11:2268.349,215.990,-889.768,0.000,300.963,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_7:2213.450,210.436,-969.797,0.000,213.920,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["60505"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_11:2268.349,215.990,-889.768,0.000,300.963,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_8:2211.437,210.417,-968.821,0.000,197.326,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia_1",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_7:2213.450,210.436,-969.797,0.000,213.920,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
