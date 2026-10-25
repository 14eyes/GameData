require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14011 = class("Quest14011", QuestActorProxy)
Quest14011.defaultAlias = "Quest14011"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest14011:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1401101"] = self.OnSubStart1401101,
        ["1401102"] = self.OnSubStart1401102,
        ["1401103"] = self.OnSubStart1401103,
        ["1401104"] = self.OnSubStart1401104,
        ["1401105"] = self.OnSubStart1401105
    }
end

function Quest14011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1401101"] = self.OnSubFinish1401101,
        ["1401102"] = self.OnSubFinish1401102,
        ["1401103"] = self.OnSubFinish1401103,
        ["1401104"] = self.OnSubFinish1401104,
        ["1401105"] = self.OnSubFinish1401105
    }
end

function Quest14011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14011:Start()
    print("Start")
end

function Quest14011:OnDestroy()
    print("OnDestroy")
end

function Quest14011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14011:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14011:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest14011:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14011:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14011:OnSubStart1401101(arg1)
    print("OnSubStart1401101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13580Data.id, 1401101, 0, 8, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13697Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13697Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13698Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13698Data.alias):DoFreeStyle(4260, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5128Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13697Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14011:OnSubFinish1401101(arg1)
    print("OnSubFinish1401101")
    this:GetQuestNpcActor(npcs.Npc13697Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13580Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13697Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13698Data.alias, 1087)
end

function Quest14011:OnSubStart1401102(arg1)
    print("OnSubStart1401102")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13578Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13579Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13577Data.id, 1401102, 0, 8, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5130Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13803Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13803Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13800Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13801Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13797Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13578Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13579Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest14011:OnSubFinish1401102(arg1)
    print("OnSubFinish1401102")
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13803Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13800Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13801Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13797Data.alias, 3)
end

function Quest14011:OnSubStart1401103(arg1)
    print("OnSubStart1401103")
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5130Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1401103Trigger", "Actor/Gadget/Q1401103Trigger", 70900002, 0, points.TPos_Q1401103Trigger.pos, points.TPos_Q1401103Trigger.rot, true, false, 3)
end

function Quest14011:OnSubFinish1401103(arg1)
    print("OnSubFinish1401103")
end

function Quest14011:OnSubStart1401104(arg1)
    print("OnSubStart1401104")
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13577Data.id, 1401104, 0, 8, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5128Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc5122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5130Data.alias, 0, true)
end

function Quest14011:OnSubFinish1401104(arg1)
    print("OnSubFinish1401104")
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
end

function Quest14011:OnSubStart1401105(arg1)
    print("OnSubStart1401105")
    this:NpcCreateWithNpcTrigger(npcs.Npc13578Data.id, 1401105, 0, 10)
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13579Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5128Data.alias, 1, true)
end

function Quest14011:OnSubFinish1401105(arg1)
    print("OnSubFinish1401105")
    this:LightNotifyTo(npcs.Npc5129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5128Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13580Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13578Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13579Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13577Data.alias, 3)
end

return Quest14011
