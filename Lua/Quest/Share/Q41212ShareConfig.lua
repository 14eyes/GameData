main_id = 41212
local tbl = {}
local n = 4121203
local v = 4121204
local n2 = 4121221
local n3 = 4121207
local n4 = 4121205
local n5 = 4121208
local n6 = 4121218
local n7 = 4121216
local n8 = 4121217
local n9 = 4121209
local n10 = 4121202
local n11 = 4121210
local n12 = 4121219
local n13 = 4121213
local n14 = 4121211
local n15 = 4121212
local n16 = 4121224
local n17 = 4121206
local n18 = 4121214
local n19 = 4121215
local n20 = 4121220
local n21 = 4121223
local n22 = 4121222
tbl[1] = 4121201
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
tbl[22] = n20
tbl[23] = n21
tbl[24] = n22
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {
            {"133008302"},
            {"133008301"},
            {"133105296"},
            {"133008288"},
            {"133002411"},
            {"133008298"},
            {"133008290"},
            {"133002416"},
            {"133105298"},
            {"133008304"},
            {"133008564"},
            {"133008601"},
            {"133008541"},
            {"133008496"}
        }
    }
}

fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {
            {"133008302"},
            {"133008301"},
            {"133105296"},
            {"133008288"},
            {"133002411"},
            {"133008298"},
            {"133008290"},
            {"133002416"},
            {"133105298"},
            {"133008304"},
            {"133008564"},
            {"133008601"},
            {"133008541"},
            {"133008323"},
            {"133008496"}
        }
    }
}

rewind_data = {
    ["4121201"] = {},
    ["4121203"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_sailiusi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4121204"] = {},
    ["4121206"] = {},
    ["4121207"] = {},
    ["4121210"] = {},
    ["4121213"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121215"] = {},
    ["4121218"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121219"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121221"] = {}
}

quest_data = {
    ["4121201"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_sailiusi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4121202"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk3"}}},
    ["4121203"] = {},
    ["4121204"] = {},
    ["4121205"] = {},
    ["4121206"] = {},
    ["4121207"] = {},
    ["4121208"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk2"}}
    },
    ["4121209"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk3"}}},
    ["4121210"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk3"}}
    },
    ["4121211"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk3"}}},
    ["4121212"] = {},
    ["4121213"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk2"}}},
    ["4121214"] = {},
    ["4121215"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121216"] = {},
    ["4121217"] = {},
    ["4121218"] = {},
    ["4121219"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk2"}}},
    ["4121220"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk2"}}},
    ["4121221"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41212_abeiduo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_Talk2"}}
    },
    ["4121222"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41212_END"}}},
    ["4121223"] = {},
    ["4121224"] = {}
}
