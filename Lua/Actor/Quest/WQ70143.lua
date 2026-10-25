require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70143 = class("Quest70143", QuestActorProxy)
Quest70143.defaultAlias = "Quest70143"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70143:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70143:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7014301"] = self.OnSubStart7014301}
end

function Quest70143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7014301"] = self.OnSubFinish7014301}
end

function Quest70143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7014301"] = self.OnSubFailed7014301}
end

function Quest70143:Start()
    print("Start")
end

function Quest70143:OnDestroy()
    print("OnDestroy")
end

function Quest70143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70143:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70143:OnSubStart7014301(arg1)
    print("OnSubStart7014301")
end

function Quest70143:OnSubFinish7014301(arg1)
    print("OnSubFinish7014301")
end

function Quest70143:OnSubFailed7014301(arg1)
    print("OnSubFailed7014301")
end

return Quest70143
