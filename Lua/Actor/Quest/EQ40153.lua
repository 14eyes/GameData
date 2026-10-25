require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40153 = class("Quest40153", QuestActorProxy)
Quest40153.defaultAlias = "Quest40153"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40153:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40153:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4015301"] = self.OnSubStart4015301}
end

function Quest40153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4015301"] = self.OnSubFinish4015301}
end

function Quest40153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40153:Start()
    print("Start")
end

function Quest40153:OnDestroy()
    print("OnDestroy")
end

function Quest40153:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40153:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40153:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40153:OnSubStart4015301(arg1)
    print("OnSubStart4015301")
    actorUtils.FinishQuestID(false, 4015301)
end

function Quest40153:OnSubFinish4015301(arg1)
    print("OnSubFinish4015301")
end

return Quest40153
