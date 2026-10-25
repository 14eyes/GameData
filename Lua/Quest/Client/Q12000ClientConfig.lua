local Q12000ClientConfig = {
    MainID = 12000,
    ActorAlias = "12000",
    SubIDs = {
        q1200001 = 1200001,
        q1200002 = 1200002,
        q1200003 = 1200003,
        q1200004 = 1200004,
        q1200005 = 1200005,
        q1200006 = 1200006,
        q1200007 = 1200007,
        q1200008 = 1200008,
        q1200009 = 1200009,
        q1200010 = 1200010,
        q1200011 = 1200011
    },
    NarratorData1 = {
        {dialogID = 120000203, audioEvtName = "vo_XQLQ001_1_paimon_01", duration = 4.5},
        {dialogID = 120000204, audioEvtName = "vo_XQLQ001_1_paimon_02", duration = 6.2}
    },
    CHData = {
        Alias = "Npc2062",
        Script = "Actor/Npc/TempNPC",
        ID = 2062,
        Pos1 = sceneData:GetDummyPoint(3, "Q1200103Guard").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q1200103Guard").rot
    },
    GuardData01 = {
        Alias = "Npc1659",
        Script = "Actor/Npc/TempNPC",
        ID = 1659,
        Pos1 = sceneData:GetDummyPoint(3, "Q12000Guard01move").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q12000Guard01move").rot
    },
    GuardData02 = {
        Alias = "Npc10050",
        Script = "Actor/Npc/TempNPC",
        ID = 10050,
        Pos1 = sceneData:GetDummyPoint(3, "Q12000Guard02move").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q12000Guard02move").rot
    },
    GuardData03 = {
        Alias = "Npc10051",
        Script = "Actor/Npc/TempNPC",
        ID = 10051,
        Pos1 = sceneData:GetDummyPoint(3, "Q12000Guard03move").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q12000Guard03move").rot
    },
    PaimonData = {
        Alias = "Paimon",
        Script = "Actor/Quest/Q352/Paimon",
        ID = 1005,
        Pos1 = sceneData:GetDummyPoint(3, "Q1200005CH").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q1200005CH").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q1200008CH").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q1200008CH").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q1200008CHmove").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q1200008CHmove").rot
    },
    XingQiuData = {
        Alias = "Npc10045",
        Script = "Actor/Quest/Q301/Gaia301",
        ID = 10045,
        Pos1 = sceneData:GetDummyPoint(3, "Q1200005XQ").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q1200005XQ").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q1200003XQ").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q1200003XQ").rot
    },
    BookmanagerData = {Alias = "Npc1625", ID = 1625}
}

local interData = {}

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    castListPath = "Cs_CastList_Paimon",
    resPath = "ART/Cutscene/Cs_BigWorldShow_Cutscene",
    canSkip = false,
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
cutscene1.startOffset = startOffset
cutscene1.keepCamera = true
interData.Cutscene1 = cutscene1
Q12000ClientConfig.InterData = interData
return Q12000ClientConfig
