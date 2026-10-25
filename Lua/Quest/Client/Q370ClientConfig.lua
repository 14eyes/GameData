return {
    MainID = 370,
    ActorAlias = "370",
    SubIDs = {q37001 = 37001, q37002 = 37002, q37004 = 37004, q37005 = 37005, q37003 = 37003},
    RoutePoints = {
        sceneData:GetDummyPoint(3, "Q37004Route1").pos,
        sceneData:GetDummyPoint(3, "Q37004Route2").pos,
        sceneData:GetDummyPoint(3, "Q37004Route3").pos,
        sceneData:GetDummyPoint(3, "QuestKnighthood").pos
    },
    FollowLen = 10,
    FailLen = 55,
    QinData = {
        Qin = "Qin",
        QinScript = "Actor/Quest/Q411/Qin",
        QinID = 1006,
        bornPos1 = sceneData:GetDummyPoint(3, "Q37001Qin").pos,
        bornDir1 = sceneData:GetDummyPoint(3, "Q37001Qin").rot,
        bornPos2 = sceneData:GetDummyPoint(1004, "Q358Qin").pos,
        bornDir2 = sceneData:GetDummyPoint(1004, "Q358Qin").rot
    },
    NarratorFlow = {
        {dialogID = 3700301, audioEvtName = "", duration = 4.5},
        {dialogID = 3700302, audioEvtName = "", duration = 3.5},
        {dialogID = 3700303, audioEvtName = "", duration = 4.8},
        {dialogID = 3700304, audioEvtName = "", duration = 6},
        {dialogID = 3700305, audioEvtName = "", duration = 5}
    },
    NarratorWarning = {{dialogID = 3700310, audioEvtName = "", duration = 6}},
    NarratorStayWarning = {{dialogID = 3700310, audioEvtName = "", duration = 6}},
    FatuusData = {
        Fatuus = "Fatuus",
        FatuusScript = "Actor/Npc/TempNPC",
        FatuusID = 1487,
        bornPos1 = sceneData:GetDummyPoint(3, "Q37001Fatuus").pos,
        bornDir1 = sceneData:GetDummyPoint(3, "Q37001Fatuus").rot
    },
    LisaData = {
        Lisa = "Lisa",
        LisaScript = "Actor/Quest/Q411/Lisa",
        LisaID = 1007,
        bornPos = sceneData:GetDummyPoint(1004, "Q358Lisa").pos,
        bornDir = sceneData:GetDummyPoint(1004, "Q358Lisa").rot
    },
    PaimonData = {
        Paimon = "Paimon",
        PaimonScript = "Actor/Quest/Q352/Paimon",
        PaimonID = 1005,
        bornPos1 = sceneData:GetDummyPoint(3, "Q37001Paimon").pos,
        bornDir1 = sceneData:GetDummyPoint(3, "Q37001Paimon").rot,
        bornPos2 = sceneData:GetDummyPoint(1004, "Q358Paimon").pos,
        bornDir2 = sceneData:GetDummyPoint(1004, "Q358Paimon").rot
    }
}
