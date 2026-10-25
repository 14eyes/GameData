require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70051 = class("Quest70051", QuestActorProxy)
Quest70051.defaultAlias = "Quest70051"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70051:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70051:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7005101"] = self.OnSubStart7005101}
end

function Quest70051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7005101"] = self.OnSubFinish7005101}
end

function Quest70051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70051:Start()
    print("Start")
end

function Quest70051:OnDestroy()
    print("OnDestroy")
end

function Quest70051:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70051:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70051:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70051:OnSubStart7005101(arg1)
    print("OnSubStart7005101")
    actorUtils.FinishQuestID(false, 7005101)
end

function Quest70051:OnSubFinish7005101(arg1)
    print("OnSubFinish7005101")
end

return Quest70051
