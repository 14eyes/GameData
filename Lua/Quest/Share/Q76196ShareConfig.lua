main_id = 76196
local tbl = {}
local n = 7619602
local v = 7619603
local n2 = 7619606
local n3 = 7619604
local n4 = 7619605
tbl[1] = 7619601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7619601"] = {},
    ["7619602"] = {},
    ["7619603"] = {},
    ["7619605"] = {
        npcs = {
            {
                id = 16574,
                alias = "Npc16574",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15866:1675.440,227.939,9494.484,0.000,265.661,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7619601"] = {},
    ["7619602"] = {
        npcs = {
            {
                id = 16562,
                alias = "Npc16562",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15865:1659.334,227.871,9491.209]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7619603"] = {
        npcs = {
            {
                id = 16574,
                alias = "Npc16574",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15866:1675.440,227.939,9494.484,0.000,265.661,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16663,
                alias = "Npc16663",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16737:1664.815,227.899,9493.155,0.000,241.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7619604"] = {
        npcs = {
            {
                id = 16574,
                alias = "Npc16574",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15866:1675.440,227.939,9494.484,0.000,265.661,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16663,
                alias = "Npc16663",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16737:1664.815,227.899,9493.155,0.000,241.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7619605"] = {
        npcs = {
            {
                id = 16574,
                alias = "Npc16574",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15866:1675.440,227.939,9494.484,0.000,265.661,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16663,
                alias = "Npc16663",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16737:1664.815,227.899,9493.155,0.000,241.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7619606"] = {}
}
