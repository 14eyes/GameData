return {
    MainID = 12005,
    ActorAlias = "12005",
    SubIDs = {
        q1200501 = 1200501,
        q1200502 = 1200502,
        q1200503 = 1200503,
        q1200504 = 1200504,
        q1200505 = 1200505,
        q1200506 = 1200506,
        q1200507 = 1200507,
        q1200517 = 1200517,
        q1200509 = 1200509,
        q1200510 = 1200510,
        q1200511 = 1200511,
        q1200514 = 1200514,
        q1200518 = 1200518,
        q1200512 = 1200512,
        q1200515 = 1200515,
        q1200516 = 1200516,
        q1200513 = 1200513,
        q1200508 = 1200508
    },
    Npcs = {
        Npc3006Data = {
            id = 3006,
            alias = "Npc3006",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1200501Mio")
        },
        Npc1013DataPoster = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200501AyakaPoster")
        },
        Npc3084DataWanguo = {
            id = 3084,
            alias = "Npc3084",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1200504WanguoOwner")
        },
        Npc12035Data = {
            id = 12035,
            alias = "Npc12035",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200504WanguoWorker")
        },
        Npc1013DataWanguo = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200504AyakaWanguo")
        },
        Npc12036Data = {
            id = 12036,
            alias = "Npc12036",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200507RobberBoss")
        },
        Npc3084DataCart = {
            id = 3084,
            alias = "Npc3084",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1200507RobberWanguoOwner1")
        },
        Npc1013DataCheckCart = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q12005AyakaCheckCart")
        },
        Npc1013DataRest = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200515AyakaRest")
        },
        Npc3084DataCartCheck = {
            id = 3084,
            alias = "Npc3084",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1200511OwnerAfter")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q1200501PaimonCloth")
        },
        Npc12131Data = {
            id = 12131,
            alias = "Npc12131",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200507RobberBoss1")
        },
        Npc12132Data = {
            id = 12132,
            alias = "Npc12132",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200507RobberBoss2")
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 1200501, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q12005TriggerCloth_ = {
            alias = "Q12005TriggerCloth",
            script = "Actor/Gadget/Q12005TriggerCloth",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1200501PlayerCloth")
        },
        Q12005TriggerWanguoFake_ = {
            alias = "Q12005TriggerWanguoFake",
            script = "Actor/Gadget/Q12005TriggerWanguoFake",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1200504WanguoMark")
        },
        Q12005TriggerWanguoHide_ = {
            alias = "Q12005TriggerWanguoHide",
            script = "Actor/Gadget/Q12005TriggerWanguoHide",
            id = 70900002,
            point = {pos = {x = -2587.809, y = 214.2126, z = -3829.547}, rot = {x = 0, y = 0, z = 0}}
        },
        Q12005TriggerWanguoReal_ = {
            alias = "Q12005TriggerWanguoReal",
            script = "Actor/Gadget/Q12005TriggerWanguoReal",
            id = 70900002,
            point = {pos = {x = -2587.809, y = 214.2126, z = -3829.547}, rot = {x = 0, y = 0, z = 0}}
        },
        Q12005TriggerSeek1_ = {
            alias = "Q12005TriggerSeek1",
            script = "Actor/Gadget/Q12005TriggerSeek1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1200505CartSearch1")
        },
        Q12005TriggerSeek2_ = {
            alias = "Q12005TriggerSeek2",
            script = "Actor/Gadget/Q12005TriggerSeek2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1200507RobberPaimon1")
        },
        Q12005TriggerRest_ = {
            alias = "Q12005TriggerRest",
            script = "Actor/Gadget/Q12005TriggerRest",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1200515AyakaRest")
        },
        Q12005TriggerBattleOut_ = {
            alias = "Q12005TriggerBattleOut",
            script = "Actor/Gadget/Q12005TriggerBattleOut",
            id = 70900002,
            point = {pos = {x = -2664.679, y = 210.2046, z = -4198.621}, rot = {x = 0, y = 0, z = 0}}
        },
        Q12005TriggerClothFinAdd_ = {
            alias = "Q12005TriggerClothFinAdd",
            script = "Actor/Gadget/Q12005TriggerClothFinAdd",
            id = 70900002,
            point = {pos = {x = -3134.889, y = 253.3802, z = -4473.324}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}
