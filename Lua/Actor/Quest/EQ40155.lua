require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40155 = class("Quest40155", QuestActorProxy)
Quest40155.defaultAlias = "Quest40155"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40155:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40155:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4015501"] = self.OnSubStart4015501}
end

function Quest40155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4015501"] = self.OnSubFinish4015501}
end

function Quest40155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40155:Start()
    print("Start")
end

function Quest40155:OnDestroy()
    print("OnDestroy")
end

function Quest40155:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40155:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40155:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40155:OnSubStart4015501(arg1)
    print("OnSubStart4015501")
    actorUtils.FinishQuestID(false, 4015501)
end

function Quest40155:OnSubFinish4015501(arg1)
    print("OnSubFinish4015501")
end

return Quest40155
