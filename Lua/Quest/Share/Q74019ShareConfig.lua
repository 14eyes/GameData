main_id = 74019
local tbl = {}
local n = 7401903
local v = 7401902
local n2 = 7401904
local n3 = 7401906
local n4 = 7401905
local n5 = 7401907
tbl[1] = 7401901
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
    ["7401901"] = {},
    ["7401902"] = {},
    ["7401903"] = {},
    ["7401904"] = {},
    ["7401905"] = {},
    ["7401906"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel02_Salsa_Reqiqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7401901"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "QTravel02_Salsa_Player_Reqiqiu"}}},
    ["7401902"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel02_Salsa_Reqiqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_5518:2544.656,491.948,4237.250]"}}
    },
    ["7401903"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel02_Salsa_Reqiqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7401904"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel02_Salsa_Reqiqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "QTravel02_Salsa_Player_Reqiqiu"}}
    },
    ["7401905"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel02_Salsa_Reqiqiu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7401906"] = {},
    ["7401907"] = {}
}
