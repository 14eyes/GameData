main_id = 40145
local tbl = {}
local n = 4014501
local v = 4014502
local n2 = 4014503
tbl[1] = 4014504
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["4014501"] = {},
    ["4014502"] = {},
    ["4014503"] = {
        npcs = {
            {
                id = 30519,
                alias = "Npc30519",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_300300737:2513.601,202.481,-1125.999,0.000,150.066,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30535,
                alias = "Npc30535",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300300764:2519.639,203.613,-1139.473,0.000,325.200,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30536,
                alias = "Npc30536",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300300763:2512.446,202.495,-1129.115,0.000,326.430,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30538,
                alias = "Npc30538",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300300765:2518.919,202.642,-1124.584,0.000,150.732,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4014504"] = {}
}

quest_data = {
    ["4014501"] = {},
    ["4014502"] = {
        npcs = {
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "[3_300300741:2502.672,203.886,-1138.269,0.000,61.643,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4014503"] = {},
    ["4014504"] = {}
}
