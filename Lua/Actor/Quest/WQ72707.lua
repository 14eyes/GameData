require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72707 = class("Quest72707", QuestActorProxy)
Quest72707.defaultAlias = "Quest72707"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72707:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72707:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7270701"] = self.OnSubStart7270701}
end

function Quest72707:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7270701"] = self.OnSubFinish7270701}
end

function Quest72707:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7270701"] = self.OnSubFailed7270701}
end

function Quest72707:Start()
    print("Start")
end

function Quest72707:OnDestroy()
    print("OnDestroy")
end

function Quest72707:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72707:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72707:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72707:OnSubStart7270701(arg1)
    print("OnSubStart7270701")
end

function Quest72707:OnSubFinish7270701(arg1)
    print("OnSubFinish7270701")
end

function Quest72707:OnSubFailed7270701(arg1)
    print("OnSubFailed7270701")
end

return Quest72707
