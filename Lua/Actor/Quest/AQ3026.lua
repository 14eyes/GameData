require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3026 = class("Quest3026", QuestActorProxy)
Quest3026.defaultAlias = "Quest3026"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3026:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302602"] = self.OnSubStart302602,
        ["302601"] = self.OnSubStart302601,
        ["302618"] = self.OnSubStart302618,
        ["302603"] = self.OnSubStart302603,
        ["302619"] = self.OnSubStart302619,
        ["302604"] = self.OnSubStart302604,
        ["302620"] = self.OnSubStart302620,
        ["302621"] = self.OnSubStart302621,
        ["302605"] = self.OnSubStart302605,
        ["302606"] = self.OnSubStart302606,
        ["302607"] = self.OnSubStart302607,
        ["302608"] = self.OnSubStart302608,
        ["302611"] = self.OnSubStart302611,
        ["302612"] = self.OnSubStart302612,
        ["302613"] = self.OnSubStart302613,
        ["302614"] = self.OnSubStart302614,
        ["302615"] = self.OnSubStart302615,
        ["302616"] = self.OnSubStart302616,
        ["302617"] = self.OnSubStart302617
    }
end

function Quest3026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302602"] = self.OnSubFinish302602,
        ["302601"] = self.OnSubFinish302601,
        ["302618"] = self.OnSubFinish302618,
        ["302603"] = self.OnSubFinish302603,
        ["302619"] = self.OnSubFinish302619,
        ["302604"] = self.OnSubFinish302604,
        ["302620"] = self.OnSubFinish302620,
        ["302621"] = self.OnSubFinish302621,
        ["302605"] = self.OnSubFinish302605,
        ["302606"] = self.OnSubFinish302606,
        ["302607"] = self.OnSubFinish302607,
        ["302608"] = self.OnSubFinish302608,
        ["302611"] = self.OnSubFinish302611,
        ["302612"] = self.OnSubFinish302612,
        ["302613"] = self.OnSubFinish302613,
        ["302614"] = self.OnSubFinish302614,
        ["302615"] = self.OnSubFinish302615,
        ["302616"] = self.OnSubFinish302616,
        ["302617"] = self.OnSubFinish302617
    }
end

function Quest3026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3026:Start()
    print("Start")
end

function Quest3026:OnDestroy()
    print("OnDestroy")
end

function Quest3026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12659Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
    this:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4428Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4428Data.alias, 0, true)
end

function Quest3026:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest3026:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3026:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3026:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest3026:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 302601 then
        actorUtils.FinishQuestID(false, 302601)
    end
end

function Quest3026:OnSubStart302602(arg1)
    print("OnSubStart302602")
    this:NpcCreateWithTrigger(npcs.Npc1051Data.id, 302602, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
end

function Quest3026:OnSubFinish302602(arg1)
    print("OnSubFinish302602")
end

function Quest3026:OnSubStart302601(arg1)
    print("OnSubStart302601")
end

function Quest3026:OnSubFinish302601(arg1)
    print("OnSubFinish302601")
end

function Quest3026:OnSubStart302618(arg1)
    print("OnSubStart302618")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1051Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302618_Trigger", 302618, npcs.Npc1050Data.id, 2, 12)
end

function Quest3026:OnSubFinish302618(arg1)
    print("OnSubFinish302618")
end

function Quest3026:OnSubStart302603(arg1)
    print("OnSubStart302603")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1050Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 9)
    this:NpcCreateWithTrigger(npcs.Npc4060Data.id, 302603, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc4060Data.alias):DoFreeStyle(1171, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302603(arg1)
    print("OnSubFinish302603")
end

function Quest3026:OnSubStart302619(arg1)
    print("OnSubStart302619")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1054Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4057Data.id, 8)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4060Data.id, 9)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302619_Trigger", 302619, npcs.Npc12805Data.id, 10, 15)
    self:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12805Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302619(arg1)
    print("OnSubFinish302619")
    this:SafeDestroyQuestNpc(npcs.Npc12805Data.alias, 3)
end

function Quest3026:OnSubStart302604(arg1)
    print("OnSubStart302604")
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 7)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302604_Trigger", 302604, npcs.Npc1053Data.id, 1, 20)
    self:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8066)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302604(arg1)
    print("OnSubFinish302604")
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
end

