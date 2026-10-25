require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70025 = class("Quest70025", QuestActorProxy)
Quest70025.defaultAlias = "Quest70025"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70025:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7002501"] = self.OnSubStart7002501, ["7002502"] = self.OnSubStart7002502}
end

function Quest70025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7002501"] = self.OnSubFinish7002501, ["7002502"] = self.OnSubFinish7002502}
end

function Quest70025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7002501"] = self.OnSubFailed7002501, ["7002502"] = self.OnSubFailed7002502}
end

function Quest70025:Start()
    print("Start")
end

function Quest70025:OnDestroy()
    print("OnDestroy")
end

function Quest70025:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 3)
    self:LightNotifyTo("Npc1565", 0, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70025:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 3)
    self:LightNotifyTo("Npc1565", 0, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 3)
    self:LightNotifyTo("Npc1565", 0, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70025:OnSubStart7002501(arg1)
    print("OnSubStart7002501")
    self:CreateQuestNpc(arg1, npcs.Npc151201Data.id, 1)
    self:NotifyTo("NPC1512", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest70025:OnSubFinish7002501(arg1)
    print("OnSubFinish7002501")
    self:ShowBlackScreen(0.5, 1, 0.5)
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
end

function Quest70025:OnSubFailed7002501(arg1)
    print("OnSubFailed7002501")
end

function Quest70025:OnSubStart7002502(arg1)
    print("OnSubStart7002502")
    self:CreateQuestNpc(arg1, npcs.Npc156501Data.id, 1)
    self:NotifyTo("Npc1565", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest70025:OnSubFinish7002502(arg1)
    print("OnSubFinish7002502")
    self:SafeDestroyQuestNpc(npcs.Npc156501Data.alias, 1004)
    self:LightNotifyTo("Npc1565", 0, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70025:OnSubFailed7002502(arg1)
    print("OnSubFailed7002502")
end

return Quest70025
