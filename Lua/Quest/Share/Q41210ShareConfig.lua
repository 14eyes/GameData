main_id = 41210
local tbl = {}
local n = 4121002
local v = 4121003
local n2 = 4121004
local n3 = 4121010
local n4 = 4121011
local n5 = 4121009
local n6 = 4121005
local n7 = 4121015
local n8 = 4121006
local n9 = 4121007
local n10 = 4121008
local n11 = 4121012
local n12 = 4121013
local n13 = 4121014
tbl[1] = 4121001
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

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {
            {"133008282"},
            {"133008299"},
            {"133002409"},
            {"133002410"},
            {"133008281"},
            {"133008537"},
            {"133008538"}
        }
    }
}

fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {
            {"133008282"},
            {"133008299"},
            {"133002409"},
            {"133002410"},
            {"133008281"},
            {"133008303"},
            {"133008537"},
            {"133008538"}
        }
    }
}

rewind_data = {
    ["4121001"] = {},
    ["4121002"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q41210_shatang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121003"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q41210_shatang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121004"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41210_abeiduo1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121005"] = {},
    ["4121007"] = {},
    ["4121015"] = {}
}

quest_data = {
    ["4121001"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q41210_shatang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41210_Talk1"}}
    },
    ["4121002"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41210_Talk1"}}},
    ["4121003"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41210_abeiduo1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121004"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41210_Talk2"}}},
    ["4121005"] = {},
    ["4121006"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41210_Talk3"}},
        npcs = {
            {
                id = 10354,
                alias = "Npc10354",
                script = "Actor/Npc/TempNPC",
                pos = "Q41210_daobaotuan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121007"] = {},
    ["4121008"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41210_abeiduo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41210_Talk4"}}
    },
    ["4121009"] = {},
    ["4121010"] = {},
    ["4121011"] = {},
    ["4121012"] = {},
    ["4121013"] = {},
    ["4121014"] = {},
    ["4121015"] = {}
}
