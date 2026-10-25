local Q307ClientConfig = {
    MainID = 307,
    ActorAlias = "307",
    SubIDs = {
        q30700 = 30700,
        q30701 = 30701,
        q30702 = 30702,
        q30703 = 30703,
        q30704 = 30704,
        q30707 = 30707,
        q30708 = 30708,
        q30709 = 30709,
        q30710 = 30710,
        q30711 = 30711,
        q30712 = 30712,
        q30713 = 30713,
        q30715 = 30715
    },
    GaiaData = {
        Gaia = "Gaia",
        GaiaScript = "Actor/Quest/Q301/Gaia301",
        GaiaID = 1004,
        DoorPos = sceneData:GetDummyPoint(3, "Q307DungeonDoor").pos,
        DoorDir = sceneData:GetDummyPoint(3, "Q307DungeonDoor").rot,
        DungeonPos = sceneData:GetDummyPoint(3, "Q307DungeonGaia").pos,
        DungeonDir = sceneData:GetDummyPoint(3, "Q307DungeonGaia").rot,
        HiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        HiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot,
        Pos1 = sceneData:GetDummyPoint(20008, "Q307GaiaDungeon").pos,
        Dir1 = sceneData:GetDummyPoint(20008, "Q307GaiaDungeon").rot,
        BornPos = sceneData:GetDummyPoint(20008, "Q307Gaia").pos,
        BornDir = sceneData:GetDummyPoint(20008, "Q307Gaia").rot
    }
}

local interData = {}

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q307",
    resPath = "ART/Cutscene/Cs_MDAQ032_KaeyaTuts_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
cutscene1.startOffset = startOffset
cutscene1.keepCamera = false
cutscene1.fadeInDuration = 0.0
cutscene1.fadeOutDuration = 0.1
cutscene1.syncLoad = true
interData.Cutscene1 = cutscene1
interData.NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3500001}}}
Q307ClientConfig.InterData = interData
return Q307ClientConfig
