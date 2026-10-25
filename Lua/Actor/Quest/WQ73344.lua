require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73344 = class("Quest73344", QuestActorProxy)
Quest73344.defaultAlias = "Quest73344"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73344:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73344:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7334401"] = self.OnSubStart7334401}
end

function Quest73344:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7334401"] = self.OnSubFinish7334401}
end

function Quest73344:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73344:Start()
    print("Start")
end

function Quest73344:OnDestroy()
    print("OnDestroy")
end

function Quest73344:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73344:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73344:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73344:OnSubStart7334401(arg1)
    print("OnSubStart7334401")
    actorUtils.FinishQuestID(false, 7334401)
end

function Quest73344:OnSubFinish7334401(arg1)
    print("OnSubFinish7334401")
end

return Quest73344
