require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24000 = class("Quest24000", QuestActorProxy)
Quest24000.defaultAlias = "Quest24000"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24000:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400001"] = self.OnSubStart2400001,
        ["2400002"] = self.OnSubStart2400002,
        ["2400003"] = self.OnSubStart2400003,
        ["2400004"] = self.OnSubStart2400004
    }
end

function Quest24000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400001"] = self.OnSubFinish2400001,
        ["2400002"] = self.OnSubFinish2400002,
        ["2400003"] = self.OnSubFinish2400003,
        ["2400004"] = self.OnSubFinish2400004
    }
end

function Quest24000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24000:Start()
    print("Start")
end

function Quest24000:OnDestroy()
    print("OnDestroy")
end

function Quest24000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24000:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5046Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5029Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5033Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5024Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5044Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5046Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5029Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5044Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2400001N5029Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400004N5029Trigger", 3, false)
end

function Quest24000:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24000:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest24000:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24000:OnSubStart2400001(arg1)
    print("OnSubStart2400001")
    this:NpcCreateWithNpcTrigger(npcs.Npc5029Data.id, 2400001, 1, 6)
    this:CreateQuestNpc(arg1, npcs.Npc5082Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
end

function Quest24000:OnSubFinish2400001(arg1)
    print("OnSubFinish2400001")
    this:SafeDestroyQuestNpc(npcs.Npc5082Data.alias, 3)
end

function Quest24000:OnSubStart2400002(arg1)
    print("OnSubStart2400002")
    this:CreateQuestNpc(arg1, npcs.Npc5046Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc5029Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc5033Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5046Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5029Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24000:OnSubFinish2400002(arg1)
    print("OnSubFinish2400002")
    this:GetQuestNpcActor(npcs.Npc5046Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5029Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc5046Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5029Data.alias, 3)
end

function Quest24000:OnSubStart2400003(arg1)
    print("OnSubStart2400003")
    this:DailyNpcSafeHideSelf(npcs.Npc5046Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5029Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5024Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
end

function Quest24000:OnSubFinish2400003(arg1)
    print("OnSubFinish2400003")
    this:SafeDestroyQuestNpc(npcs.Npc5033Data.alias, 3)
end

function Quest24000:OnSubStart2400004(arg1)
    print("OnSubStart2400004")
    this:CreateQuestNpc(arg1, npcs.Npc5046Data.id, 1)
    this:NpcCreateWithNpcTrigger(npcs.Npc5029Data.id, 2400004, 2, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
end

function Quest24000:OnSubFinish2400004(arg1)
    print("OnSubFinish2400004")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5046Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5029Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc5024Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5044Data.alias, 0, true)
end

return Quest24000
