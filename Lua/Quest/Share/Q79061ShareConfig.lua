main_id = 79061
local tbl = {}
local n = 7906102
local v = 7906103
local n2 = 7906104
tbl[1] = 7906101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7906101"] = {},
    ["7906102"] = {
        npcs = {
            {
                id = 21611,
                alias = "Npc21611",
                script = "Actor/Npc/TempNPC",
                pos = "[100_343:1000.400,217.262,708.970,0.000,330.707,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7906103"] = {},
    ["7906104"] = {}
}

quest_data = {
    ["7906101"] = {
        npcs = {
            {
                id = 21611,
                alias = "Npc21611",
                script = "Actor/Npc/TempNPC",
                pos = "[100_343:1000.400,217.262,708.970,0.000,330.707,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21448,
                alias = "Npc21448",
                script = "Actor/Npc/TempNPC",
                pos = "[100_295:1000.813,217.254,708.919,0.000,333.971,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21450,
                alias = "Npc21450",
                script = "Actor/Npc/TempNPC",
                pos = "[100_140:999.392,216.721,708.712,0.000,355.622,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7906102"] = {},
    ["7906103"] = {
        npcs = {
            {
                id = 21651,
                alias = "Npc21651",
                script = "Actor/Npc/TempNPC",
                pos = "[100_352:999.565,217.251,708.243,0.000,342.542,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7906104"] = {
        npcs = {
            {
                id = 21448,
                alias = "Npc21448",
                script = "Actor/Npc/TempNPC",
                pos = "[100_344:999.028,216.763,709.553]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
