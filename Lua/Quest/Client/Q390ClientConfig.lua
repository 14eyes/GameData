local Q390ClientConfig = {
    MainID = 390,
    ActorAlias = "390",
    SubIDs = {
        q39001 = 39001,
        q39002 = 39002,
        q39003 = 39003,
        q39004 = 39004,
        q39005 = 39005,
        q39006 = 39006,
        q39007 = 39007,
        q39008 = 39008,
        q39009 = 39009,
        q39010 = 39010
    },
    WendyData = {
        Wendy = "Wendy",
        WendyScript = "Actor/Quest/Q301/Wendy301",
        WendyID = 1001,
        bornPos = sceneData:GetDummyPoint(3, "Q390Wendy").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q390Wendy").rot
    },
    DilucData = {
        Diluc = "Diluc",
        DilucScript = "Actor/Quest/Q376/Diluc",
        DilucID = 1009,
        bornPos = sceneData:GetDummyPoint(3, "Q390Diluc").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q390Diluc").rot
    },
    QinData = {
        Qin = "Qin",
        QinScript = "Actor/Quest/Q411/Qin",
        QinID = 1006,
        bornPos = sceneData:GetDummyPoint(3, "Q390Qin").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q390Qin").rot
    },
    PaimonData = {
        Paimon = "Paimon",
        PaimonScript = "Actor/Quest/Q352/Paimon",
        PaimonID = 1005,
        bornPos = sceneData:GetDummyPoint(3, "Q390Paimon").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q390Paimon").rot
    },
    OrganData = {
        bornPos = sceneData:GetDummyPoint(3, "Q390OrganPos").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q390OrganPos").rot
    }
}

local sealOpenTimeCfg1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_DvalinSealOpen01",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
sealOpenTimeCfg1.startOffset = startOffset
sealOpenTimeCfg1.fadeInDuration = 1
Q390ClientConfig.SealOpenTimeCfg1 = sealOpenTimeCfg1

local sealOpenTimeCfg2 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_DvalinSealOpen02",
    startPosType = CutsceneInitPosType.FREE
}

local tbl = {}
local n2 = 0
local n3 = 0
tbl[1] = 0
tbl[2] = n2
tbl[3] = n3
sealOpenTimeCfg2.startOffset = tbl
sealOpenTimeCfg2.fadeInDuration = 1
Q390ClientConfig.SealOpenTimeCfg2 = sealOpenTimeCfg2

local sealOpenTimeCfg3 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_DvalinSealOpen03",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset2 = {}
local n4 = 0
local n5 = 0
startOffset2[1] = 0
startOffset2[2] = n4
startOffset2[3] = n5
sealOpenTimeCfg3.startOffset = startOffset2
sealOpenTimeCfg3.fadeInDuration = 1
Q390ClientConfig.SealOpenTimeCfg3 = sealOpenTimeCfg3

local sealAppearTimeCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MDAQ501_DvalinSeal01Appear",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset3 = {}
local n6 = 0
local n7 = 0
startOffset3[1] = 0
startOffset3[2] = n6
startOffset3[3] = n7
sealAppearTimeCfg.startOffset = startOffset3
sealAppearTimeCfg.fadeInDuration = 0
Q390ClientConfig.SealAppearTimeCfg = sealAppearTimeCfg

Q390ClientConfig.NarratorData = {
    FindOrgan1 = {
        {dialogID = 3900101, duration = 3},
        {dialogID = 3900102, duration = 3},
        {dialogID = 3900103, duration = 3}
    },
    OpenOrgan1 = {
        {dialogID = 3900801, duration = 4},
        {dialogID = 3900802, duration = 4},
        {dialogID = 3900803, duration = 3}
    },
    OpenOrgan2 = {{dialogID = 3910801, duration = 4}, {dialogID = 3910802, duration = 4}},
    OpenOrgan3 = {{dialogID = 3920801, duration = 1}, {dialogID = 3920802, duration = 4}},
    FindClue1_1 = {{dialogID = 3900401, duration = 3}},
    FindClue1_3 = {{dialogID = 3900601, duration = 3}},
    FindClue2_2 = {{dialogID = 3910501, duration = 3}},
    FindClue3_3 = {{dialogID = 3920601, duration = 3}}
}

Q390ClientConfig.LookCameraData = {LookPos1 = sceneData:GetDummyPoint(3, "Q394Target1").pos}
return Q390ClientConfig
