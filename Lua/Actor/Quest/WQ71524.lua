require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71524 = class("Quest71524", QuestActorProxy)
Quest71524.defaultAlias = "Quest71524"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71524:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71524:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7152401"] = self.OnSubStart7152401}
end

function Quest71524:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7152401"] = self.OnSubFinish7152401}
end

function Quest71524:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71524:Start()
    print("Start")
end

function Quest71524:OnDestroy()
    print("OnDestroy")
end

function Quest71524:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71524:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71524:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71524:OnSubStart7152401(arg1)
    print("OnSubStart7152401")
    actorUtils.FinishQuestID(false, 7152401)
end

function Quest71524:OnSubFinish7152401(arg1)
    print("OnSubFinish7152401")
end

return Quest71524
