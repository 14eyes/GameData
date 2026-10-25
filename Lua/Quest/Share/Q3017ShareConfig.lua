main_id = 3017
local tbl = {}
local n = 301702
local v = 301703
local n2 = 301704
local n3 = 301705
local n4 = 301706
local n5 = 301707
tbl[1] = 301701
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
    ["301701"] = {},
    ["301702"] = {},
    ["301703"] = {},
    ["301704"] = {},
    ["301705"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q301704_T301704_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["301706"] = {},
    ["301707"] = {}
}

quest_data = {
    ["301701"] = {
        npcs = {
            {
                id = 12697,
                alias = "Npc12697",
                script = "Actor/Npc/TempNPC",
                pos = "Q301701_T301701_N12697",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12698,
                alias = "Npc12698",
                script = "Actor/Npc/TempNPC",
                pos = "Q301701_T301701_N12698",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12699,
                alias = "Npc12699",
                script = "Actor/Npc/TempNPC",
                pos = "Q301701_T301701_N12699",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q301704_T301704_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["301702"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q301704_T301704_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q301701_T301701_N10000005"}}
    },
    ["301703"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q301704_T301704_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12694,
                alias = "Npc12694",
                script = "Actor/Npc/TempNPC",
                pos = "Q301701_T301701_N12697",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["301704"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q301704_T301704_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q301704_T301704_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["301705"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q301706_T301706_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12753,
                alias = "Npc12753",
                script = "Actor/Npc/TempNPC",
                pos = "Q301705_T301705_N4019",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["301706"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q301706_T301706_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q301706_T301706_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q301707_T301707_N10000005"}}
    },
    ["301707"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q301707_T301707_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
