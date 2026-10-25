main_id = 1024
local tbl = {}
local n = 102402
local v = 102403
local n2 = 102404
local n3 = 102405
local n4 = 102406
local n5 = 102407
local n6 = 102408
tbl[1] = 102401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
quest_data = {}

quest_data["102401"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102401Paimon",
            scene_id = 1051,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["102402"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102401Paimon",
            scene_id = 1051,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 1051, pos = "Q102404Start"}}
}

quest_data["102404"] = {
    npcs = {
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102404Ningguang",
            scene_id = 1051,
            room_id = 0,
            data_index = 0
        }
    }
}
