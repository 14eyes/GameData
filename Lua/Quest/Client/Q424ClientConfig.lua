return {
    MainID = 424,
    ActorAlias = "424",
    SubIDs = {
        q42401 = 42401,
        q42402 = 42402,
        q42403 = 42403,
        q42404 = 42404,
        q42405 = 42405,
        q42406 = 42406,
        q42407 = 42407
    },
    Score = 100,
    Rank = "A",
    SneakJudgeData = {
        alias = "SneakJudge",
        metaPath = "Actor/Npc/SneakJudge",
        configID = 1220,
        bornPos = sceneData:GetDummyPoint(1013, "Judge").pos,
        bornDir = sceneData:GetDummyPoint(1013, "Judge").rot
    },
    KeyID = 100115,
    KeyPos = sceneData:GetDummyPoint(1013, "Harp").pos,
    KeyDir = sceneData:GetDummyPoint(1013, "Harp").rot,
    RedKeyID = 100175,
    RedKeyPos = sceneData:GetDummyPoint(1013, "RedKey1").pos,
    BlackKeyID = 100176,
    BlackKeyPos = sceneData:GetDummyPoint(1013, "BlackKey1").pos,
    RedDoorNum = 3,
    RedDoor1Data = {
        alias = "RedDoor1",
        metaPath = "Actor/Npc/SneakRedDoor",
        dataIndex = 1,
        configID = 1235,
        bornPos = sceneData:GetDummyPoint(1013, "RedDoor1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "RedDoor1").rot
    },
    RedDoor2Data = {
        alias = "RedDoor2",
        metaPath = "Actor/Npc/SneakRedDoor",
        dataIndex = 2,
        configID = 1236,
        bornPos = sceneData:GetDummyPoint(1013, "RedDoor2").pos,
        bornDir = sceneData:GetDummyPoint(1013, "RedDoor2").rot
    },
    RedDoor3Data = {
        alias = "RedDoor3",
        metaPath = "Actor/Npc/SneakRedDoor",
        dataIndex = 3,
        configID = 1237,
        bornPos = sceneData:GetDummyPoint(1013, "RedDoor3").pos,
        bornDir = sceneData:GetDummyPoint(1013, "RedDoor3").rot
    },
    BlackDoorNum = 2,
    BlackDoor1Data = {
        alias = "BlackDoor1",
        metaPath = "Actor/Npc/SneakBlackDoor",
        dataIndex = 1,
        configID = 1238,
        bornPos = sceneData:GetDummyPoint(1013, "BlackDoor1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "BlackDoor1").rot
    },
    BlackDoor2Data = {
        alias = "BlackDoor2",
        metaPath = "Actor/Npc/SneakBlackDoor",
        dataIndex = 2,
        configID = 1239,
        bornPos = sceneData:GetDummyPoint(1013, "BlackDoor2").pos,
        bornDir = sceneData:GetDummyPoint(1013, "BlackDoor2").rot
    },
    TreasurePos = {
        sceneData:GetDummyPoint(1013, "Treasure1").pos,
        sceneData:GetDummyPoint(1013, "Treasure2").pos,
        sceneData:GetDummyPoint(1013, "Treasure3").pos,
        sceneData:GetDummyPoint(1013, "Treasure4").pos,
        sceneData:GetDummyPoint(1013, "Treasure5").pos,
        sceneData:GetDummyPoint(1013, "Treasure6").pos,
        sceneData:GetDummyPoint(1013, "Treasure7").pos,
        sceneData:GetDummyPoint(1013, "Treasure8").pos
    },
    TreasureDir = sceneData:GetDummyPoint(1013, "Treasure1").rot,
    SneakAlarmAI1Data = {
        alias = "SneakAI1",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1231,
        dataIndex = 11,
        bornPos = sceneData:GetDummyPoint(1013, "AlarmAI1Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AlarmAI1Pos1").rot,
        PatrolPosNum = 1,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AlarmAI1Pos2").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AlarmAI1Pos2").rot},
        PatrolNext = 1
    },
    SneakAINum = 10,
    SneakAI1Data = {
        alias = "SneakAI1",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1221,
        dataIndex = 1,
        bornPos = sceneData:GetDummyPoint(1013, "AI1Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI1Pos1").rot,
        PatrolPosNum = 1,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AI1Pos1").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AI1Pos1").rot},
        PatrolNext = 1
    },
    SneakAI2Data = {
        alias = "SneakAI2",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1222,
        dataIndex = 2,
        bornPos = sceneData:GetDummyPoint(1013, "AI2Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI2Pos1").rot,
        PatrolPosNum = 2,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AI2Pos1").pos, sceneData:GetDummyPoint(1013, "AI2Pos2").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AI2Pos1").rot, sceneData:GetDummyPoint(1013, "AI2Pos2").rot},
        PatrolNext = 1
    },
    SneakAI3Data = {
        alias = "SneakAI3",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1223,
        dataIndex = 3,
        bornPos = sceneData:GetDummyPoint(1013, "AI3Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI3Pos1").rot,
        PatrolPosNum = 2,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AI3Pos1").pos, sceneData:GetDummyPoint(1013, "AI3Pos2").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AI3Pos1").rot, sceneData:GetDummyPoint(1013, "AI3Pos2").rot},
        PatrolNext = 1
    },
    SneakAI4Data = {
        alias = "SneakAI4",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1224,
        dataIndex = 4,
        bornPos = sceneData:GetDummyPoint(1013, "AI4Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI4Pos1").rot,
        PatrolPosNum = 2,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AI4Pos1").pos, sceneData:GetDummyPoint(1013, "AI4Pos2").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AI4Pos1").rot, sceneData:GetDummyPoint(1013, "AI4Pos2").rot},
        PatrolNext = 1
    },
    SneakAI5Data = {
        alias = "SneakAI5",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1225,
        dataIndex = 5,
        bornPos = sceneData:GetDummyPoint(1013, "AI5Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI5Pos1").rot,
        PatrolPosNum = 2,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AI5Pos1").pos, sceneData:GetDummyPoint(1013, "AI5Pos2").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AI5Pos1").rot, sceneData:GetDummyPoint(1013, "AI5Pos2").rot},
        PatrolNext = 1
    },
    SneakAI6Data = {
        alias = "SneakAI6",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1226,
        dataIndex = 6,
        bornPos = sceneData:GetDummyPoint(1013, "AI6Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI6Pos1").rot,
        PatrolPosNum = 2,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AI6Pos1").pos, sceneData:GetDummyPoint(1013, "AI6Pos2").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AI6Pos1").rot, sceneData:GetDummyPoint(1013, "AI6Pos2").rot},
        PatrolNext = 1
    },
    SneakAI7Data = {
        alias = "SneakAI7",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1227,
        dataIndex = 7,
        bornPos = sceneData:GetDummyPoint(1013, "AI7Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI7Pos1").rot,
        PatrolPosNum = 2,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AI7Pos1").pos, sceneData:GetDummyPoint(1013, "AI7Pos2").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AI7Pos1").rot, sceneData:GetDummyPoint(1013, "AI7Pos2").rot},
        PatrolNext = 1
    },
    SneakAI8Data = {
        alias = "SneakAI8",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1228,
        dataIndex = 8,
        bornPos = sceneData:GetDummyPoint(1013, "AI8Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI8Pos1").rot,
        PatrolPosNum = 4,
        PatrolPos = {
            sceneData:GetDummyPoint(1013, "AI8Pos1").pos,
            sceneData:GetDummyPoint(1013, "AI8Pos2").pos,
            sceneData:GetDummyPoint(1013, "AI8Pos3").pos,
            sceneData:GetDummyPoint(1013, "AI8Pos4").pos
        },
        PatrolDir = {
            sceneData:GetDummyPoint(1013, "AI8Pos1").rot,
            sceneData:GetDummyPoint(1013, "AI8Pos2").rot,
            sceneData:GetDummyPoint(1013, "AI8Pos3").rot,
            sceneData:GetDummyPoint(1013, "AI8Pos4").rot
        },
        PatrolNext = 1
    },
    SneakAI9Data = {
        alias = "SneakAI9",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1229,
        dataIndex = 9,
        bornPos = sceneData:GetDummyPoint(1013, "AI9Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI9Pos1").rot,
        PatrolPosNum = 4,
        PatrolPos = {
            sceneData:GetDummyPoint(1013, "AI9Pos1").pos,
            sceneData:GetDummyPoint(1013, "AI9Pos2").pos,
            sceneData:GetDummyPoint(1013, "AI9Pos3").pos,
            sceneData:GetDummyPoint(1013, "AI9Pos4").pos
        },
        PatrolDir = {
            sceneData:GetDummyPoint(1013, "AI9Pos1").rot,
            sceneData:GetDummyPoint(1013, "AI9Pos2").rot,
            sceneData:GetDummyPoint(1013, "AI9Pos3").rot,
            sceneData:GetDummyPoint(1013, "AI9Pos4").rot
        },
        PatrolNext = 1
    },
    SneakAI10Data = {
        alias = "SneakAI10",
        metaPath = "Actor/Npc/SneakAdvAI",
        configID = 1230,
        dataIndex = 10,
        bornPos = sceneData:GetDummyPoint(1013, "AI10Pos1").pos,
        bornDir = sceneData:GetDummyPoint(1013, "AI10Pos1").rot,
        PatrolPosNum = 1,
        PatrolPos = {sceneData:GetDummyPoint(1013, "AI10Pos1").pos},
        PatrolDir = {sceneData:GetDummyPoint(1013, "AI10Pos1").rot},
        PatrolNext = 1
    },
    AwareReminder = {{dialogID = 4240602, audioEvtName = "", duration = 2}},
    DiscoverReminder = {{dialogID = 4240603, audioEvtName = "", duration = 1}},
    ScoreReminder = {
        talkerName = "\230\180\190\232\146\153",
        content = "\232\191\135\229\133\179\232\175\132\229\136\134\239\188\154"
    }
}
