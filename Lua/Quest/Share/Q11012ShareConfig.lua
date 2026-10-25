main_id = 11012
local tbl = {}
local n = 1101202
local v = 1101211
local n2 = 1101221
local n3 = 1101212
local n4 = 1101203
local n5 = 1101216
local n6 = 1101213
local n7 = 1101217
local n8 = 1101210
local n9 = 1101218
local n10 = 1101219
local n11 = 1101214
local n12 = 1101204
local n13 = 1101209
local n14 = 1101205
local n15 = 1101220
local n16 = 1101208
local n17 = 1101206
local n18 = 1101207
local n19 = 1101215
tbl[1] = 1101201
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1101201"] = {},
    ["1101202"] = {},
    ["1101203"] = {},
    ["1101204"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Tok",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101205"] = {},
    ["1101206"] = {},
    ["1101207"] = {
        npcs = {
            {
                id = 2067,
                alias = "Npc2067",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11012Andrei",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101208"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Route16",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101209"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Route16",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101210"] = {},
    ["1101211"] = {},
    ["1101212"] = {},
    ["1101213"] = {},
    ["1101214"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Tok",
                scene_id = 1055,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1101215"] = {},
    ["1101216"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Route14",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101217"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q1101206Tok",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101218"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q1101206Tok",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101219"] = {},
    ["1101220"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Route16",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi2",
                scene_id = 1055,
                room_id = 1,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1101201"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q1101201Tok",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1101202"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q1101201Tok",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1101203"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Tok",
                scene_id = 1055,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1101204"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101205"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Route16",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi2",
                scene_id = 1055,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1101206"] = {
        npcs = {
            {
                id = 2067,
                alias = "Npc2067",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11012Andrei",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q1101204Tok",
                scene_id = 1033,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1101207"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q1101204Tok",
                scene_id = 1033,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1101208"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1101209"] = {},
    ["1101210"] = {
        npcs = {
            {
                id = 10310,
                alias = "Npc10310",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Invisiable2",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101211"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q1101201Tok",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1101212"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101213"] = {
        npcs = {
            {
                id = 10310,
                alias = "Npc10310",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Invisiable",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101214"] = {},
    ["1101215"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11012Gongzi",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101216"] = {},
    ["1101217"] = {},
    ["1101218"] = {},
    ["1101219"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q1101219Tok",
                scene_id = 1055,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1101220"] = {},
    ["1101221"] = {}
}
