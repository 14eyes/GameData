require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15012 = class("Quest15012", QuestActorProxy)
Quest15012.defaultAlias = "Quest15012"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest15012:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest15012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501201"] = self.OnSubStart1501201,
        ["1501202"] = self.OnSubStart1501202,
        ["1501203"] = self.OnSubStart1501203,
        ["1501204"] = self.OnSubStart1501204
    }
end

function Quest15012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501201"] = self.OnSubFinish1501201,
        ["1501202"] = self.OnSubFinish1501202,
        ["1501203"] = self.OnSubFinish1501203,
        ["1501204"] = self.OnSubFinish1501204
    }
end

function Quest15012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15012:Start()
    print("Start")
end

function Quest15012:OnDestroy()
    print("OnDestroy")
end

function Quest15012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15012:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest15012:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest15012:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest15012:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest15012:OnSubStart1501201(arg1)
    print("OnSubStart1501201")
    this:CreateQuestNpc(arg1, npcs.Npc6084Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6083Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1501201Trigger", "Actor/Gadget/Q1501201Trigger", 70900002, 0, points.TPos_Q1501201Trigger.pos, points.TPos_Q1501201Trigger.rot, true, false, 3)
end

function Quest15012:OnSubFinish1501201(arg1)
    print("OnSubFinish1501201")
end

function Quest15012:OnSubStart1501202(arg1)
    print("OnSubStart1501202")
    this:CreateQuestNpc(arg1, npcs.Npc6083Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc6083Data.alias)
    questNpcActor:DoFreeStyle(1070, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1501202Trigger", "Actor/Gadget/Q1501202Trigger", 70900002, 0, points.TPos_Q1501202Trigger.pos, points.TPos_Q1501202Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1501203Trigger", "Actor/Gadget/Q1501203Trigger", 70900002, 0, points.TPos_Q1501203Trigger.pos, points.TPos_Q1501203Trigger.rot, true, false, 3)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest15012:OnSubFinish1501202(arg1)
    print("OnSubFinish1501202")
    this:ActorDestroy("Q1501203Trigger")
    this:ActorDestroy("Q1501202Trigger")
end

function Quest15012:OnSubStart1501203(arg1)
    print("OnSubStart1501203")
    this:GetQuestNpcActor(npcs.Npc6083Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest15012:OnSubFinish1501203(arg1)
    print("OnSubFinish1501203")
    this:CallDelayByQuest("", 8, function(arg1)
        this:RequestInteraction(npcs.Npc6083Data.alias, "", true)
    end)
end

function Quest15012:OnSubStart1501204(arg1)
    print("OnSubStart1501204")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc6083Data.alias)
    questNpcActor:DoFreeStyle(1070, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(false)
    this:CallDelayByQuest("", 8, function(arg1)
        this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc6083Data.id, 1501204, 0, 20, 0.5)
    end)
end

function Quest15012:OnSubFinish1501204(arg1)
    print("OnSubFinish1501204")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc6084Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6083Data.alias)
end

return Quest15012
