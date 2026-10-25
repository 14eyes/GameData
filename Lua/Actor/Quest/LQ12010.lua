require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12010 = class("Quest12010", QuestActorProxy)
Quest12010.defaultAlias = "Quest12010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1201001"] = self.OnSubStart1201001,
        ["1201002"] = self.OnSubStart1201002,
        ["1201003"] = self.OnSubStart1201003,
        ["1201004"] = self.OnSubStart1201004
    }
end

function Quest12010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1201001"] = self.OnSubFinish1201001,
        ["1201002"] = self.OnSubFinish1201002,
        ["1201003"] = self.OnSubFinish1201003,
        ["1201004"] = self.OnSubFinish1201004
    }
end

function Quest12010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1201001"] = self.OnSubFailed1201001,
        ["1201002"] = self.OnSubFailed1201002,
        ["1201003"] = self.OnSubFailed1201003,
        ["1201004"] = self.OnSubFailed1201004
    }
end

function Quest12010:Start()
    print("Start")
end

function Quest12010:OnDestroy()
    print("OnDestroy")
end

function Quest12010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12010:Narrator_1201001()
    print("Narrator_1201001")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201001)
end

function Quest12010:Narrator_1201002()
    print("Narrator_1201002")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201002)
end

function Quest12010:OnSubStart1201001(arg1)
    print("OnSubStart1201001")
    self:CreateQuestNpc(arg1, npcs.Npc12027Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12027Data.alias):DoFreeStyle(5010, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12028Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12028Data.alias):DoFreeStyle(5010, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12029Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12029Data.alias):DoFreeStyle(5010, true, nil, true, true, false)
end

function Quest12010:OnSubFinish1201001(arg1)
    print("OnSubFinish1201001")
end

function Quest12010:OnSubFailed1201001(arg1)
    print("OnSubFailed1201001")
end

function Quest12010:OnSubStart1201002(arg1)
    print("OnSubStart1201002")
    self:CreateQuestNpc(arg1, npcs.Npc12027Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12028Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12029Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 4)
    actorMgr:CreateActorWithPos(datas.Q12010Trigger_Beach.alias, datas.Q12010Trigger_Beach.script, datas.Q12010Trigger_Beach.id, 0, datas.Q12010Trigger_Beach.point.pos, datas.Q12010Trigger_Beach.point.rot, true, false, 3)
end

function Quest12010:OnSubFinish1201002(arg1)
    print("OnSubFinish1201002")
    self:SafeDestroyQuestNpc(npcs.Npc12027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12028Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    self:ActionSafeCall(self.Narrator_1201001)
end

function Quest12010:OnSubFailed1201002(arg1)
    print("OnSubFailed1201002")
end

function Quest12010:OnSubStart1201003(arg1)
    print("OnSubStart1201003")
    self:CreateQuestNpc(arg1, npcs.Npc3035Data.id, 3)
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12010:OnSubFinish1201003(arg1)
    print("OnSubFinish1201003")
end

function Quest12010:OnSubFailed1201003(arg1)
    print("OnSubFailed1201003")
end

function Quest12010:OnSubStart1201004(arg1)
    print("OnSubStart1201004")
    self:CreateQuestNpc(arg1, npcs.Npc12034Data.id, 3)
    self:NotifyTo(npcs.Npc3043Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
    self:TryPauseCurAutoNarrator()
end

function Quest12010:OnSubFinish1201004(arg1)
    print("OnSubFinish1201004")
    self:SafeDestroyQuestNpc(npcs.Npc3035Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12034Data.alias, 3)
    self:ActionSafeCall(self.Narrator_1201002)
    self:LightNotifyTo(npcs.Npc3043Data.alias, 0, true)
end

function Quest12010:OnSubFailed1201004(arg1)
    print("OnSubFailed1201004")
end

return Quest12010
