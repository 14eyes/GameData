require("Actor/ActorCommon")

return {
    MainID = 412,
    ActorAlias = "412",
    SubIDs = {
        q41200 = 41200,
        q41201 = 41201,
        q41202 = 41202,
        q41203 = 41203,
        q41204 = 41204,
        q41205 = 41205,
        q41206 = 41206,
        q41207 = 41207,
        q41208 = 41208,
        q41209 = 41209,
        q41210 = 41210
    },
    GaiaData = {
        Gaia = "Gaia",
        GaiaScript = "Actor/Quest/Q301/Gaia301",
        GaiaID = 1004,
        bornPos = sceneData:GetDummyPoint(3, "Q412GaiaBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q412GaiaBorn").rot,
        runPos = sceneData:GetDummyPoint(3, "Q412GaiaRun").pos,
        hidePos = sceneData:GetDummyPoint(3, "Q412GaiaHide").pos,
        hideDir = sceneData:GetDummyPoint(3, "Q412GaiaHide").rot,
        observePos = sceneData:GetDummyPoint(3, "Q412GaiaObserve").pos,
        observeDir = sceneData:GetDummyPoint(3, "Q412GaiaObserve").rot,
        askPos = sceneData:GetDummyPoint(3, "Q412GaiaAsk").pos,
        askDir = sceneData:GetDummyPoint(3, "Q412GaiaAsk").rot,
        answerPos = sceneData:GetDummyPoint(3, "Q412GaiaAnswer").pos,
        answerDir = sceneData:GetDummyPoint(3, "Q412GaiaAnswer").rot,
        run2Pos = sceneData:GetDummyPoint(3, "Q412GaiaRun2").pos
    },
    GaiaNoReplyInter = {
        {
            {
                type = InteractionType.DIALOG,
                dialogType = DialogType.LOCK_FRAME,
                talkerName = "\229\135\175\228\186\154",
                content = "\230\136\145\229\133\136\229\142\187\228\186\134\239\188\140\228\189\160\228\185\159\229\191\171\230\157\165"
            }
        }
    }
}