function Quest3026:OnSubStart302620(arg1)
    print("OnSubStart302620")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302620(arg1)
    print("OnSubFinish302620")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest3026:OnSubStart302621(arg1)
    print("OnSubStart302621")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1053Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
end

function Quest3026:OnSubFinish302621(arg1)
    print("OnSubFinish302621")
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 10)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data01.id, 12)
    this:GetQuestNpcActor(npcs.Npc1053Data01.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest3026:OnSubStart302605(arg1)
    print("OnSubStart302605")
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
    this:CreateQuestNpcWithTriggerBlack("Q302605_Trigger", 302605, npcs.Npc1052Data.id, 2, 10, 1)
    if this:GetSubQuestState(302621) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 7)
        this:CreateQuestNpc(arg1, npcs.Npc1053Data01.id, 9)
        this:GetQuestNpcActor(npcs.Npc1053Data01.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    else
        this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
    end

    self:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3026:OnSubFinish302605(arg1)
    print("OnSubFinish302605")
end

function Quest3026:OnSubStart302606(arg1)
    print("OnSubStart302606")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1052Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13013Data.id, 2)
    this:NpcCreateWithTrigger(npcs.Npc1058Data.id, 302606, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data01.id, 8)
    this:GetQuestNpcActor(npcs.Npc1053Data01.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc13013Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3026:OnSubFinish302606(arg1)
    print("OnSubFinish302606")
end

function Quest3026:OnSubStart302607(arg1)
    print("OnSubStart302607")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1058Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12659Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12709Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1053Data01.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4300Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12659Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12709Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc13013Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3026:OnSubFinish302607(arg1)
    print("OnSubFinish302607")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_302601, nil, 3026)
    end)

    self:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12659Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12709Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc13013Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc1054Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc1052Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc13013Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc1058Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc12659Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4057Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4060Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data01.alias, 1073)
end

function Quest3026:OnSubStart302608(arg1)
    print("OnSubStart302608")
    this:NpcCreateWithTrigger(npcs.Npc1054Data.id, 302608, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13013Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1058Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4049Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4055Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4061Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4062Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc4300Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4391Data.alias, 1, true)
end

function Quest3026:OnSubFinish302608(arg1)
    print("OnSubFinish302608")
end

function Quest3026:OnSubStart302611(arg1)
    print("OnSubStart302611")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1054Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1053Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1052Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13013Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1058Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4049Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4055Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4061Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4391Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302611(arg1)
    print("OnSubFinish302611")
end

function Quest3026:OnSubStart302612(arg1)
    print("OnSubStart302612")
    this:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4049Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4055Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4061Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4391Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302612(arg1)
    print("OnSubFinish302612")
end

function Quest3026:OnSubStart302613(arg1)
    print("OnSubStart302613")
    this:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4049Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4055Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4061Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4391Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302613(arg1)
    print("OnSubFinish302613")
end

function Quest3026:OnSubStart302614(arg1)
    print("OnSubStart302614")
    this:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4049Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4055Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4061Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4391Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302614(arg1)
    print("OnSubFinish302614")
end

function Quest3026:OnSubStart302615(arg1)
    print("OnSubStart302615")
    this:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4028Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4049Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4055Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4061Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4391Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcWithTrigger("Q302615_Trigger", 302615, npcs.Npc1054Data.id, 1, 30)
    end)

    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest3026:OnSubFinish302615(arg1)
    print("OnSubFinish302615")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 1, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest3026:OnSubStart302616(arg1)
    print("OnSubStart302616")
    this:LightNotifyTo(npcs.Npc4060Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4065Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4028Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4049Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4055Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4029Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4061Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4062Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4391Data.alias, 0, true)
    this:CreateQuestNpcWithTriggerBlack("Q302616_Trigger", 302616, npcs.PaimonData.id, 1, 20, 1)
end

function Quest3026:OnSubFinish302616(arg1)
    print("OnSubFinish302616")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest3026:OnSubStart302617(arg1)
    print("OnSubStart302617")
    this:NpcCreateWithTrigger(npcs.Npc1056Data.id, 302617, 1)
end

function Quest3026:OnSubFinish302617(arg1)
    print("OnSubFinish302617")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
end

return Quest3026
