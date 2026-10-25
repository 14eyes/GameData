require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40150 = class("Quest40150", QuestActorProxy)
Quest40150.defaultAlias = "Quest40150"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40150:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40150:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4015001"] = self.OnSubStart4015001}
end

function Quest40150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4015001"] = self.OnSubFinish4015001}
end

function Quest40150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40150:Start()
    print("Start")
end

function Quest40150:OnDestroy()
    print("OnDestroy")
end

function Quest40150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40150:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40150:OnSubStart4015001(arg1)
    print("OnSubStart4015001")
    actorUtils.FinishQuestID(false, 4015001)
end

function Quest40150:OnSubFinish4015001(arg1)
    print("OnSubFinish4015001")
end

return Quest40150
