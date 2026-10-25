require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70043 = class("Quest70043", QuestActorProxy)
Quest70043.defaultAlias = "Quest70043"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70043:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70043:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7004301"] = self.OnSubStart7004301}
end

function Quest70043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7004301"] = self.OnSubFinish7004301}
end

function Quest70043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70043:Start()
    print("Start")
end

function Quest70043:OnDestroy()
    print("OnDestroy")
end

function Quest70043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70043:OnSubStart7004301(arg1)
    print("OnSubStart7004301")
    actorUtils.FinishQuestID(false, 7004301)
end

function Quest70043:OnSubFinish7004301(arg1)
    print("OnSubFinish7004301")
end

return Quest70043
