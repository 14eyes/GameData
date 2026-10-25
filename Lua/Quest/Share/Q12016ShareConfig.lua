main_id = 12016
local tbl = {}
local n = 1201602
local v = 1201603
local n2 = 1201604
local n3 = 1201605
local n4 = 1201615
local n5 = 1201606
local n6 = 1201607
local n7 = 1201608
local n8 = 1201609
local n9 = 1201610
local n10 = 1201611
local n11 = 1201612
local n12 = 1201613
local n13 = 1201614
tbl[1] = 1201601
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
    ["1201601"] = {},
    ["1201602"] = {
        npcs = {
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12015Shouwei2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1201606"] = {},
    ["1201607"] = {
        npcs = {
            {
                id = 3173,
                alias = "Npc3173",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Milk1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1201608"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3173,
                alias = "Npc3173",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Milk1",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Kuroda1",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1201609"] = {
        npcs = {
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Kuroda1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201610"] = {
        npcs = {
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Kuroda1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201611"] = {
        npcs = {
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Kuroda1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201614"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing5",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Kuroda1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12082,
                alias = "Npc12082",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12083,
                alias = "Npc12083",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12084,
                alias = "Npc12084",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}

quest_data = {
    ["1201601"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12015Shouwei2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201602"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016OguraMio1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3024,
                alias = "Npc3024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Rie1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3003,
                alias = "Npc3003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016MikoshiGenichiro1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3038,
                alias = "Npc3038",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016AikawaSusumu1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3005,
                alias = "Npc3005",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016FuruyaNoboru1",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3018,
                alias = "Npc3018",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Matsumoto1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1201603"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201604"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Watch1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3173,
                alias = "Npc3173",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Milk1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201605"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Watch1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201606"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3173,
                alias = "Npc3173",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Milk1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201607"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12016Kuroda1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201608"] = {},
    ["1201609"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201610"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201611"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing5",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12082,
                alias = "Npc12082",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12083,
                alias = "Npc12083",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12084,
                alias = "Npc12084",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1201612"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing5",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12082,
                alias = "Npc12082",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12083,
                alias = "Npc12083",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12084,
                alias = "Npc12084",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1201613"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016ShougunYing5",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12082,
                alias = "Npc12082",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12083,
                alias = "Npc12083",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12084,
                alias = "Npc12084",
                script = "Actor/Npc/TempNPC",
                pos = "Q12016Book1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1201614"] = {},
    ["1201615"] = {}
}
