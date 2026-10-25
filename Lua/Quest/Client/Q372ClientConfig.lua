local Q372ClientConfig = {
    MainID = 372,
    ActorAlias = "372",
    SubIDs = {q37201 = 37201, q37202 = 37202, q37203 = 37203},
    NarratorFlow = {
        {dialogID = 3730101, audioEvtName = "", duration = 5.5},
        {dialogID = 3730102, audioEvtName = "", duration = 4.2},
        {dialogID = 3730103, audioEvtName = "", duration = 3.2},
        {dialogID = 3730104, audioEvtName = "", duration = 5.5}
    }
}

local ventiShowCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q372",
    resPath = "ART/Cutscene/Cs_MDAQ040_VentiShow_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
ventiShowCfg.startOffset = startOffset
ventiShowCfg.entityBan = "37201_Dialog"
ventiShowCfg.fadeInDuration = 0.0
Q372ClientConfig.VentiShowCfg = ventiShowCfg

local purifyTearCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q372",
    resPath = "ART/Cutscene/Cs_MDAQ41_CleanTear_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local tbl = {}
local n2 = 0
local n3 = 0
tbl[1] = 0
tbl[2] = n2
tbl[3] = n3
purifyTearCfg.startOffset = tbl
purifyTearCfg.keepCamera = true
purifyTearCfg.entityBan = "37201_Dialog"
purifyTearCfg.fadeInDuration = 0.0
Q372ClientConfig.PurifyTearCfg = purifyTearCfg

Q372ClientConfig.WendyData = {
    Wendy = "WendyNew",
    WendyScript = "Actor/Quest/Q376/WendyNew",
    WendyID = 1160,
    bornPos = sceneData:GetDummyPoint(3, "Q372WendyShow").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q372WendyShow").rot,
    desPos = sceneData:GetDummyPoint(3, "Q372WendyiDis").pos
}

Q372ClientConfig.NPCData = {
    Npc1 = "NPC10038",
    Npc2 = "NPC10039",
    Npc3 = "NPC10040",
    Npc4 = "NPC10041",
    Npc5 = "NPC10042",
    NPCScript = "Actor/Npc/TempNPC",
    Npc1ID = 10038,
    Npc2ID = 10039,
    Npc3ID = 10040,
    Npc4ID = 10041,
    Npc5ID = 10042,
    Npc1Pos = sceneData:GetDummyPoint(3, "Q372Audience01Vile").pos,
    Npc1Dir = sceneData:GetDummyPoint(3, "Q372Audience01Vile").rot,
    Npc2Pos = sceneData:GetDummyPoint(3, "Q372Audience02Alfry").pos,
    Npc2Dir = sceneData:GetDummyPoint(3, "Q372Audience02Alfry").rot,
    Npc3Pos = sceneData:GetDummyPoint(3, "Q372Audience03Huf").pos,
    Npc3Dir = sceneData:GetDummyPoint(3, "Q372Audience03Huf").rot,
    Npc4Pos = sceneData:GetDummyPoint(3, "Q372Audience04Pat").pos,
    Npc4Dir = sceneData:GetDummyPoint(3, "Q372Audience04Pat").rot,
    Npc5Pos = sceneData:GetDummyPoint(3, "Q372Audience05Sol").pos,
    Npc5Dir = sceneData:GetDummyPoint(3, "Q372Audience05Sol").rot
}

return Q372ClientConfig
