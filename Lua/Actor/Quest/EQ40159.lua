require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40159 = class("Quest40159", QuestActorProxy)
Quest40159.defaultAlias = "Quest40159"
local clientData
local this
local mainID
local actorAlias

function Quest40159:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40159:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4015901"] = self.OnSubStart4015901}
end

function Quest40159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4015901"] = self.OnSubFinish4015901}
end

function Quest40159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4015901"] = self.OnSubFailed4015901}
end

function Quest40159:Start()
    print("Start")
end

function Quest40159:OnDestroy()
    print("OnDestroy")
end

function Quest40159:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40159:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40159:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40159:OnSubStart4015901(arg1)
    print("OnSubStart4015901")
    actorUtils.FinishQuestID(false, 4015901)
end

function Quest40159:OnSubFinish4015901(arg1)
    print("OnSubFinish4015901")
end

function Quest40159:OnSubFailed4015901(arg1)
    print("OnSubFailed4015901")
end

return Quest40159
