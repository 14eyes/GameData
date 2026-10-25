require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13036 = class("Quest13036", QuestActorProxy)
Quest13036.defaultAlias = "Quest13036"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest13036:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest13036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1303601"] = self.OnSubStart1303601,
        ["1303602"] = self.OnSubStart1303602,
        ["1303603"] = self.OnSubStart1303603,
        ["1303609"] = self.OnSubStart1303609,
        ["1303604"] = self.OnSubStart1303604,
        ["1303605"] = self.OnSubStart1303605,
        ["1303606"] = self.OnSubStart1303606,
        ["1303607"] = self.OnSubStart1303607,
        ["1303608"] = self.OnSubStart1303608
    }
end

function Quest13036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1303601"] = self.OnSubFinish1303601,
        ["1303602"] = self.OnSubFinish1303602,
        ["1303603"] = self.OnSubFinish1303603,
        ["1303609"] = self.OnSubFinish1303609,
        ["1303604"] = self.OnSubFinish1303604,
        ["1303605"] = self.OnSubFinish1303605,
        ["1303606"] = self.OnSubFinish1303606,
        ["1303607"] = self.OnSubFinish1303607,
        ["1303608"] = self.OnSubFinish1303608
    }
end

function Quest13036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13036:Start()
    print("Start")
end

function Quest13036:OnDestroy()
    print("OnDestroy")
end

function Quest13036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13036:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest13036:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest13036:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest13036:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest13036:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13036:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest13036:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 130360101 then
        actorUtils.FinishQuestID(false, 1303603)
    elseif arg1 == 130360102 then
        actorUtils.FinishQuestID(false, 1303609)
    end
end

function Quest13036:OnSubStart1303601(arg1)
    print("OnSubStart1303601")
end

function Quest13036:OnSubFinish1303601(arg1)
    print("OnSubFinish1303601")
    this:QuestNarratorTask(datas.NarratorWithId1303601)
end

function Quest13036:OnSubStart1303602(arg1)
    print("OnSubStart1303602")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1050Data.id, 1303602, 0, 25)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
end

function Quest13036:OnSubFinish1303602(arg1)
    print("OnSubFinish1303602")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest13036:OnSubStart1303603(arg1)
    print("OnSubStart1303603")
end

function Quest13036:OnSubFinish1303603(arg1)
    print("OnSubFinish1303603")
end

function Quest13036:OnSubStart1303609(arg1)
    print("OnSubStart1303609")
end

function Quest13036:OnSubFinish1303609(arg1)
    print("OnSubFinish1303609")
end

function Quest13036:OnSubStart1303604(arg1)
    print("OnSubStart1303604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1064Data.id, 1303604, 0, 40, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
end

function Quest13036:OnSubFinish1303604(arg1)
    print("OnSubFinish1303604")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc1064Data.alias, 3)
end

function Quest13036:OnSubStart1303605(arg1)
    print("OnSubStart1303605")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1064Data.id, 1303605, 0, 40, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    this:TransmitPlayerByData(arg1, 1303605, datas.TransmitData1303605)
end

function Quest13036:OnSubFinish1303605(arg1)
    print("OnSubFinish1303605")
end

function Quest13036:OnSubStart1303606(arg1)
    print("OnSubStart1303606")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1064Data.id, 1303606, 0, 40, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    this:TransmitPlayerByData(arg1, 1303606, datas.TransmitData1303606)
    this:ClearNarratorTask()
end

function Quest13036:OnSubFinish1303606(arg1)
    print("OnSubFinish1303606")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId1303606)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13036:OnSubStart1303607(arg1)
    print("OnSubStart1303607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1050Data.id, 1303607, 0, 25, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4105Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc4314Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4347Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4348Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1060, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc4314Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4314Data.alias):DisableInteeHeadCtrl(true)
end

function Quest13036:OnSubFinish1303607(arg1)
    print("OnSubFinish1303607")
    this:ClearNarratorTask()
    this:LightNotifyTo(npcs.Npc4347Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4348Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4351Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13036:OnSubStart1303608(arg1)
    print("OnSubStart1303608")
    this:NpcCreateWithNpcTrigger(npcs.Npc1064Data.id, 1303608, 0, 10)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13239Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4105Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1060, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc4314Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4314Data.alias):DisableInteeHeadCtrl(true)
end

function Quest13036:OnSubFinish1303608(arg1)
    print("OnSubFinish1303608")
    this:LightNotifyTo(npcs.Npc4105Data.alias, 0, false)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc4314Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc13239Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13993Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc13091Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc4314Data.alias, 3)
end

return Quest13036
