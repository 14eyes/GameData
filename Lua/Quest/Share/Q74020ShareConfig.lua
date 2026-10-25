main_id = 74020
local tbl = {}
local n = 7402003
local v = 7402002
local n2 = 7402004
local n3 = 7402006
local n4 = 7402005
local n5 = 7402007
tbl[1] = 7402001
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
    ["7402001"] = {},
    ["7402002"] = {},
    ["7402003"] = {},
    ["7402004"] = {},
    ["7402005"] = {},
    ["7402006"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel03_Salsa_Landong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7402001"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "QTravel03_Salsa_Player_Landong"}}},
    ["7402002"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel03_Salsa_Landong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_5520:2530.767,464.330,4787.352]"}}
    },
    ["7402003"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel03_Salsa_Landong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402004"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel03_Salsa_Landong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "QTravel03_Salsa_Player_Landong"}}
    },
    ["7402005"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel03_Salsa_Landong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402006"] = {},
    ["7402007"] = {}
}
