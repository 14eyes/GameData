require("Actor/ActorCommon")

return {
    MainID = 404,
    ActorAlias = "404",
    SubIDs = {
        q40400 = 40400,
        q40401 = 40401,
        q40402 = 40402,
        q40403 = 40403,
        q40404 = 40404,
        q40405 = 40405,
        q40406 = 40406,
        q40407 = 40407,
        q40408 = 40408,
        q40409 = 40409,
        q40410 = 40410
    },
    AmborData = {
        Ambor = "Ambor",
        AmborScript = "Actor/Quest/Q301/Ambor301",
        AmborID = 1002,
        bornPos = sceneData:GetDummyPoint(3, "Q301AmborBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q301AmborBorn").rot,
        arguePos = sceneData:GetDummyPoint(3, "Q301AmborArgue").pos,
        argueDir = sceneData:GetDummyPoint(3, "Q301AmborArgue").rot,
        vanishPos = sceneData:GetDummyPoint(3, "Q301AmborVanish").pos,
        judgePos = sceneData:GetDummyPoint(3, "Q404AmborStart").pos,
        judgeDir = sceneData:GetDummyPoint(3, "Q404AmborStart").rot
    },
    KeyID = 100008,
    KeyPos = {x = 1540, y = 279, z = -5601},
    KeyDir = {x = 0, y = 45, z = 0},
    MatchTime = 35,
    gotKey = false,
    AmborNoReplyInter = {
        {
            {
                type = InteractionType.DIALOG,
                dialogType = DialogType.LOCK_FRAME,
                talkerName = "\229\174\137\230\159\143",
                content = "\230\136\145\229\133\136\229\142\187\228\186\134\239\188\140\228\189\160\228\185\159\229\191\171\230\157\165"
            }
        }
    },
    KeyPos2 = {x = 1892, y = 208, z = -5469},
    KeyDir2 = {x = 0, y = -36, z = 0},
    MatchTime2 = 40
}
