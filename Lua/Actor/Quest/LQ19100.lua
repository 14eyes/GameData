require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19100 = class("Quest19100", QuestActorProxy)
Quest19100.defaultAlias = "Quest19100"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest19100:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest19100:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1910001"] = self.OnSubStart1910001}
end

function Quest19100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1910001"] = self.OnSubFinish1910001}
end

function Quest19100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19100:Start()
    print("Start")
end

function Quest19100:OnDestroy()
    print("OnDestroy")
end

function Quest19100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19100:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19100:OnSubStart1910001(arg1)
    print("OnSubStart1910001")
    actorUtils.FinishQuestID(false, 1910001)
end

function Quest19100:OnSubFinish1910001(arg1)
    print("OnSubFinish1910001")
end

return Quest19100
