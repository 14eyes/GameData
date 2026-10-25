require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79017 = class("Quest79017", QuestActorProxy)
Quest79017.defaultAlias = "Quest79017"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79017:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7901701"] = self.OnSubStart7901701}
end

function Quest79017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7901701"] = self.OnSubFinish7901701}
end

function Quest79017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7901701"] = self.OnSubFailed7901701}
end

function Quest79017:Start()
    print("Start")
end

function Quest79017:OnDestroy()
    print("OnDestroy")
end

function Quest79017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79017:OnSubStart7901701(arg1)
    print("OnSubStart7901701")
end

function Quest79017:OnSubFinish7901701(arg1)
    print("OnSubFinish7901701")
    self:ShowTutorialDialog(817)
end

function Quest79017:OnSubFailed7901701(arg1)
    print("OnSubFailed7901701")
end

return Quest79017
