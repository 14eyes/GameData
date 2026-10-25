require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13017 = class("Quest13017", QuestActorProxy)
Quest13017.defaultAlias = "Quest13017"
local clientData
local mainID
local actorAlias
local subIDs

function Quest13017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest13017:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1301701"] = self.OnSubStart1301701}
end

function Quest13017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1301701"] = self.OnSubFinish1301701}
end

function Quest13017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13017:Start()
    print("Start")
end

function Quest13017:OnDestroy()
    print("OnDestroy")
end

function Quest13017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13017:OnSubStart1301701(arg1)
    print("OnSubStart1301701")
end

function Quest13017:OnSubFinish1301701(arg1)
    print("OnSubFinish1301701")
end

return Quest13017
