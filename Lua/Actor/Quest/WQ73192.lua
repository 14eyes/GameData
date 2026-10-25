require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73192 = class("Quest73192", QuestActorProxy)
Quest73192.defaultAlias = "Quest73192"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73192:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73192:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7319201"] = self.OnSubStart7319201}
end

function Quest73192:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7319201"] = self.OnSubFinish7319201}
end

function Quest73192:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73192:Start()
    print("Start")
end

function Quest73192:OnDestroy()
    print("OnDestroy")
end

function Quest73192:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73192:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73192:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73192:OnSubStart7319201(arg1)
    print("OnSubStart7319201")
end

function Quest73192:OnSubFinish7319201(arg1)
    print("OnSubFinish7319201")
end

return Quest73192
