require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71707 = class("Quest71707", QuestActorProxy)
Quest71707.defaultAlias = "Quest71707"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71707:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71707:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170701"] = self.OnSubStart7170701, ["7170702"] = self.OnSubStart7170702}
end

function Quest71707:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170701"] = self.OnSubFinish7170701, ["7170702"] = self.OnSubFinish7170702}
end

function Quest71707:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170701"] = self.OnSubFailed7170701, ["7170702"] = self.OnSubFailed7170702}
end

function Quest71707:Start()
    print("Start")
end

function Quest71707:OnDestroy()
    print("OnDestroy")
end

function Quest71707:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71707:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71707:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2204", 0, true)
end

function Quest71707:OnSubStart7170701(arg1)
    print("OnSubStart7170701")
    self:NotifyTo("Npc2204", 2, true)
end

function Quest71707:OnSubFinish7170701(arg1)
    print("OnSubFinish7170701")
end

function Quest71707:OnSubFailed7170701(arg1)
    print("OnSubFailed7170701")
end

function Quest71707:OnSubStart7170702(arg1)
    print("OnSubStart7170702")
    self:NotifyTo("Npc2204", 2, true)
end

function Quest71707:OnSubFinish7170702(arg1)
    print("OnSubFinish7170702")
    self:NotifyTo("Npc2204", 0, true)
end

function Quest71707:OnSubFailed7170702(arg1)
    print("OnSubFailed7170702")
end

return Quest71707
