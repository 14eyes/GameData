require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19049 = class("Quest19049", QuestActorProxy)
Quest19049.defaultAlias = "Quest19049"
local clientData
local mainID
local actorAlias
local subIDs

function Quest19049:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest19049:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1904901"] = self.OnSubStart1904901}
end

function Quest19049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1904901"] = self.OnSubFinish1904901}
end

function Quest19049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19049:Start()
    print("Start")
end

function Quest19049:OnDestroy()
    print("OnDestroy")
end

function Quest19049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19049:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19049:OnSubStart1904901(arg1)
    print("OnSubStart1904901")
end

function Quest19049:OnSubFinish1904901(arg1)
    print("OnSubFinish1904901")
end

return Quest19049
