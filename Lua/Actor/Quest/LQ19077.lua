require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19077 = class("Quest19077", QuestActorProxy)
Quest19077.defaultAlias = "Quest19077"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19077:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19077:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1907701"] = self.OnSubStart1907701,
        ["1907702"] = self.OnSubStart1907702,
        ["1907704"] = self.OnSubStart1907704,
        ["1907705"] = self.OnSubStart1907705,
        ["1907703"] = self.OnSubStart1907703
    }
end

function Quest19077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1907701"] = self.OnSubFinish1907701,
        ["1907702"] = self.OnSubFinish1907702,
        ["1907704"] = self.OnSubFinish1907704,
        ["1907705"] = self.OnSubFinish1907705,
        ["1907703"] = self.OnSubFinish1907703
    }
end

function Quest19077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19077:Start()
    print("Start")
end

function Quest19077:OnDestroy()
    print("OnDestroy")
end

function Quest19077:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19077:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19077:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13239Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13264Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13269Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4341Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4341Data.alias, 0, true)
    this:RemoveLocalGadget(70300203, "1")
    actorMgr:DestroyEntityActor("Q1907701N1050Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907704N13239Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907703N1050Trigger", 3, false)
end

function Quest19077:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19077:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest19077:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19077:OnSubStart1907701(arg1)
    print("OnSubStart1907701")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907701)
    this:CreateQuestNpc(arg1, npcs.Npc13239Data.id, 2)
    this:CreateQuestNpcWithTriggerBlackEx("Q1907701N1050Trigger", 1907701, npcs.Npc1050Data.id, 3, 25, 0.5, 0.5, 0.5, 1)
end

function Quest19077:OnSubFinish1907701(arg1)
    print("OnSubFinish1907701")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest19077:OnSubStart1907702(arg1)
    print("OnSubStart1907702")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907702)
end

function Quest19077:OnSubFinish1907702(arg1)
    print("OnSubFinish1907702")
    this:SafeDestroyQuestNpc(npcs.Npc13239Data.alias, 3)
end

function Quest19077:OnSubStart1907704(arg1)
    print("OnSubStart1907704")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907704)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13239Data.id, 1907704, 2, 8, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13264Data.id, 3)
end

function Quest19077:OnSubFinish1907704(arg1)
    print("OnSubFinish1907704")
    this:SafeDestroyQuestNpc(npcs.Npc13264Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13239Data.alias, 3)
end

function Quest19077:OnSubStart1907705(arg1)
    print("OnSubStart1907705")
    this:CreateQuestNpc(arg1, npcs.Npc13269Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc13239Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19077:OnSubFinish1907705(arg1)
    print("OnSubFinish1907705")
    this:SafeDestroyQuestNpc(npcs.Npc13269Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc13239Data.alias):DisableInteeHeadCtrl(false)
end

function Quest19077:OnSubStart1907703(arg1)
    print("OnSubStart1907703")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907703)
    this:NpcCreateWithNpcTrigger(npcs.Npc1050Data.id, 1907703, 2, 7)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1180, true, nil, true, true, true, false)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4341Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1220, true, nil, true, true, true, false)
end

function Quest19077:OnSubFinish1907703(arg1)
    print("OnSubFinish1907703")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4341Data.alias, 0, true)
end

return Quest19077
