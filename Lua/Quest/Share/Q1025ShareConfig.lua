main_id = 1025
local tbl = {}
local n = 102502
local v = 102503
local n2 = 102504
local n3 = 102505
local n4 = 102506
local n5 = 102507
local n6 = 102508
local n7 = 102509
local n8 = 102510
local n9 = 102511
local n10 = 102512
local n11 = 102513
local n12 = 102514
local n13 = 102515
local n14 = 102516
local n15 = 102517
local n16 = 102518
local n17 = 102519
local n18 = 102520
local n19 = 102521
tbl[1] = 102501
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
tbl[16] = n14
tbl[17] = n15
tbl[18] = n16
tbl[19] = n17
tbl[20] = n18
tbl[21] = n19
sub_ids = tbl
rewind_data = {}
quest_data = {}

quest_data["102501"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102501Paimon",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102501Born"}}
}

quest_data["102516"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102501Paimon",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 2025,
            alias = "Npc2025",
            script = "Actor/Npc/TempNPC",
            pos = "Q102501Chang",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102502"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102502Paimon",
            scene_id = 1033,
            room_id = 1,
            data_index = 0
        }
    },
    gadgets = {
        {
            id = 70710203,
            pos = "Q102502Gnosis",
            alias = "Gnosis",
            scene_id = 1033,
            room_id = 1,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 1033, pos = "Q102502Born"}}
}

quest_data["102503"] = {
    npcs = {
        {
            id = 205501,
            alias = "Npc205501",
            script = "Actor/Npc/TempNPC",
            pos = "Q102503DJ",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 203801,
            alias = "Npc203801",
            script = "Actor/Npc/TempNPC",
            pos = "Q102503WBZ",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102504"] = {
    npcs = {
        {
            id = 203401,
            alias = "Npc203401",
            script = "Actor/Npc/TempNPC",
            pos = "Q102504LG",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 203501,
            alias = "Npc203501",
            script = "Actor/Npc/TempNPC",
            pos = "Q102504LS",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102510"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q102510ZL",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102513"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q102510ZL",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Pll",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 208301,
            alias = "Npc208301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Yinger",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 205401,
            alias = "Npc205401",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Shitou",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 1016,
            alias = "Npc1016",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Keqing",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Ningguang",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 1015,
            alias = "Npc1015",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Ganyu",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102515"] = {
    npcs = {
        {
            id = 208401,
            alias = "Npc208401",
            script = "Actor/Npc/TempNPC",
            pos = "Q102515BDR",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["102505"] = {
    npcs = {
        {
            id = 207101,
            alias = "Npc207101",
            script = "Actor/Npc/TempNPC",
            pos = "Q102505QYJ",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102505Born"}}
}

quest_data["102506"] = {
    npcs = {
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Pll",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 208301,
            alias = "Npc208301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Yinger",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 205401,
            alias = "Npc205401",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Shitou",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 1016,
            alias = "Npc1016",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Keqing",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Ningguang",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 1015,
            alias = "Npc1015",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Ganyu",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102506Born"}}
}

quest_data["102517"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102517Born"}}}
