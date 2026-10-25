require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40196 = class("Quest40196", QuestActorProxy)
Quest40196.defaultAlias = "Quest40196"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40196:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40196:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019601"] = self.OnSubStart4019601,
        ["4019602"] = self.OnSubStart4019602,
        ["4019603"] = self.OnSubStart4019603,
        ["4019604"] = self.OnSubStart4019604,
        ["4019605"] = self.OnSubStart4019605,
        ["4019606"] = self.OnSubStart4019606
    }
end

function Quest40196:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019601"] = self.OnSubFinish4019601,
        ["4019602"] = self.OnSubFinish4019602,
        ["4019603"] = self.OnSubFinish4019603,
        ["4019604"] = self.OnSubFinish4019604,
        ["4019605"] = self.OnSubFinish4019605,
        ["4019606"] = self.OnSubFinish4019606
    }
end

function Quest40196:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40196:Start()
    print("Start")
end

function Quest40196:OnDestroy()
    print("OnDestroy")
end

function Quest40196:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40196:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40196:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q40196Trigger1")
    this:ActorDestroy("Q40196Trigger2")
    this:ActorDestroy("Q40196Trigger3")
    this:ActorDestroy("Q40196Trigger")
    this:ActorDestroy("Q40196Trigger4")
    this:BanCrowdNpc(3401, 1, datas.CrowdInstanceIDList2, false, nil)
    this:DestroyQuestNpcActor(npcs.Npc1076.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1078.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1070.alias, 3)
    this:GetQuestNpcActor(npcs.Paimon.alias, 40196):DestroyWithDisappear(false, nil)
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
end

function Quest40196:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q40196Trigger1")
    this:ActorDestroy("Q40196Trigger2")
    this:ActorDestroy("Q40196Trigger3")
    this:ActorDestroy("Q40196Trigger")
    this:ActorDestroy("Q40196Trigger4")
    this:BanCrowdNpc(3401, 1, datas.CrowdInstanceIDList2, false, nil)
    this:DestroyQuestNpcActor(npcs.Npc1076.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1078.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1070.alias, 3)
    this:GetQuestNpcActor(npcs.Paimon.alias, 40196):DestroyWithDisappear(false, nil)
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
end

function Quest40196:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40196:OnSubStart4019601(arg1)
    print("OnSubStart4019601")
end

function Quest40196:OnSubFinish4019601(arg1)
    print("OnSubFinish4019601")
    this:QuestNarratorTask(datas.NarratorWithId_4019601, nil)
end

function Quest40196:OnSubStart4019602(arg1)
    print("OnSubStart4019602")
    actorMgr:CreateActorWithPos("Q40196Trigger", "Actor/Gadget/Q40196Trigger", 70900002, 0, points._Q40196TriggerPoint_.pos, points._Q40196TriggerPoint_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1076.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1078.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1076.alias, 40196):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1078.alias, 40196):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 40196):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:BanCrowdNpc(3401, 1, datas.CrowdInstanceIDList2, true, nil)
end

function Quest40196:OnSubFinish4019602(arg1)
    print("OnSubFinish4019602")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1078.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1076.alias, 3)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest40196:OnSubStart4019603(arg1)
    print("OnSubStart4019603")
    actorMgr:CreateActorWithPos("Q40196Trigger1", "Actor/Gadget/Q40196Trigger1", 70900002, 0, points._Q40196Trigger1Point_.pos, points._Q40196Trigger1Point_.rot, true, false, 3)
    this:BanCrowdNpc(3401, 1, datas.CrowdInstanceIDList2, true, nil)
end

function Quest40196:OnSubFinish4019603(arg1)
    print("OnSubFinish4019603")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc15174.alias, 3)
        this:BanCrowdNpc(3401, 1, datas.CrowdInstanceIDList2, false)
    end)
end

function Quest40196:OnSubStart4019604(arg1)
    print("OnSubStart4019604")
    this:ActionSafeCall(nil)
    this:CreateQuestNpc(arg1, npcs.Npc1070.id, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc1070.alias, 40196):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1070.alias, 40196):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q40196Trigger3", "Actor/Gadget/Q40196Trigger3", 70900002, 0, points._Q40196Trigger3Point_.pos, points._Q40196Trigger3Point_.rot, true, false, 3)
end

function Quest40196:OnSubFinish4019604(arg1)
    print("OnSubFinish4019604")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1070.alias, 3)
        this:GetQuestNpcActor(npcs.Paimon.alias, 40196):DestroyWithDisappear(false, nil)
        globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
        this:ActorDestroy("Q40196Trigger3")
    end)
end

function Quest40196:OnSubStart4019605(arg1)
    print("OnSubStart4019605")
end

function Quest40196:OnSubFinish4019605(arg1)
    print("OnSubFinish4019605")
end

function Quest40196:OnSubStart4019606(arg1)
    print("OnSubStart4019606")
end

function Quest40196:OnSubFinish4019606(arg1)
    print("OnSubFinish4019606")
end

return Quest40196
