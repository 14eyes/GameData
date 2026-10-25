require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70707 = class("Quest70707", QuestActorProxy)
Quest70707.defaultAlias = "Quest70707"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70707:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70707:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070701"] = self.OnSubStart7070701, ["7070702"] = self.OnSubStart7070702}
end

function Quest70707:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070701"] = self.OnSubFinish7070701, ["7070702"] = self.OnSubFinish7070702}
end

function Quest70707:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070701"] = self.OnSubFailed7070701, ["7070702"] = self.OnSubFailed7070702}
end

function Quest70707:Start()
    print("Start")
end

function Quest70707:OnDestroy()
    print("OnDestroy")
end

function Quest70707:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70707:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70707:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1643", 0, true)
end

function Quest70707:OnSubStart7070701(arg1)
    print("OnSubStart7070701")
    self:NotifyTo("Npc1643", 2, true)
end

function Quest70707:OnSubFinish7070701(arg1)
    print("OnSubFinish7070701")
end

function Quest70707:OnSubFailed7070701(arg1)
    print("OnSubFailed7070701")
end

function Quest70707:OnSubStart7070702(arg1)
    print("OnSubStart7070702")
    self:NotifyTo("Npc1643", 2, true)
end

function Quest70707:OnSubFinish7070702(arg1)
    print("OnSubFinish7070702")
    self:NotifyTo("Npc1643", 0, true)
end

function Quest70707:OnSubFailed7070702(arg1)
    print("OnSubFailed7070702")
end

return Quest70707
