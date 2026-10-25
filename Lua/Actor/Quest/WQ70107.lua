require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70107 = class("Quest70107", QuestActorProxy)
Quest70107.defaultAlias = "Quest70107"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70107:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70107:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7010701"] = self.OnSubStart7010701}
end

function Quest70107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7010701"] = self.OnSubFinish7010701}
end

function Quest70107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7010701"] = self.OnSubFailed7010701}
end

function Quest70107:Start()
    print("Start")
end

function Quest70107:OnDestroy()
    print("OnDestroy")
end

function Quest70107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70107:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70107:OnSubStart7010701(arg1)
    print("OnSubStart7010701")
end

function Quest70107:OnSubFinish7010701(arg1)
    print("OnSubFinish7010701")
end

function Quest70107:OnSubFailed7010701(arg1)
    print("OnSubFailed7010701")
end

return Quest70107
