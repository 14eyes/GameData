local Q357ClientConfig = {
    MainID = 357,
    ActorAlias = "357",
    SubIDs = {q35720 = 35720, q35721 = 35721, q35722 = 35722, q35723 = 35723, q35724 = 35724, q35725 = 35725},
    Q357NPC1Data = {
        Q357NPC1 = "Q357NPC1",
        Q357NPC1Script = "Actor/Quest/Q376/Soldier",
        Q357NPC1ID = 10001,
        Pos1 = sceneData:GetDummyPoint(3, "Q357NPC1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357NPC1").rot
    },
    Q357NPC2Data = {
        Q357NPC2 = "Q357NPC2",
        Q357NPC2Script = "Actor/Quest/Q376/Soldier",
        Q357NPC2ID = 10002,
        Pos1 = sceneData:GetDummyPoint(3, "Q357NPC2").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357NPC2").rot
    },
    Q357NPC3Data = {
        Q357NPC3 = "Q357NPC3",
        Q357NPC3Script = "Actor/Quest/Q376/Soldier",
        Q357NPC3ID = 10003,
        Pos1 = sceneData:GetDummyPoint(3, "Q357NPC3").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357NPC3").rot
    },
    Q357NPC4Data = {
        Q357NPC4 = "Q357NPC4",
        Q357NPC4Script = "Actor/Quest/Q376/Soldier",
        Q357NPC4ID = 10004,
        Pos1 = sceneData:GetDummyPoint(3, "Q357NPC4").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357NPC4").rot
    },
    Q357NPC5Data = {
        Q357NPC5 = "Q357NPC5",
        Q357NPC5Script = "Actor/Quest/Q376/Soldier",
        Q357NPC5ID = 10005,
        Pos1 = sceneData:GetDummyPoint(3, "Q357NPC5").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357NPC5").rot
    },
    Q357NPC6Data = {
        Q357NPC6 = "Q357NPC6",
        Q357NPC6Script = "Actor/Quest/Q376/Soldier",
        Q357NPC6ID = 10006,
        Pos1 = sceneData:GetDummyPoint(3, "Q357NPC6").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357NPC6").rot
    },
    AmborData = {
        Ambor = "Ambor",
        AmborScript = "Actor/Quest/Q301/Ambor301",
        AmborID = 1002,
        Pos1 = sceneData:GetDummyPoint(3, "Q356Ambor3").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q356Ambor3").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q357Ambor1").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q357Ambor1").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q357Ambor2").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q357Ambor2").rot,
        Pos4 = sceneData:GetDummyPoint(3, "Q357Ambor3").pos,
        Dir4 = sceneData:GetDummyPoint(3, "Q357Ambor3").rot,
        Pos5 = sceneData:GetDummyPoint(3, "Q357Ambor4").pos,
        Dir5 = sceneData:GetDummyPoint(3, "Q357Ambor4").rot,
        Pos6 = sceneData:GetDummyPoint(3, "Q357Ambor5").pos,
        Dir6 = sceneData:GetDummyPoint(3, "Q357Ambor5").rot,
        Pos7 = sceneData:GetDummyPoint(3, "Q357Ambor6").pos,
        Dir7 = sceneData:GetDummyPoint(3, "Q357Ambor6").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    GaiaData = {
        Gaia = "Gaia",
        GaiaScript = "Actor/Quest/Q301/Gaia301",
        GaiaID = 1004,
        Pos1 = sceneData:GetDummyPoint(3, "Q357Gaia1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357Gaia1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q357Gaia2").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q357Gaia2").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q357Gaia3").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q357Gaia3").rot,
        Pos4 = sceneData:GetDummyPoint(3, "Q357Gaia4").pos,
        Dir4 = sceneData:GetDummyPoint(3, "Q357Gaia4").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    PaimonData = {
        Paimon = "Paimon",
        PaimonScript = "Actor/Quest/Q352/Paimon",
        PaimonID = 1005,
        Pos1 = sceneData:GetDummyPoint(3, "Q358Paimon1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q358Paimon1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q358Paimon2").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q358Paimon2").rot,
        hiddenPos = sceneData:GetDummyPoint(3, "Q301Hidden").pos,
        hiddenDir = sceneData:GetDummyPoint(3, "Q301Hidden").rot
    },
    NarratorData = {
        CutsceneTemp = {},
        FlyTutorial = {
            {dialogID = 3570301, duration = 3},
            {dialogID = 3570302, duration = 3},
            {dialogID = 3570303, duration = 3}
        },
        ShootTutorial = {{dialogID = 3570505, duration = 6}},
        Story1 = {
            {dialogID = 3570601, duration = 4},
            {dialogID = 3570602, duration = 3},
            {dialogID = 3570603, duration = 3}
        },
        Story2 = {{dialogID = 3571001, duration = 4}},
        Story3 = {{dialogID = 3570604, duration = 4}, {dialogID = 3570605, duration = 3}}
    },
    Stone3Data = {
        Stone3 = "Stone3",
        StoneID = 70300054,
        Pos3 = sceneData:GetDummyPoint(3, "Q356Stone1").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q356Stone1").rot
    },
    StoneData = {
        Stone1 = "Stone1",
        StoneID = 70300013,
        Pos1 = sceneData:GetDummyPoint(3, "Q357Stone1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357Stone1").rot
    },
    Stone2Data = {
        Stone2 = "Stone2",
        StoneID = 70300046,
        Pos2 = sceneData:GetDummyPoint(3, "Q357Stone2").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q357Stone2").rot
    },
    SpecialStoneData = {
        Stone4 = "Stone4",
        StoneID = 70300039,
        Pos4 = sceneData:GetDummyPoint(3, "Q357Stone3").pos,
        Dir4 = sceneData:GetDummyPoint(3, "Q357Stone3").rot
    },
    HitSphereData = {
        HitSphere = "HitSphere",
        StoneID = 70300047,
        Pos = sceneData:GetDummyPoint(3, "Q357Stone3").pos,
        Dir = sceneData:GetDummyPoint(3, "Q357Stone3").rot
    },
    TargetData = {
        Target1 = "Target1",
        Target2 = "Target2",
        Target3 = "Target3",
        Target4 = "Target4",
        Target5 = "Target5",
        TargetID = 70900201,
        Pos3 = sceneData:GetDummyPoint(3, "Q356Target1").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q356Target1").rot,
        Pos1 = sceneData:GetDummyPoint(3, "Q357Target1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357Target1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q357Target2").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q357Target2").rot,
        Pos4 = sceneData:GetDummyPoint(3, "Q357Target4").pos,
        Dir4 = sceneData:GetDummyPoint(3, "Q357Target4").rot,
        Pos5 = sceneData:GetDummyPoint(3, "Q357Target3").pos,
        Dir5 = sceneData:GetDummyPoint(3, "Q357Target3").rot
    },
    WindData = {
        Wind1 = "Wind1",
        Wind2 = "Wind2",
        Wind3 = "Wind3",
        Wind4 = "Wind4",
        Wind5 = "Wind5",
        Wind6 = "Wind6",
        Wind7 = "Wind7",
        WindID = 40200020,
        Pos1 = sceneData:GetDummyPoint(3, "Q357Wind1").pos,
        Dir1 = sceneData:GetDummyPoint(3, "Q357Wind1").rot,
        Pos2 = sceneData:GetDummyPoint(3, "Q357Wind2").pos,
        Dir2 = sceneData:GetDummyPoint(3, "Q357Wind2").rot,
        Pos3 = sceneData:GetDummyPoint(3, "Q357Wind3").pos,
        Dir3 = sceneData:GetDummyPoint(3, "Q357Wind3").rot,
        Pos4 = sceneData:GetDummyPoint(3, "Q357Wind4").pos,
        Dir4 = sceneData:GetDummyPoint(3, "Q357Wind4").rot,
        Pos5 = sceneData:GetDummyPoint(3, "Q357Wind5").pos,
        Dir5 = sceneData:GetDummyPoint(3, "Q357Wind5").rot,
        Pos6 = sceneData:GetDummyPoint(3, "Q357Wind6").pos,
        Dir6 = sceneData:GetDummyPoint(3, "Q357Wind6").rot,
        Pos7 = sceneData:GetDummyPoint(3, "Q357Wind7").pos,
        Dir7 = sceneData:GetDummyPoint(3, "Q357Wind7").rot
    },
    WallData = {
        Wall = "Wall",
        WallID = 70700001,
        WallPos = {x = 2290, y = 220, z = -813},
        WallDir = {x = 0.0, y = -7.5, z = 0.0}
    },
    SkyboxData = {
        Skybox = "Skybox",
        SkyboxID = 70700002,
        SkyboxPos = {x = 2252, y = 209, z = -906},
        SkyboxDir = {x = 0.0, y = 0.0, z = 0.0}
    },
    DragonData = {
        Dragon = "Dragon",
        DragonScript = "Actor/Quest/Q304/Dragon",
        DragonID = 1010,
        CircleNum = 6,
        DragonPos = {
            sceneData:GetDummyPoint(3, "Q304Dragon1").pos,
            sceneData:GetDummyPoint(3, "Q304Dragon2").pos,
            sceneData:GetDummyPoint(3, "Q304Dragon3").pos,
            sceneData:GetDummyPoint(3, "Q304Dragon4").pos,
            sceneData:GetDummyPoint(3, "Q304Dragon5").pos,
            sceneData:GetDummyPoint(3, "Q304Dragon6").pos
        },
        DragonDir = {
            sceneData:GetDummyPoint(3, "Q304Dragon1").rot,
            sceneData:GetDummyPoint(3, "Q304Dragon2").rot,
            sceneData:GetDummyPoint(3, "Q304Dragon3").rot,
            sceneData:GetDummyPoint(3, "Q304Dragon4").rot,
            sceneData:GetDummyPoint(3, "Q304Dragon5").rot,
            sceneData:GetDummyPoint(3, "Q304Dragon6").rot
        }
    }
}

