require("Actor/ActorCommon")

local Q301Config = {
    MainID = 301,
    ActorAlias = "301",
    SubIDs = {
        q30100 = 30100,
        q30101 = 30101,
        q30102 = 30102,
        q30103 = 30103,
        q30104 = 30104,
        q30105 = 30105,
        q30106 = 30106,
        q30107 = 30107,
        q30108 = 30108,
        q30109 = 30109,
        q30110 = 30110,
        q30111 = 30111,
        q30112 = 30112,
        q30113 = 30113,
        q30114 = 30114,
        q30115 = 30115,
        q30116 = 30116,
        q30117 = 30117,
        q30118 = 30118
    },
    WendyData = {
        Wendy = "Wendy",
        WendyScript = "Actor/Quest/Q301/Wendy301",
        WendyID = 1001,
        bornPos = sceneData:GetDummyPoint(3, "Q301WendyPlay").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q301WendyPlay").rot,
        vanishPos = sceneData:GetDummyPoint(3, "Q301WendyVanish").pos,
        EvtFinishDance = 10079
    },
    RobamData = {
        Robam = "Robam",
        RobamScript = "Actor/Quest/Q301/Robam301",
        RobamID = 1003,
        EvtFinishDance = 10079,
        bornPos = sceneData:GetDummyPoint(3, "Q301RobamBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q301RobamBorn").rot,
        arguePos = sceneData:GetDummyPoint(3, "Q301RobamArgue").pos,
        argueDir = sceneData:GetDummyPoint(3, "Q301RobamArgue").rot
    },
    AmborData = {
        Ambor = "Ambor",
        AmborScript = "Actor/Quest/Q301/Ambor301",
        AmborID = 1002,
        EvtFinishDance = 10079,
        bornPos = sceneData:GetDummyPoint(3, "Q301AmborBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q301AmborBorn").rot,
        arguePos = sceneData:GetDummyPoint(3, "Q301AmborArgue").pos,
        argueDir = sceneData:GetDummyPoint(3, "Q301AmborArgue").rot,
        vanishPos = sceneData:GetDummyPoint(3, "Q301AmborVanish").pos
    },
    GaiaData = {
        Gaia = "Gaia",
        GaiaScript = "Actor/Quest/Q301/Gaia301",
        GaiaID = 1004,
        BeFollowLen = 10,
        BeFollowFailedLen = 50,
        bornPos = sceneData:GetDummyPoint(3, "Q301GaiaBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q301GaiaBorn").rot,
        showPos = sceneData:GetDummyPoint(3, "Q301GaiaShow").pos,
        showDir = sceneData:GetDummyPoint(3, "Q301GaiaShow").rot,
        firstPos = sceneData:GetDummyPoint(3, "Q301GaiaFollow1").pos,
        secondPos = sceneData:GetDummyPoint(3, "Q301GaiaFollow2").pos,
        thirdPos = sceneData:GetDummyPoint(3, "Q301GaiaFollow3").pos,
        fifthPos = sceneData:GetDummyPoint(3, "Q301GaiaFollow4").pos,
        sixthPos = sceneData:GetDummyPoint(3, "Q301GaiaFollow5").pos,
        fourthPos = sceneData:GetDummyPoint(3, "Q301GaiaFollowFinal").pos
    }
}

local extrasData = {Extras = "Extras", ExtrasAudience = "Actor/Quest/Q301/WendyAudience"}
local extrasIDs = {}
local n = 1102
local v = 1103
local n2 = 1104
extrasIDs[1] = 1101
extrasIDs[2] = n
extrasIDs[3] = v
extrasIDs[4] = n2
extrasData.ExtrasIDs = extrasIDs

extrasData.ExtrasOriginPos = {
    sceneData:GetDummyPoint(3, "Q301Folk1Born").pos,
    sceneData:GetDummyPoint(3, "Q301Folk2Born").pos,
    sceneData:GetDummyPoint(3, "Q301Folk3Born").pos,
    sceneData:GetDummyPoint(3, "Q301Folk4Born").pos
}

extrasData.ExtrasOriginDir = {
    sceneData:GetDummyPoint(3, "Q301Folk1Born").rot,
    sceneData:GetDummyPoint(3, "Q301Folk2Born").rot,
    sceneData:GetDummyPoint(3, "Q301Folk3Born").rot,
    sceneData:GetDummyPoint(3, "Q301Folk4Born").rot
}

extrasData.ExtrasSeatPos = {
    sceneData:GetDummyPoint(3, "Q301Audience1").pos,
    sceneData:GetDummyPoint(3, "Q301Audience2").pos,
    sceneData:GetDummyPoint(3, "Q301Audience3").pos,
    sceneData:GetDummyPoint(3, "Q301Audience4").pos
}

extrasData.ExtrasSeatDir = {
    sceneData:GetDummyPoint(3, "Q301Audience1").rot,
    sceneData:GetDummyPoint(3, "Q301Audience2").rot,
    sceneData:GetDummyPoint(3, "Q301Audience3").rot,
    sceneData:GetDummyPoint(3, "Q301Audience4").rot
}

