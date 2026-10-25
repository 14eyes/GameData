main_id = 75005
local tbl = {}
local n = 7500502
local v = 7500503
local n2 = 7500504
local n3 = 7500505
local n4 = 7500516
local n5 = 7500507
local n6 = 7500508
local n7 = 7500517
local n8 = 7500509
local n9 = 7500510
local n10 = 7500511
local n11 = 7500506
local n12 = 7500514
local n13 = 7500512
local n14 = 7500515
tbl[1] = 7500501
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
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
tbl[16] = n14
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7500501"] = {},
    ["7500502"] = {},
    ["7500503"] = {},
    ["7500504"] = {},
    ["7500507"] = {},
    ["7500508"] = {},
    ["7500509"] = {},
    ["7500510"] = {},
    ["7500511"] = {},
    ["7500514"] = {},
    ["7500515"] = {},
    ["7500516"] = {}
}

quest_data = {
    ["7500501"] = {},
    ["7500502"] = {},
    ["7500503"] = {
        npcs = {
            {
                id = 21465,
                alias = "Npc21465",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7952:-2283.233,196.694,7964.834,0.000,80.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500504"] = {},
    ["7500505"] = {
        npcs = {
            {
                id = 21465,
                alias = "Npc21465",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7953:-2235.689,208.739,7959.164,0.000,268.845,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500506"] = {},
    ["7500507"] = {},
    ["7500508"] = {},
    ["7500509"] = {},
    ["7500510"] = {
        npcs = {
            {
                id = 21465,
                alias = "Npc21465",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7954:-2547.182,52.589,7859.014,0.000,160.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500511"] = {
        npcs = {
            {
                id = 21465,
                alias = "Npc21465",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7956:-2550.643,52.485,7857.974,0.000,240.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21551,
                alias = "Npc21551",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8240:-2562.073,54.436,7853.827]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_7962:-2526.837,-662.191,8438.787,0.000,320.000,0.000]"}}
    },
    ["7500512"] = {},
    ["7500514"] = {
        npcs = {
            {
                id = 21552,
                alias = "Npc21552",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7955:-2528.400,-662.397,8439.319,0.000,138.984,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_7961:-2554.796,52.429,7855.841,0.000,75.000,0.000]"}}
    },
    ["7500515"] = {
        npcs = {
            {
                id = 21465,
                alias = "Npc21465",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7956:-2550.643,52.485,7857.974,0.000,240.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500516"] = {},
    ["7500517"] = {
        npcs = {
            {
                id = 21465,
                alias = "Npc21465",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9738:-2423.459,109.400,7895.937,0.000,135.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
