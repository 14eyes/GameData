require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73692 = class("Quest73692", QuestActorProxy)
Quest73692.defaultAlias = "Quest73692"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73692:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73692:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7369201"] = self.OnSubStart7369201}
end

function Quest73692:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7369201"] = self.OnSubFinish7369201}
end

function Quest73692:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73692:Start()
    print("Start")
end

function Quest73692:OnDestroy()
    print("OnDestroy")
end

function Quest73692:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73692:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73692:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73692:OnSubStart7369201(arg1)
    print("OnSubStart7369201")
end

function Quest73692:OnSubFinish7369201(arg1)
    print("OnSubFinish7369201")
end

return Quest73692
