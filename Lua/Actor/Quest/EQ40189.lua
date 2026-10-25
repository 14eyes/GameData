require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40189 = class("Quest40189", QuestActorProxy)
Quest40189.defaultAlias = "Quest40189"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40189:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40189:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4018901"] = self.OnSubStart4018901,
        ["4018902"] = self.OnSubStart4018902,
        ["4018903"] = self.OnSubStart4018903,
        ["4018904"] = self.OnSubStart4018904,
        ["4018911"] = self.OnSubStart4018911,
        ["4018905"] = self.OnSubStart4018905,
        ["4018912"] = self.OnSubStart4018912,
        ["4018906"] = self.OnSubStart4018906,
        ["4018907"] = self.OnSubStart4018907,
        ["4018908"] = self.OnSubStart4018908,
        ["4018909"] = self.OnSubStart4018909,
        ["4018910"] = self.OnSubStart4018910
    }
end

function Quest40189:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4018901"] = self.OnSubFinish4018901,
        ["4018902"] = self.OnSubFinish4018902,
        ["4018903"] = self.OnSubFinish4018903,
        ["4018904"] = self.OnSubFinish4018904,
        ["4018911"] = self.OnSubFinish4018911,
        ["4018905"] = self.OnSubFinish4018905,
        ["4018912"] = self.OnSubFinish4018912,
        ["4018906"] = self.OnSubFinish4018906,
        ["4018907"] = self.OnSubFinish4018907,
        ["4018908"] = self.OnSubFinish4018908,
        ["4018909"] = self.OnSubFinish4018909,
        ["4018910"] = self.OnSubFinish4018910
    }
end

function Quest40189:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40189:Start()
    print("Start")
end

function Quest40189:OnDestroy()
    print("OnDestroy")
end

function Quest40189:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40189:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40189:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q40189Trigger")
    this:ActorDestroy("Q40189Trigger_1")
    this:ActorDestroy("Q40189Trigger_2")
    this:ActorDestroy("Q40189Trigger_3")
    this:ActorDestroy("Q40189Trigger_4")
    this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15253.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30824.alias, 3)
end

function Quest40189:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q40189Trigger")
    this:ActorDestroy("Q40189Trigger_1")
    this:ActorDestroy("Q40189Trigger_2")
    this:ActorDestroy("Q40189Trigger_3")
    this:ActorDestroy("Q40189Trigger_4")
    this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15253.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30824.alias, 3)
end

function Quest40189:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 4018906)
    end
end

function Quest40189:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40189:OnSubStart4018901(arg1)
    print("OnSubStart4018901")
    this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15253.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15253.alias, 40189):DisableInteeHeadCtrl(true)
end

function Quest40189:OnSubFinish4018901(arg1)
    print("OnSubFinish4018901")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc15253.alias, 3)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DisableInteeHeadCtrl(false)
    end)
end

function Quest40189:OnSubStart4018902(arg1)
    print("OnSubStart4018902")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DoFreeStyle(1220, true, nil, true, true, false, true)
    end)
end

function Quest40189:OnSubFinish4018902(arg1)
    print("OnSubFinish4018902")
end

function Quest40189:OnSubStart4018903(arg1)
    print("OnSubStart4018903")
    actorMgr:CreateActorWithPos("Q40189Trigger", "Actor/Gadget/Q40189Trigger", 70900002, 0, points._Q40189TriggerPoint_.pos, points._Q40189TriggerPoint_.rot, true, false, 3)
end

function Quest40189:OnSubFinish4018903(arg1)
    print("OnSubFinish4018903")
end

function Quest40189:OnSubStart4018904(arg1)
    print("OnSubStart4018904")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DisableInteeHeadCtrl(true)
    end)
end

function Quest40189:OnSubFinish4018904(arg1)
    print("OnSubFinish4018904")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DisableInteeHeadCtrl(false)
    end)
end

function Quest40189:OnSubStart4018911(arg1)
    print("OnSubStart4018911")
    actorMgr:CreateActorWithPos("Q40189Trigger_1", "Actor/Gadget/Q40189Trigger_1", 70900002, 0, points._Q40189Trigger_1Point_.pos, points._Q40189Trigger_1Point_.rot, true, false, 3)
end

function Quest40189:OnSubFinish4018911(arg1)
    print("OnSubFinish4018911")
end

function Quest40189:OnSubStart4018905(arg1)
    print("OnSubStart4018905")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DoFreeStyle(1220, true, nil, true, true, false, true)
    end)
end

function Quest40189:OnSubFinish4018905(arg1)
    print("OnSubFinish4018905")
end

function Quest40189:OnSubStart4018912(arg1)
    print("OnSubStart4018912")
    actorMgr:CreateActorWithPos("Q40189Trigger_2", "Actor/Gadget/Q40189Trigger_2", 70900002, 0, points._Q40189Trigger_2Point_.pos, points._Q40189Trigger_2Point_.rot, true, false, 3)
end

function Quest40189:OnSubFinish4018912(arg1)
    print("OnSubFinish4018912")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
    end)
end

function Quest40189:OnSubStart4018906(arg1)
    print("OnSubStart4018906")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc30824.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc30824.alias, 40189):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest40189:OnSubFinish4018906(arg1)
    print("OnSubFinish4018906")
end

function Quest40189:OnSubStart4018907(arg1)
    print("OnSubStart4018907")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc30824.alias, 40189):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest40189:OnSubFinish4018907(arg1)
    print("OnSubFinish4018907")
end

function Quest40189:OnSubStart4018908(arg1)
    print("OnSubStart4018908")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40189Trigger_3", "Actor/Gadget/Q40189Trigger_3", 70900002, 0, points._Q40189Trigger_3Point_.pos, points._Q40189Trigger_3Point_.rot, true, false, 3)
    end)
end

function Quest40189:OnSubFinish4018908(arg1)
    print("OnSubFinish4018908")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc30824.alias, 3)
        this:QuestNarratorTask(datas.NarratorWithId_4018901, nil)
    end)
end

function Quest40189:OnSubStart4018909(arg1)
    print("OnSubStart4018909")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40189):DoFreeStyle(1220, true, nil, true, true, false, true)
    end)
end

function Quest40189:OnSubFinish4018909(arg1)
    print("OnSubFinish4018909")
end

function Quest40189:OnSubStart4018910(arg1)
    print("OnSubStart4018910")
    actorMgr:CreateActorWithPos("Q40189Trigger_4", "Actor/Gadget/Q40189Trigger_4", 70900002, 0, points._Q40189Trigger_4Point_.pos, points._Q40189Trigger_4Point_.rot, true, false, 3)
end

function Quest40189:OnSubFinish4018910(arg1)
    print("OnSubFinish4018910")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

return Quest40189
