main_id = 2007
local tbl = {}
local n = 200710
local v = 200702
local n2 = 200703
local n3 = 200704
local n4 = 200706
local n5 = 200705
local n6 = 200709
local n7 = 200707
local n8 = 200711
local n9 = 200708
tbl[1] = 200701
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200701"] = {},
    ["200702"] = {},
    ["200703"] = {},
    ["200704"] = {},
    ["200705"] = {
        npcs = {
            {
                id = 12012,
                alias = "Npc12012",
                script = "Actor/Npc/TempNPC",
                pos = "Q200707mass1",
                scene_id = 20111,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200706"] = {},
    ["200707"] = {},
    ["200708"] = {},
    ["200709"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q200708xiaogong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200710"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2004paimon",
                scene_id = 1061,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["200711"] = {}
}

quest_data = {
    ["200701"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2004paimon",
                scene_id = 1061,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q2004shenli",
                scene_id = 1061,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1060, pos = "Q200709born"}}
    },
    ["200702"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200702paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q200702xiaogong",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12008,
                alias = "Npc12008",
                script = "Actor/Npc/TempNPC",
                pos = "Q200702mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12009,
                alias = "Npc12009",
                script = "Actor/Npc/TempNPC",
                pos = "Q200702mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12011,
                alias = "Npc12011",
                script = "Actor/Npc/TempNPC",
                pos = "Q200702mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q200708tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003shenli",
                scene_id = 1060,
                room_id = 1,
                data_index = 7
            }
        }
    },
    ["200703"] = {},
    ["200704"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200704paimon",
                scene_id = 20111,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q200704xiaogong",
                scene_id = 20111,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200705"] = {},
    ["200706"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200705paimon",
                scene_id = 20111,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q200705xiaogong",
                scene_id = 20111,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12009,
                alias = "Npc12009",
                script = "Actor/Npc/TempNPC",
                pos = "Q200705mass3",
                scene_id = 20111,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12012,
                alias = "Npc12012",
                script = "Actor/Npc/TempNPC",
                pos = "Q200707mass1",
                scene_id = 20111,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12010,
                alias = "Npc12010",
                script = "Actor/Npc/TempNPC",
                pos = "Q200705mass2",
                scene_id = 20111,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["200711"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2003paimon",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003shenli",
                scene_id = 1060,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["200708"] = {},
    ["200709"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q200708xiaogong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200710"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            }
        }
    }
}
