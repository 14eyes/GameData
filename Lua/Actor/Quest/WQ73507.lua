require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73507 = class("Quest73507", QuestActorProxy)
Quest73507.defaultAlias = "Quest73507"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73507:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73507:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7350701"] = self.OnSubStart7350701,
        ["7350706"] = self.OnSubStart7350706,
        ["7350702"] = self.OnSubStart7350702,
        ["7350704"] = self.OnSubStart7350704,
        ["7350703"] = self.OnSubStart7350703,
        ["7350705"] = self.OnSubStart7350705
    }
end

function Quest73507:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7350701"] = self.OnSubFinish7350701,
        ["7350706"] = self.OnSubFinish7350706,
        ["7350702"] = self.OnSubFinish7350702,
        ["7350704"] = self.OnSubFinish7350704,
        ["7350703"] = self.OnSubFinish7350703,
        ["7350705"] = self.OnSubFinish7350705
    }
end

function Quest73507:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73507:Start()
    print("Start")
end

function Quest73507:OnDestroy()
    print("OnDestroy")
end

function Quest73507:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73507:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73507:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30318Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30319Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30320Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30321Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30318Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30319Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30320Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30321Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q73507Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q73507Trigger1", 3, false)
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73507:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73507:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73507:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end
end

function Quest73507:OnSubStart7350701(arg1)
    print("OnSubStart7350701")
    this:CreateQuestNpc(arg1, npcs.Npc30318Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc30318Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc30319Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc30319Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc30320Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc30321Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73507Trigger", "Actor/Gadget/Q73507Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q73507_N30319").pos, sceneData:GetDummyPoint(3, "Q73507_N30319").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc30318Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30319Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest73507:OnSubFinish7350701(arg1)
    print("OnSubFinish7350701")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowFungusV2DungeonEntryPage()
        this:ClearNarratorTask()
    end)
end

function Quest73507:OnSubStart7350706(arg1)
    print("OnSubStart7350706")
    actorMgr:CreateActorWithPos("Q73507Trigger1", "Actor/Gadget/Q73507Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7350705_N1005").pos, sceneData:GetDummyPoint(3, "Q7350705_N1005").rot, true, false, 3)
end

function Quest73507:OnSubFinish7350706(arg1)
    print("OnSubFinish7350706")
end

function Quest73507:OnSubStart7350702(arg1)
    print("OnSubStart7350702")
    this:CallDelay(0.2, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc30320Data.id, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc30320Data.alias, 1, true)
        this:CreateQuestNpc(arg1, npcs.Npc30321Data.id, 2)
        this:DailyNpcSafeHideSelf(npcs.Npc30321Data.alias, 1, true)
    end)
end

function Quest73507:OnSubFinish7350702(arg1)
    print("OnSubFinish7350702")
end

function Quest73507:OnSubStart7350704(arg1)
    print("OnSubStart7350704")
    this:DailyNpcSafeHideSelf(npcs.Npc30320Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc30321Data.alias, 1, true)
end

function Quest73507:OnSubFinish7350704(arg1)
    print("OnSubFinish7350704")
end

function Quest73507:OnSubStart7350703(arg1)
    print("OnSubStart7350703")
    this:DailyNpcSafeHideSelf(npcs.Npc30320Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc30321Data.alias, 1, true)
end

function Quest73507:OnSubFinish7350703(arg1)
    print("OnSubFinish7350703")
end

function Quest73507:OnSubStart7350705(arg1)
    print("OnSubStart7350705")
    this:LightNotifyTo(npcs.Npc30318Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30319Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc30320Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc30321Data.alias, 1, true)
end

function Quest73507:OnSubFinish7350705(arg1)
    print("OnSubFinish7350705")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ActorDestroy("Q73507Trigger1")
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        this:SafeDestroyQuestNpc(npcs.Npc30320Data.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc30321Data.alias, 3)
        this:LightNotifyTo("30321", 0, true)
        this:LightNotifyTo("30320", 0, true)
        globalActor:ResumePaimonInProfilePage({3})
        this:SafeDestroyQuestNpc(npcs.Npc30318Data.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc30319Data.alias, 3)
    end, nil, nil, 0, false, true)
end

return Quest73507