extrasData.ExtrasDaily1Pos = {
    sceneData:GetDummyPoint(3, "Q301Folk1Pos1").pos,
    sceneData:GetDummyPoint(3, "Q301Folk2Pos1").pos,
    sceneData:GetDummyPoint(3, "Q301Folk3Pos1").pos,
    sceneData:GetDummyPoint(3, "Q301Folk4Pos1").pos
}

extrasData.ExtrasDaily2Pos = {
    sceneData:GetDummyPoint(3, "Q301Folk1Pos2").pos,
    sceneData:GetDummyPoint(3, "Q301Folk2Pos2").pos,
    sceneData:GetDummyPoint(3, "Q301Folk3Pos2").pos,
    sceneData:GetDummyPoint(3, "Q301Folk4Pos2").pos
}

extrasData.ExtrasDaily3Pos = {
    sceneData:GetDummyPoint(3, "Q301Folk1Pos3").pos,
    sceneData:GetDummyPoint(3, "Q301Folk2Pos3").pos,
    sceneData:GetDummyPoint(3, "Q301Folk3Pos3").pos,
    sceneData:GetDummyPoint(3, "Q301Folk4Pos3").pos
}

extrasData.ExtrasDaily4Pos = {
    sceneData:GetDummyPoint(3, "Q301Folk1Pos4").pos,
    sceneData:GetDummyPoint(3, "Q301Folk2Pos4").pos,
    sceneData:GetDummyPoint(3, "Q301Folk3Pos4").pos,
    sceneData:GetDummyPoint(3, "Q301Folk4Pos4").pos
}

extrasData.ExtrasHomePos = {
    sceneData:GetDummyPoint(3, "Q301Folk1Home").pos,
    sceneData:GetDummyPoint(3, "Q301Folk2Home").pos,
    sceneData:GetDummyPoint(3, "Q301Folk3Home").pos,
    sceneData:GetDummyPoint(3, "Q301Folk4Home").pos
}

extrasData.ExtrasReturnCallback = {
    function(arg1)
        arg1:StartDaily()
    end,
    function(arg1)
        arg1:StartDaily()
    end,
    function(arg1)
        arg1:StartDaily()
    end,
    function(arg1)
        arg1:StartDaily()
    end
}

Q301Config.ExtrasData = extrasData

Q301Config.MeiData = {
    Mei = "Mei",
    MeiScript = "Actor/Npc/Npc101Test",
    MeiID = 101,
    bornPos = M.Pos(1460, 65, 152),
    bornDir = M.Dir(0, 0, 0)
}

Q301Config.TestData = {
    Test = "Test",
    TestScript = "Actor/Quest/Q301/Test301",
    TestID = 1105,
    bornPos = M.Pos(1443, 59.4, 162.7),
    bornDir = M.Dir(0, 170, 0),
    vanishPos = M.Pos(1449, 65, 116),
    EvtFinishDance = 10079
}

Q301Config.AudienceInter = {
    {
        {type = InteractionType.STEER_TO, steerType = DialogSteerType.TO_LOCAL_AVATAR, duration = 1.0},
        {
            type = InteractionType.CAMERA_MOVE,
            cameraPosType = StoryCameraPosType.RELATIVE_TO_INTER,
            camPosOffset = {x = 0, y = 0.5, z = 0},
            nearLength = 2,
            camTargetType = StoryCameraTargetType.TO_INTEE,
            camForwardTargetOffset = {x = 0, y = 0.5, z = 0},
            duration = 1.0,
            lerpRatio = 5.0,
            lerpPattern = 0
        },
        {
            type = InteractionType.DIALOG,
            dialogType = DialogType.LOCK_FRAME,
            talkerName = "\229\184\130\230\176\145",
            content = "\229\148\177\231\154\132\231\156\159\229\165\189\229\144\172\229\149\138\239\188\140\229\143\170\230\152\175\233\163\142\233\173\148\233\190\153\229\183\178\231\187\143\228\184\141\229\134\141\229\174\136\230\138\164\230\136\145\228\187\172\228\186\134\229\149\138"
        }
    },
    {
        {type = InteractionType.DIALOG_FINISH},
        {type = InteractionType.STEER_TO, steerType = DialogSteerType.RETURN, duration = 1.0},
        {
            type = InteractionType.CAMERA_MOVE,
            cameraPosType = StoryCameraPosType.EXIT,
            camPosOffset = {x = 0, y = 0, z = 0},
            nearLength = 0,
            camTargetType = StoryCameraTargetType.TO_INTEE,
            camForwardTargetOffset = {x = 0, y = 0, z = 0},
            duration = 1.0,
            lerpRatio = 5.0,
            lerpPattern = 1
        }
    }
}

local monsterData = {}
local monsterIDs = {}
local n3 = 21010301
monsterIDs[1] = 21010301
monsterIDs[2] = n3
monsterData.MonsterIDs = monsterIDs
Q301Config.MonsterData = monsterData

local mq1TimeCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    roleSheetPath = "",
    resPath = "ART/Cutscene/Cs_MD_MQ1_Cutscene01",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n4 = 0
local n5 = 0
startOffset[1] = 0
startOffset[2] = n4
startOffset[3] = n5
mq1TimeCfg.startOffset = startOffset
Q301Config.Mq1TimeCfg = mq1TimeCfg
return Q301Config
