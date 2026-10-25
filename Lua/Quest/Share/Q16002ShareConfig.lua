main_id = 16002
local tbl = {}
local n = 1600202
local v = 1600203
local n2 = 1600204
local n3 = 1600215
local n4 = 1600205
local n5 = 1600206
local n6 = 1600207
local n7 = 1600208
local n8 = 1600209
local n9 = 1600210
local n10 = 1600216
local n11 = 1600217
local n12 = 1600211
local n13 = 1600212
local n14 = 1600213
local n15 = 1600214
tbl[1] = 1600201
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1600201"] = {},
    ["1600202"] = {},
    ["1600203"] = {},
    ["1600204"] = {},
    ["1600205"] = {},
    ["1600206"] = {},
    ["1600207"] = {},
    ["1600208"] = {},
    ["1600209"] = {},
    ["1600210"] = {},
    ["1600211"] = {},
    ["1600212"] = {},
    ["1600213"] = {},
    ["1600214"] = {},
    ["1600215"] = {},
    ["1600216"] = {},
    ["1600217"] = {}
}

quest_data = {
    ["1600201"] = {},
    ["1600202"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13962:2235.158,212.090,-908.900,0.000,192.774,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13960:2235.119,212.090,-911.347,0.000,342.522,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13963:2233.002,212.090,-910.357,0.000,88.530,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13965:2236.754,214.090,-906.954,0.000,350.333,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13964:2233.302,212.090,-911.483,0.000,70.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13961:2235.820,212.090,-909.877,0.000,267.071,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1320,
                alias = "Npc1320_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13965:2236.754,214.090,-906.954,0.000,350.333,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1600203"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13962:2235.158,212.090,-908.900,0.000,192.774,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10011,
                alias = "Npc10011",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13963:2233.002,212.090,-910.357,0.000,88.530,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13965:2236.754,214.090,-906.954,0.000,350.333,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10012,
                alias = "Npc10012",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13964:2233.302,212.090,-911.483,0.000,70.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13961:2235.820,212.090,-909.877,0.000,267.071,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13965:2236.754,214.090,-906.954,0.000,350.333,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1600204"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14076:2659.564,300.580,124.427,0.000,167.875,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600205"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_23:-1405.312,402.299,572.688,0.000,267.352,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1600206"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600207"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600208"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600209"] = {
        npcs = {
            {
                id = 15887,
                alias = "Npc15887",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_25:-1596.565,399.020,602.508,0.000,352.693,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15891,
                alias = "Npc15891",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_30:-1594.151,399.020,603.688,0.000,7.443,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15888,
                alias = "Npc15888",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_52:-1596.516,399.020,605.054,0.000,196.802,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1600210"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1600211"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20297_29:-1644.657,413.554,566.924,0.000,270.334,0.000]",
                scene_id = 20297,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_15015:2434.813,225.425,56.023,0.000,250.654,0.000]"}}
    },
    ["1600212"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_15015:2434.813,225.425,56.023,0.000,250.654,0.000]"}}
    },
    ["1600213"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14473:2240.113,214.090,-900.659,0.000,104.362,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14077:2240.003,214.090,-900.690,0.000,280.166,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14472:2233.453,214.120,-903.511,0.000,86.299,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14471:2241.615,213.990,-900.722,0.000,272.837,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14472:2233.453,214.120,-903.511,0.000,86.299,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14079:2231.964,230.083,-817.063,0.000,147.794,0.000]"}}
    },
    ["1600214"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14078:2231.999,230.083,-819.206,0.000,343.634,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13972:2231.089,230.083,-818.206,0.000,94.919,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14079:2231.964,230.083,-817.063,0.000,147.794,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1600215"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13966:2427.389,225.425,53.462,0.000,245.162,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {
            {point_id = 1, dungeon_id = 2205, pos = "[20297_23:-1405.312,402.299,572.688,0.000,267.352,0.000]"}
        }
    },
    ["1600216"] = {},
    ["1600217"] = {}
}
