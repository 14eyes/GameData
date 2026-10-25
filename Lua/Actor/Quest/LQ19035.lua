require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19035 = class("Quest19035", QuestActorProxy)
Quest19035.defaultAlias = "Quest19035"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19035:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1903501"] = self.OnSubStart1903501}
end

function Quest19035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1903501"] = self.OnSubFinish1903501}
end

function Quest19035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1903501"] = self.OnSubFailed1903501}
end

function Quest19035:Start()
    print("Start")
end

function Quest19035:OnDestroy()
    print("OnDestroy")
end

function Quest19035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19035:OnSubStart1903501(arg1)
    print("OnSubStart1903501")
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903202)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19035:OnSubFinish1903501(arg1)
    print("OnSubFinish1903501")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19035:OnSubFailed1903501(arg1)
    print("OnSubFailed1903501")
end

return Quest19035