local interData = {}

local dragonCutScene = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    resPath = "ART/CameraAni/Quest/Ca_Quest_DragonCircle",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
dragonCutScene.startOffset = startOffset
dragonCutScene.keepCamera = true
interData.DragonCutScene = dragonCutScene

local cutscene1 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q358",
    resPath = "ART/Cutscene/Cs_MDAQ022_KaeyaArrived_Part1_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local tbl = {}
local n2 = 0
local n3 = 0
tbl[1] = 0
tbl[2] = n2
tbl[3] = n3
cutscene1.startOffset = tbl
cutscene1.keepCamera = true
cutscene1.fadeInDuration = 0
interData.Cutscene1 = cutscene1

interData.Cutscene2 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q354",
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_DragonInMDCity_CutScene_Convert",
    startPosType = CutsceneInitPosType.FREE,
    startOffset = {x = 0, y = 0, z = 0}
}

interData.Cutscene3 = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q354",
    resPath = "ART/Cutscene/Cs_MDAQ022_KaeyaArrived_Part2_Convert",
    startPosType = CutsceneInitPosType.FREE,
    startOffset = {x = 0, y = 0, z = 0},
    fadeInDuration = 0,
    syncLoad = true
}

interData.NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3500001}}}
Q357ClientConfig.InterData = interData
return Q357ClientConfig
