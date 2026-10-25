require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70044 = class("Quest70044", QuestActorProxy)
Quest70044.defaultAlias = "Quest70044"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70044:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70044:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7004401"] = self.OnSubStart7004401}
end

function Quest70044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7004401"] = self.OnSubFinish7004401}
end

function Quest70044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70044:Start()
    print("Start")
end

function Quest70044:OnDestroy()
    print("OnDestroy")
end

function Quest70044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70044:OnSubStart7004401(arg1)
    print("OnSubStart7004401")
    actorUtils.FinishQuestID(false, 7004401)
end

function Quest70044:OnSubFinish7004401(arg1)
    print("OnSubFinish7004401")
end

return Quest70044
