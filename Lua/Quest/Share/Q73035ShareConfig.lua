main_id = 73035
local tbl = {}
local n = 7303512
local v = 7303502
local n2 = 7303509
local n3 = 7303504
local n4 = 7303513
local n5 = 7303505
local n6 = 7303506
local n7 = 7303514
local n8 = 7303507
local n9 = 7303515
local n10 = 7303511
local n11 = 7303508
local n12 = 7303510
local n13 = 7303503
tbl[1] = 7303501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7303501"] = {},
    ["7303502"] = {},
    ["7303503"] = {},
    ["7303504"] = {},
    ["7303505"] = {},
    ["7303506"] = {},
    ["7303507"] = {},
    ["7303508"] = {},
    ["7303509"] = {},
    ["7303510"] = {},
    ["7303511"] = {},
    ["7303512"] = {},
    ["7303514"] = {},
    ["7303515"] = {}
}

quest_data = {
    ["7303501"] = {
        npcs = {
            {
                id = 20646,
                alias = "Npc20646",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303501_N20646",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303502"] = {},
    ["7303503"] = {},
    ["7303504"] = {
        npcs = {
            {
                id = 20646,
                alias = "Npc20646",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303502_N20646",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 20148, pos = "Q7303509"}}
    },
    ["7303505"] = {
        npcs = {
            {
                id = 20646,
                alias = "Npc20646",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303505_N20646",
                scene_id = 20148,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7303505_N20646",
                scene_id = 20148,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7303506"] = {},
    ["7303507"] = {},
    ["7303508"] = {},
    ["7303509"] = {
        npcs = {
            {
                id = 20646,
                alias = "Npc20646",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303502_N20646",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20148, pos = "Q7303509"}}
    },
    ["7303510"] = {},
    ["7303511"] = {
        npcs = {
            {
                id = 20646,
                alias = "Npc20646",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303502_N20646",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303512"] = {},
    ["7303513"] = {},
    ["7303514"] = {},
    ["7303515"] = {
        npcs = {
            {
                id = 20646,
                alias = "Npc20646",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303505_N20646",
                scene_id = 20148,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "Q7303507"}}
    }
}
