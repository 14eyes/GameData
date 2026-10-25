require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19099 = class("Quest19099", QuestActorProxy)
Quest19099.defaultAlias = "Quest19099"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest19099:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest19099:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1909901"] = self.OnSubStart1909901}
end

function Quest19099:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1909901"] = self.OnSubFinish1909901}
end

function Quest19099:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19099:Start()
    print("Start")
end

function Quest19099:OnDestroy()
    print("OnDestroy")
end

function Quest19099:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19099:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19099:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19099:OnSubStart1909901(arg1)
    print("OnSubStart1909901")
    actorUtils.FinishQuestID(false, 1909901)
end

function Quest19099:OnSubFinish1909901(arg1)
    print("OnSubFinish1909901")
end

return Quest19099
