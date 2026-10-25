main_id = 12005
local tbl = {}
local n = 1200502
local v = 1200503
local n2 = 1200504
local n3 = 1200505
local n4 = 1200506
local n5 = 1200507
local n6 = 1200517
local n7 = 1200509
local n8 = 1200510
local n9 = 1200511
local n10 = 1200514
local n11 = 1200518
local n12 = 1200512
local n13 = 1200515
local n14 = 1200516
local n15 = 1200513
local n16 = 1200508
tbl[1] = 1200501
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1200501"] = {},
    ["1200503"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1200504"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1200506"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1200507"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1200509"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1200511"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1200512"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200513"] = {},
    ["1200514"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1200515"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200516"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200517"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1200501"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200502"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200503"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200504"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200505"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200506"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200507"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200508"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200509"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200510"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200511"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200512"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200513"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200514"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200515"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200516"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1200517"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200501AyakaPoster",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200504WanguoOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12035,
                alias = "Npc12035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504WanguoWorker",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200504AyakaWanguo",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12036,
                alias = "Npc12036",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200507RobberWanguoOwner1",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q12005AyakaCheckCart",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200515AyakaRest",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200511OwnerAfter",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q1200501PaimonCloth",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 12131,
                alias = "Npc12131",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss1",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 12132,
                alias = "Npc12132",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200507RobberBoss2",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    }
}
