main_id = 3001
local tbl = {}
local n = 300102
local v = 300108
local n2 = 300109
local n3 = 300103
local n4 = 300104
local n5 = 300107
local n6 = 300105
local n7 = 300106
local n8 = 300110
local n9 = 300111
tbl[1] = 300101
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
    ["300101"] = {},
    ["300102"] = {},
    ["300103"] = {},
    ["300104"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300103_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["300105"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300103_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["300106"] = {},
    ["300107"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300103_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["300108"] = {},
    ["300109"] = {},
    ["300110"] = {},
    ["300111"] = {}
}

quest_data = {
    ["300101"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4301,
                alias = "Npc4301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q300101_N4301",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12576,
                alias = "Npc12576",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N12576",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12586,
                alias = "Npc12586",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N12586",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["300102"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300103"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300103_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300104"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["300105"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q300104_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12557,
                alias = "Npc12557",
                script = "Actor/Npc/TempNPC",
                pos = "Q300105_N12557",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["300106"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300106_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300107"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["300108"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300109"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300110"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300106_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4302,
                alias = "Npc4302",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q300110_N4302",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["300111"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300101_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300106_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
