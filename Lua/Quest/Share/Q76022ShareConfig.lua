main_id = 76022
local tbl = {}
local n = 7602204
local v = 7602202
local n2 = 7602203
tbl[1] = 7602201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7602201"] = {},
    ["7602202"] = {
        npcs = {
            {
                id = 21935,
                alias = "Npc21935",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12118:2260.900,200.700,9289.500,0.000,302.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7602203"] = {},
    ["7602204"] = {}
}

quest_data = {
    ["7602201"] = {
        npcs = {
            {
                id = 21935,
                alias = "Npc21935",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11454:2268.500,200.400,9326.700,0.000,4.700,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21938,
                alias = "Npc21938",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11465:2267.100,200.500,9329.900,0.000,198.870,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7602202"] = {},
    ["7602203"] = {
        npcs = {
            {
                id = 21935,
                alias = "Npc21935",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12118:2260.900,200.700,9289.500,0.000,302.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7602204"] = {
        npcs = {
            {
                id = 21935,
                alias = "Npc21935",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12118:2260.900,200.700,9289.500,0.000,302.580,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21938,
                alias = "Npc21938",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12128:2256.600,200.100,9292.600,0.000,121.850,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
