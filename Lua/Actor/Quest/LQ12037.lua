require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12037 = class("Quest12037", QuestActorProxy)
Quest12037.defaultAlias = "Quest12037"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1203701"] = self.OnSubStart1203701,
        ["1203702"] = self.OnSubStart1203702,
        ["1203703"] = self.OnSubStart1203703,
        ["1203704"] = self.OnSubStart1203704,
        ["1203705"] = self.OnSubStart1203705,
        ["1203706"] = self.OnSubStart1203706
    }
end

function Quest12037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1203701"] = self.OnSubFinish1203701,
        ["1203702"] = self.OnSubFinish1203702,
        ["1203703"] = self.OnSubFinish1203703,
        ["1203704"] = self.OnSubFinish1203704,
        ["1203705"] = self.OnSubFinish1203705,
        ["1203706"] = self.OnSubFinish1203706
    }
end

function Quest12037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1203703"] = self.OnSubFailed1203703}
end

function Quest12037:Start()
    print("Start")
end

function Quest12037:OnDestroy()
    print("OnDestroy")
end

function Quest12037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12037:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12589Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12590Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12592Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12591Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12632Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12633Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12634Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 1064)
    self:SafeDestroyQuestNpc(npcs.Npc3054Data.alias, 1064)
    actorMgr:DestroyEntityActor("Q12037Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q12037Trigger1", 1064, false)
    actorMgr:DestroyEntityActor("Q12037Trigger2", 3, false)
end

function Quest12037:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12037:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest12037:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest12037:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest12037:OnSubStart1203701(arg1)
    print("OnSubStart1203701")
    actorMgr:CreateActorWithPos("Q12037Trigger", "Actor/Gadget/Q12037Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1203701").pos, sceneData:GetDummyPoint(3, "guide_Q1203701").rot, true, false, 3)
end

function Quest12037:OnSubFinish1203701(arg1)
    print("OnSubFinish1203701")
    self:ActorDestroy("Q12037Trigger")
end

function Quest12037:OnSubStart1203702(arg1)
    print("OnSubStart1203702")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12589Data.id, 1, npcs.Npc12589Data.alias)
end

function Quest12037:OnSubFinish1203702(arg1)
    print("OnSubFinish1203702")
    self:NpcDestroy(npcs.Npc12589Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest12037:OnSubStart1203703(arg1)
    print("OnSubStart1203703")
end

function Quest12037:OnSubFinish1203703(arg1)
    print("OnSubFinish1203703")
end

function Quest12037:OnSubFailed1203703(arg1)
    print("OnSubFailed1203703")
    self:ClearNarratorTask()
end

function Quest12037:OnSubStart1203704(arg1)
    print("OnSubStart1203704")
    self:NpcCreate(arg1, npcs.Npc12589Data.id, 1)
    actorMgr:CreateActorWithPos("Q12037Trigger2", "Actor/Gadget/Q12037Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1203703").pos, sceneData:GetDummyPoint(3, "guide_Q1203703").rot, true, false, 3)
end

function Quest12037:OnSubFinish1203704(arg1)
    print("OnSubFinish1203704")
    self:NpcDestroy(npcs.Npc12589Data.alias, 3)
    self:ActorDestroy("Q12037Trigger2")
end

function Quest12037:OnSubStart1203705(arg1)
    print("OnSubStart1203705")
    self:NpcCreate(arg1, npcs.Npc12590Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12590Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12592Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12592Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12591Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12591Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12632Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12632Data.alias):DoFreeStyle(1130, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12633Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12633Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12634Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc12634Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CallDelay(0.5, function(arg1)
        arg1:CreateSpeechBubbleTask(npcs.Npc12591Data.id, 1017125910, 0, true, 10, 12)
        arg1:CreateSpeechBubbleTask(npcs.Npc12592Data.id, 1017125920, 0, true, 10, 12)
        arg1:CreateSpeechBubbleTask(npcs.Npc12632Data.id, 1017126320, 0, true, 10, 12)
        arg1:CreateSpeechBubbleTask(npcs.Npc12633Data.id, 1017126330, 0, true, 10, 12)
        arg1:CreateSpeechBubbleTask(npcs.Npc12634Data.id, 1017126340, 0, true, 10, 12)
        arg1:GetQuestNpcActor(npcs.Npc12592Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12591Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12632Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12633Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12634Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest12037:OnSubFinish1203705(arg1)
    print("OnSubFinish1203705")
end

function Quest12037:OnSubStart1203706(arg1)
    print("OnSubStart1203706")
    self:GetQuestNpcActor(npcs.Npc12590Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12592Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12591Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12632Data.alias):DoFreeStyle(1130, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12633Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12634Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc1032Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc3054Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc3054Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q12037Trigger1", "Actor/Gadget/Q12037Trigger1", 70900002, 0, sceneData:GetDummyPoint(1064, "Q1203307_N10000005").pos, sceneData:GetDummyPoint(1064, "Q1203307_N10000005").rot, true, false, 1064)
    self:NotifyTo(npcs.Npc3057Data.alias, 1, true)
    self:CallDelay(0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12592Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12591Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12632Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12633Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12634Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest12037:OnSubFinish1203706(arg1)
    print("OnSubFinish1203706")
    self:NpcDestroy(npcs.Npc12590Data.alias, 3)
    self:NpcDestroy(npcs.Npc12592Data.alias, 3)
    self:NpcDestroy(npcs.Npc12591Data.alias, 3)
    self:NpcDestroy(npcs.Npc12632Data.alias, 3)
    self:NpcDestroy(npcs.Npc12633Data.alias, 3)
    self:NpcDestroy(npcs.Npc12634Data.alias, 3)
    self:NpcDestroy(npcs.Npc1032Data.alias, 1064)
    self:NpcDestroy(npcs.Npc3054Data.alias, 1064)
    self:ActorDestroy("Q12037Trigger1")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)

    self:ClearSpeechBubbleTask()
    self:GetQuestNpcActor(npcs.Npc12592Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12591Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12632Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12633Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12634Data.alias):DisableInteeHeadCtrl(false)
end

return Quest12037
