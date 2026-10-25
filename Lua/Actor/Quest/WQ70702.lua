require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70702 = class("Quest70702", QuestActorProxy)
Quest70702.defaultAlias = "Quest70702"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70702:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70702:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070201"] = self.OnSubStart7070201, ["7070202"] = self.OnSubStart7070202}
end

function Quest70702:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070201"] = self.OnSubFinish7070201, ["7070202"] = self.OnSubFinish7070202}
end

function Quest70702:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070201"] = self.OnSubFailed7070201, ["7070202"] = self.OnSubFailed7070202}
end

function Quest70702:Start()
    print("Start")
end

function Quest70702:OnDestroy()
    print("OnDestroy")
end

function Quest70702:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70702:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70702:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1529", 0, true)
end

function Quest70702:OnSubStart7070201(arg1)
    print("OnSubStart7070201")
    self:NotifyTo("Npc1529", 2, true)
end

function Quest70702:OnSubFinish7070201(arg1)
    print("OnSubFinish7070201")
end

function Quest70702:OnSubFailed7070201(arg1)
    print("OnSubFailed7070201")
end

function Quest70702:OnSubStart7070202(arg1)
    print("OnSubStart7070202")
    self:NotifyTo("Npc1529", 2, true)
end

function Quest70702:OnSubFinish7070202(arg1)
    print("OnSubFinish7070202")
    self:NotifyTo("Npc1529", 0, true)
end

function Quest70702:OnSubFailed7070202(arg1)
    print("OnSubFailed7070202")
end

return Quest70702
