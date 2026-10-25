main_id = 74022
local tbl = {}
local n = 7402203
local v = 7402202
local n2 = 7402204
local n3 = 7402206
local n4 = 7402205
local n5 = 7402207
tbl[1] = 7402201
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
    ["7402201"] = {},
    ["7402202"] = {},
    ["7402203"] = {},
    ["7402204"] = {},
    ["7402205"] = {},
    ["7402206"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel05_Salsa_Hupan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7402201"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "QTravel05_Salsa_Player_Hupan"}}},
    ["7402202"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel05_Salsa_Hupan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_5524:2169.241,443.058,4506.928]"}}
    },
    ["7402203"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel05_Salsa_Hupan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402204"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel05_Salsa_Hupan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "QTravel05_Salsa_Player_Hupan"}}
    },
    ["7402205"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel05_Salsa_Hupan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402206"] = {},
    ["7402207"] = {}
}
