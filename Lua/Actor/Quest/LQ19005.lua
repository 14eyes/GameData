require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19005 = class("Quest19005", QuestActorProxy)
Quest19005.defaultAlias = "Quest19005"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900501"] = self.OnSubStart1900501,
        ["1900502"] = self.OnSubStart1900502,
        ["1900503"] = self.OnSubStart1900503,
        ["1900504"] = self.OnSubStart1900504,
        ["1900505"] = self.OnSubStart1900505
    }
end

function Quest19005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900501"] = self.OnSubFinish1900501,
        ["1900502"] = self.OnSubFinish1900502,
        ["1900503"] = self.OnSubFinish1900503,
        ["1900504"] = self.OnSubFinish1900504,
        ["1900505"] = self.OnSubFinish1900505
    }
end

function Quest19005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900501"] = self.OnSubFailed1900501,
        ["1900502"] = self.OnSubFailed1900502,
        ["1900503"] = self.OnSubFailed1900503,
        ["1900504"] = self.OnSubFailed1900504,
        ["1900505"] = self.OnSubFailed1900505
    }
end

function Quest19005:Start()
    print("Start")
end

function Quest19005:OnDestroy()
    print("OnDestroy")
end

function Quest19005:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10801Data.alias, 3)
    self:NotifyTo(npcs.Npc1606Data.alias, 0, true)
    actorMgr:DestroyEntityActor(datas.Q19005Trigger1900504_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19005Trigger1900501_.alias, 3, false)
end

function Quest19005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19005:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10801Data.alias, 3)
    self:NotifyTo(npcs.Npc1606Data.alias, 0, true)
    actorMgr:DestroyEntityActor(datas.Q19005Trigger1900504_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19005Trigger1900501_.alias, 3, false)
end

function Quest19005:Great()
    print("Great")
end

function Quest19005:OnSubStart1900501(arg1)
    print("OnSubStart1900501")
    self:CreateQuestNpc(arg1, npcs.Npc10801Data.id, 1)
    self:NotifyTo(npcs.Npc1606Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc10801Data.alias):DoFreeStyle(4190, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q19005Trigger1900501_.alias, datas.Q19005Trigger1900501_.script, datas.Q19005Trigger1900501_.id, 0, datas.Q19005Trigger1900501_.point.pos, datas.Q19005Trigger1900501_.point.rot, true, false, 3)
end

function Quest19005:OnSubFinish1900501(arg1)
    print("OnSubFinish1900501")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10801Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1270, true, nil, true, true)
    self:TryPauseCurAutoNarrator()
end

function Quest19005:OnSubFailed1900501(arg1)
    print("OnSubFailed1900501")
end

function Quest19005:OnSubStart1900502(arg1)
    print("OnSubStart1900502")
    self:NotifyTo(npcs.Npc1606Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900501)
end

function Quest19005:OnSubFinish1900502(arg1)
    print("OnSubFinish1900502")
    self:SafeDestroyQuestNpc(npcs.Npc10801Data.alias, 3)
end

function Quest19005:OnSubFailed1900502(arg1)
    print("OnSubFailed1900502")
end

function Quest19005:OnSubStart1900503(arg1)
    print("OnSubStart1900503")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:NotifyTo(npcs.Npc1606Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900502)
end

function Quest19005:OnSubFinish1900503(arg1)
    print("OnSubFinish1900503")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19005:OnSubFailed1900503(arg1)
    print("OnSubFailed1900503")
end

function Quest19005:OnSubStart1900504(arg1)
    print("OnSubStart1900504")
    self:NotifyTo(npcs.Npc1606Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q19005Trigger1900504_.alias, datas.Q19005Trigger1900504_.script, datas.Q19005Trigger1900504_.id, 0, datas.Q19005Trigger1900504_.point.pos, datas.Q19005Trigger1900504_.point.rot, true, false, 3)
end

function Quest19005:OnSubFinish1900504(arg1)
    print("OnSubFinish1900504")
end

function Quest19005:OnSubFailed1900504(arg1)
    print("OnSubFailed1900504")
end

function Quest19005:OnSubStart1900505(arg1)
    print("OnSubStart1900505")
    self:ShowBlackScreen(0.2, 1.5, 0.2, nil, nil, nil, "")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:NotifyTo(npcs.Npc1606Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900504)
    self:RequestInteraction(npcs.Coop_BarbaraData.alias)
end

function Quest19005:OnSubFinish1900505(arg1)
    print("OnSubFinish1900505")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19005:OnSubFailed1900505(arg1)
    print("OnSubFailed1900505")
end

return Quest19005
