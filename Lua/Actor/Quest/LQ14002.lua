require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14002 = class("Quest14002", QuestActorProxy)
Quest14002.defaultAlias = "Quest14002"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest14002:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400201"] = self.OnSubStart1400201,
        ["1400202"] = self.OnSubStart1400202,
        ["1400204"] = self.OnSubStart1400204,
        ["1400205"] = self.OnSubStart1400205,
        ["1400207"] = self.OnSubStart1400207,
        ["1400206"] = self.OnSubStart1400206,
        ["1400203"] = self.OnSubStart1400203
    }
end

function Quest14002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400201"] = self.OnSubFinish1400201,
        ["1400202"] = self.OnSubFinish1400202,
        ["1400204"] = self.OnSubFinish1400204,
        ["1400205"] = self.OnSubFinish1400205,
        ["1400207"] = self.OnSubFinish1400207,
        ["1400206"] = self.OnSubFinish1400206,
        ["1400203"] = self.OnSubFinish1400203
    }
end

function Quest14002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14002:Start()
    print("Start")
end

function Quest14002:OnDestroy()
    print("OnDestroy")
end

function Quest14002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14002:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest14002:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest14002:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest14002:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest14002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14002:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1400207 then
        actorUtils.FinishQuestID(false, 1400207)
    end
end

function Quest14002:OnSubStart1400201(arg1)
    print("OnSubStart1400201")
    this:CreateQuestNpc(arg1, npcs.Npc13389Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13390Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13459Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13459Data.alias):DoFreeStyle(4150, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14002:OnSubFinish1400201(arg1)
    print("OnSubFinish1400201")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyWithDither(npcs.Npc13389Data.alias, 3)
        this:NpcDestroyWithDither(npcs.Npc13390Data.alias, 3)
        this:NpcDestroyWithDither(npcs.Npc13459Data.alias, 3)
        local actor = actorMgr:GetActor("14001")
        if actor.uActor ~= nil then
            actor:ClearNarratorTask()
        end
    end)
end

function Quest14002:OnSubStart1400202(arg1)
    print("OnSubStart1400202")
    this:NpcCreateWithNpcTrigger(npcs.Npc13387Data.id, 1400202, 0, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1070Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13387Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):SitOnChair(0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest14002:OnSubFinish1400202(arg1)
    print("OnSubFinish1400202")
    this:NpcDestroyWithBlackscreen(1085, npcs.Npc1070Data.alias)
    this:DestroyQuestNpcActor(npcs.Npc13387Data.alias, 1085)
end

function Quest14002:OnSubStart1400204(arg1)
    print("OnSubStart1400204")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1071Data.id, 1400204, 0, 5, 1)
        this:CreateQuestNpc(arg1, npcs.Npc13387Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13387Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    end)

    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest14002:OnSubFinish1400204(arg1)
    print("OnSubFinish1400204")
    this:NpcDestroyWithBlackscreen(1085, npcs.Npc1071Data.alias)
end

function Quest14002:OnSubStart1400205(arg1)
    print("OnSubStart1400205")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13387Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13387Data.alias)
        questNpcActor:DoFreeStyle(1090, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)

    actorMgr:CreateActorWithPos("Q1400205Trigger", "Actor/Gadget/Q1400205Trigger", 70900002, 0, points.TPos_Q1400205Trigger.pos, points.TPos_Q1400205Trigger.rot, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest14002:OnSubFinish1400205(arg1)
    print("OnSubFinish1400205")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1070Data.alias)
    this:DestroyQuestNpcActor(npcs.Npc1072Data.alias, 1085)
    this:DestroyQuestNpcActor(npcs.Npc13387Data.alias, 1085)
    this:ActorDestroy("Q1400205Trigger")
end

function Quest14002:OnSubStart1400207(arg1)
    print("OnSubStart1400207")
end

function Quest14002:OnSubFinish1400207(arg1)
    print("OnSubFinish1400207")
end

function Quest14002:OnSubStart1400206(arg1)
    print("OnSubStart1400206")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1071Data.id, 1400206, 0, 10)
    end)

    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
end

function Quest14002:OnSubFinish1400206(arg1)
    print("OnSubFinish1400206")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1071Data.alias)
end

function Quest14002:OnSubStart1400203(arg1)
    print("OnSubStart1400203")
end

function Quest14002:OnSubFinish1400203(arg1)
    print("OnSubFinish1400203")
end

return Quest14002
