main_id = 40085
local tbl = {}
local n = 4008517
local v = 4008503
local n2 = 4008518
local n3 = 4008519
local n4 = 4008502
local n5 = 4008515
local n6 = 4008520
local n7 = 4008504
local n8 = 4008516
local n9 = 4008505
local n10 = 4008508
local n11 = 4008514
local n12 = 4008521
local n13 = 4008509
local n14 = 4008511
local n15 = 4008510
local n16 = 4008506
local n17 = 4008512
local n18 = 4008513
local n19 = 4008507
tbl[1] = 4008501
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
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120156"}}}}

rewind_data = {
    ["4008501"] = {},
    ["4008502"] = {},
    ["4008503"] = {},
    ["4008504"] = {},
    ["4008505"] = {},
    ["4008506"] = {},
    ["4008507"] = {},
    ["4008508"] = {},
    ["4008509"] = {},
    ["4008510"] = {},
    ["4008511"] = {},
    ["4008512"] = {},
    ["4008513"] = {},
    ["4008514"] = {},
    ["4008515"] = {},
    ["4008516"] = {},
    ["4008517"] = {},
    ["4008518"] = {},
    ["4008519"] = {},
    ["4008520"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008502_N12855",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008521"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008508_N12856",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4008501"] = {},
    ["4008502"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008502_N12855",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008503"] = {},
    ["4008504"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008502_N12855",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008505"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008502_N12855",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008506"] = {transmit_points = {{point_id = 2, scene_id = 3, pos = "Q4008506"}}},
    ["4008507"] = {},
    ["4008508"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008508_N12856",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 47103, pos = "Q4008505"}}
    },
    ["4008509"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008508_N12856",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008510"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008508_N12856",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008511"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008514_N12856",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12928,
                alias = "Npc12928",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008514_N12928",
                scene_id = 47103,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12929,
                alias = "Npc12929",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008514_N12929",
                scene_id = 47103,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70290660,
                alias = "Gadget70290660",
                pos = "Q4008514_guide",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 5, scene_id = 47103, pos = "Q4008505"}}
    },
    ["4008512"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008512_N12856",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008513"] = {},
    ["4008514"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008514_N12856",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12928,
                alias = "Npc12928",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008514_N12928",
                scene_id = 47103,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12929,
                alias = "Npc12929",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008514_N12929",
                scene_id = 47103,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70290660,
                alias = "Gadget70290660",
                pos = "Q4008514_guide",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4008515"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008206_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70290660,
                alias = "Gadget70290660",
                pos = "Q4008405_guide",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 47103, pos = "Q4008206"}}
    },
    ["4008516"] = {
        npcs = {
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008206_N12858",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70290660,
                alias = "Gadget70290660",
                pos = "Q4008405_guide",
                scene_id = 47103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 4, scene_id = 47103, pos = "Q4008207_N1005"}}
    },
    ["4008517"] = {
        npcs = {
            {
                id = 12856,
                alias = "Npc12856",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008517_N12856",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12858,
                alias = "Npc12858",
                script = "Actor/Npc/TempNPC",
                pos = "N12858_T4008516",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12859,
                alias = "Npc12859",
                script = "Actor/Npc/TempNPC",
                pos = "N12859_T4008516",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12860,
                alias = "Npc12860",
                script = "Actor/Npc/TempNPC",
                pos = "N12860_T4008516",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12861,
                alias = "Npc12861",
                script = "Actor/Npc/TempNPC",
                pos = "N12861_T4008516",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["4008518"] = {},
    ["4008519"] = {},
    ["4008520"] = {},
    ["4008521"] = {}
}
