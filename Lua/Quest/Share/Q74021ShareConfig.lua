main_id = 74021
local tbl = {}
local n = 7402103
local v = 7402102
local n2 = 7402104
local n3 = 7402106
local n4 = 7402105
local n5 = 7402107
tbl[1] = 7402101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7402101"] = {},
    ["7402102"] = {},
    ["7402103"] = {},
    ["7402104"] = {},
    ["7402105"] = {},
    ["7402106"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel04_Salsa_Yiji",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7402101"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "QTravel04_Salsa_Player_Yiji"}}},
    ["7402102"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel04_Salsa_Yiji",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402103"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel04_Salsa_Yiji",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402104"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel04_Salsa_Yiji",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "QTravel04_Salsa_Player_Yiji"}}
    },
    ["7402105"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel04_Salsa_Yiji",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402106"] = {},
    ["7402107"] = {}
}
