require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71502 = class("Quest71502", QuestActorProxy)
Quest71502.defaultAlias = "Quest71502"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71502:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71502:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7150203"] = self.OnSubStart7150203,
        ["7150201"] = self.OnSubStart7150201,
        ["7150202"] = self.OnSubStart7150202
    }
end

function Quest71502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7150203"] = self.OnSubFinish7150203,
        ["7150201"] = self.OnSubFinish7150201,
        ["7150202"] = self.OnSubFinish7150202
    }
end

function Quest71502:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71502:Start()
    print("Start")
end

function Quest71502:OnDestroy()
    print("OnDestroy")
end

function Quest71502:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71502:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71502:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71502:OnSubStart7150203(arg1)
    print("OnSubStart7150203")
end

function Quest71502:OnSubFinish7150203(arg1)
    print("OnSubFinish7150203")
end

function Quest71502:OnSubStart7150201(arg1)
    print("OnSubStart7150201")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
end

function Quest71502:OnSubFinish7150201(arg1)
    print("OnSubFinish7150201")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
end

function Quest71502:OnSubStart7150202(arg1)
    print("OnSubStart7150202")
end

function Quest71502:OnSubFinish7150202(arg1)
    print("OnSubFinish7150202")
end

return Quest71502
