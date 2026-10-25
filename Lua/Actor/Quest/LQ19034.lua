require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19034 = class("Quest19034", QuestActorProxy)
Quest19034.defaultAlias = "Quest19034"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19034:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19034:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1903401"] = self.OnSubStart1903401, ["1903402"] = self.OnSubStart1903402}
end

function Quest19034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1903401"] = self.OnSubFinish1903401, ["1903402"] = self.OnSubFinish1903402}
end

function Quest19034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1903401"] = self.OnSubFailed1903401, ["1903402"] = self.OnSubFailed1903402}
end

function Quest19034:Start()
    print("Start")
end

function Quest19034:OnDestroy()
    print("OnDestroy")
end

function Quest19034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19034:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19034:OnSubStart1903401(arg1)
    print("OnSubStart1903401")
    self:CreateQuestNpc(arg1, npcs.Npc10918Data.id, 1)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19034:OnSubFinish1903401(arg1)
    print("OnSubFinish1903401")
    self:SafeDestroyQuestNpc(npcs.Npc10918Data.alias, 3)
end

function Quest19034:OnSubFailed1903401(arg1)
    print("OnSubFailed1903401")
end

function Quest19034:OnSubStart1903402(arg1)
    print("OnSubStart1903402")
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903110)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19034:OnSubFinish1903402(arg1)
    print("OnSubFinish1903402")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19034:OnSubFailed1903402(arg1)
    print("OnSubFailed1903402")
end

return Quest19034
