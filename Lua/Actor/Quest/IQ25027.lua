require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25027 = class("Quest25027", QuestActorProxy)
Quest25027.defaultAlias = "Quest25027"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest25027:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest25027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2502701"] = self.OnSubStart2502701,
        ["2502704"] = self.OnSubStart2502704,
        ["2502708"] = self.OnSubStart2502708,
        ["2502709"] = self.OnSubStart2502709,
        ["2502703"] = self.OnSubStart2502703,
        ["2502702"] = self.OnSubStart2502702,
        ["2502706"] = self.OnSubStart2502706,
        ["2502705"] = self.OnSubStart2502705
    }
end

function Quest25027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2502701"] = self.OnSubFinish2502701,
        ["2502704"] = self.OnSubFinish2502704,
        ["2502708"] = self.OnSubFinish2502708,
        ["2502709"] = self.OnSubFinish2502709,
        ["2502703"] = self.OnSubFinish2502703,
        ["2502702"] = self.OnSubFinish2502702,
        ["2502706"] = self.OnSubFinish2502706,
        ["2502705"] = self.OnSubFinish2502705
    }
end

function Quest25027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25027:Start()
    print("Start")
end

function Quest25027:OnDestroy()
    print("OnDestroy")
end

function Quest25027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25027:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc6068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6074.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6060.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6076.alias, 3)
    this:LightNotifyTo(npcs.Npc6077.alias, 0, true)
    this:ActorDestroy("Q2502704Trigger")
    this:DestroyNpcTrigger("Q2502704N6068Trigger")
    this:DestroyNpcTrigger("Q2502709N6068Trigger")
    this:UnCallDelayByQuest("delayCreateNpc")
end

function Quest25027:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:ActionSafeCall(function(arg1)
            this:NpcDestroyWithBlackscreen(3, npcs.Npc6068.alias)
        end)
    end
end

function Quest25027:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest25027:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest25027:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest25027:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest25027:OnSubStart2502701(arg1)
    print("OnSubStart2502701")
    this:CreateQuestNpc(arg1, npcs.Npc6068.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6077.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6068.alias, 25027):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest25027:OnSubFinish2502701(arg1)
    print("OnSubFinish2502701")
end

function Quest25027:OnSubStart2502704(arg1)
    print("OnSubStart2502704")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2502704, 0, 5, 1, npcs.Npc6068.id)
    actorMgr:CreateActorWithPos("Q2502704Trigger", "Actor/Gadget/Q2502704Trigger", 70900002, 0, points._Q2502704TriggerPoint_.pos, points._Q2502704TriggerPoint_.rot, true, false, 3)
end

function Quest25027:OnSubFinish2502704(arg1)
    print("OnSubFinish2502704")
    this:SafeDestroyQuestNpc(npcs.Npc6068.alias, 3)
    this:ActorDestroy("Q2502704Trigger")
    this:ClearNarratorTask()
end

function Quest25027:OnSubStart2502708(arg1)
    print("OnSubStart2502708")
end

function Quest25027:OnSubFinish2502708(arg1)
    print("OnSubFinish2502708")
end

function Quest25027:OnSubStart2502709(arg1)
    print("OnSubStart2502709")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(2502709, 0, 20, 1, npcs.Npc6068.id)
end

function Quest25027:OnSubFinish2502709(arg1)
    print("OnSubFinish2502709")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6068.alias)
end

function Quest25027:OnSubStart2502703(arg1)
    print("OnSubStart2502703")
    this:CreateQuestNpc(arg1, npcs.Npc6060.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6077.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6068.alias, 25027):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6060.alias, 25027):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6060.alias, 25027):DisableInteeHeadCtrl(true)
end

function Quest25027:OnSubFinish2502703(arg1)
    print("OnSubFinish2502703")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest25027:OnSubStart2502702(arg1)
    print("OnSubStart2502702")
    this:CreateQuestNpc(arg1, npcs.Npc6074.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6077.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6068.alias, 25027):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6074.alias, 25027):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6074.alias, 25027):DisableInteeHeadCtrl(true)
end

function Quest25027:OnSubFinish2502702(arg1)
    print("OnSubFinish2502702")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest25027:OnSubStart2502706(arg1)
    print("OnSubStart2502706")
    this:CreateQuestNpc(arg1, npcs.Npc6076.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6077.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6068.alias, 25027):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6076.alias, 25027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6076.alias, 25027):DisableInteeHeadCtrl(true)
end

function Quest25027:OnSubFinish2502706(arg1)
    print("OnSubFinish2502706")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest25027:OnSubStart2502705(arg1)
    print("OnSubStart2502705")
    this:CreateQuestNpc(arg1, npcs.Npc6068.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6077.alias, true, 1)
    this:CallDelayByQuest("delayCreateNpc", 0.5, function(arg1_2)
        local questVar = this:GetQuestVar(2502705, 1)
        if questVar == 1 then
            this:CreateQuestNpc(arg1, npcs.Npc6060.id, 0, true, 0.5)
            this:GetQuestNpcActor(npcs.Npc6060.alias, 25027):DoFreeStyle(1060, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc6060.alias, 25027):DisableInteeHeadCtrl(true)
        elseif questVar == 2 then
            this:CreateQuestNpc(arg1, npcs.Npc6074.id, 0, true, 0.5)
            this:GetQuestNpcActor(npcs.Npc6074.alias, 25027):DoFreeStyle(1120, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc6074.alias, 25027):DisableInteeHeadCtrl(true)
        elseif questVar == 3 then
            this:CreateQuestNpc(arg1, npcs.Npc6076.id, 0, true, 0.5)
            this:GetQuestNpcActor(npcs.Npc6076.alias, 25027):DoFreeStyle(1190, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc6076.alias, 25027):DisableInteeHeadCtrl(true)
        end
    end)
end

function Quest25027:OnSubFinish2502705(arg1)
    print("OnSubFinish2502705")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6068.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6060.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6074.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6076.alias, 3)
    this:GetQuestNpcActor(npcs.Npc6060.alias, 25027):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6074.alias, 25027):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6076.alias, 25027):DisableInteeHeadCtrl(false)
    this:LightNotifyTo(npcs.Npc6077.alias, 0, true)
end

return Quest25027
