require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15007 = class("Quest15007", QuestActorProxy)
Quest15007.defaultAlias = "Quest15007"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15007:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500709"] = self.OnSubStart1500709,
        ["1500701"] = self.OnSubStart1500701,
        ["1500702"] = self.OnSubStart1500702,
        ["1500707"] = self.OnSubStart1500707,
        ["1500703"] = self.OnSubStart1500703,
        ["1500704"] = self.OnSubStart1500704,
        ["1500708"] = self.OnSubStart1500708,
        ["1500705"] = self.OnSubStart1500705,
        ["1500706"] = self.OnSubStart1500706
    }
end

function Quest15007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500709"] = self.OnSubFinish1500709,
        ["1500701"] = self.OnSubFinish1500701,
        ["1500702"] = self.OnSubFinish1500702,
        ["1500707"] = self.OnSubFinish1500707,
        ["1500703"] = self.OnSubFinish1500703,
        ["1500704"] = self.OnSubFinish1500704,
        ["1500708"] = self.OnSubFinish1500708,
        ["1500705"] = self.OnSubFinish1500705,
        ["1500706"] = self.OnSubFinish1500706
    }
end

function Quest15007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15007:Start()
    print("Start")
end

function Quest15007:OnDestroy()
    print("OnDestroy")
end

function Quest15007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15007:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15007:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest15007:OnSubStart1500709(arg1)
    print("OnSubStart1500709")
    this:TryStartTribalAutoTrack(arg1)
    if this:GetQuestGlobalVar(1500603) == 0 then
        actorMgr:CreateActorWithPos("Q1500709Trigger00", "Actor/Gadget/Q1500709Trigger00", 70900002, 0, points._Q1500709Trigger00Point_.pos, points._Q1500709Trigger00Point_.rot, true, false, 3)
    else
        actorMgr:CreateActorWithPos("Q1500709Trigger01", "Actor/Gadget/Q1500709Trigger01", 70900002, 0, points._Q1500709Trigger01Point_.pos, points._Q1500709Trigger01Point_.rot, true, false, 3)
    end
end

function Quest15007:OnSubFinish1500709(arg1)
    print("OnSubFinish1500709")
    this:SetNavigationByMainId(15007, true)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest15007:OnSubStart1500701(arg1)
    print("OnSubStart1500701")
    this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 15, 1500701)
    this:CreateQuestNpc(arg1, npcs.Npc14305.id, 0, false, 0)
end

function Quest15007:OnSubFinish1500701(arg1)
    print("OnSubFinish1500701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1087.alias)
    this:SafeDestroyQuestNpc(npcs.Npc14305.alias, 3)
end

function Quest15007:OnSubStart1500702(arg1)
    print("OnSubStart1500702")
    this:CreateQuestNpc(arg1, npcs.Npc14229.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14308.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14306.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14306.alias, 15007):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14307.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14307.alias, 15007):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc14301.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14301.alias, 15007):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14302.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14302.alias, 15007):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14549.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14550.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1500702Trigger", "Actor/Gadget/Q1500702Trigger", 70900002, 0, points._Q1500702TriggerPoint_.pos, points._Q1500702TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3502, 8, datas.InstanceIDList1500702, true)
end

function Quest15007:OnSubFinish1500702(arg1)
    print("OnSubFinish1500702")
    this:SafeDestroyQuestNpc(npcs.Npc14229.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14308.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14306.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14307.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14301.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14302.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14549.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14550.alias, 3)
end

function Quest15007:OnSubStart1500707(arg1)
    print("OnSubStart1500707")
    actorMgr:CreateActorWithPos("Q1500707trigger", "Actor/Gadget/Q1500707trigger", 70900002, 0, points.Q1500707trigger.pos, points.Q1500707trigger.rot, true, false, 3)
    this:BanCrowdNpc(3502, 8, datas.InstanceIDList1500702, true)
end

function Quest15007:OnSubFinish1500707(arg1)
    print("OnSubFinish1500707")
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:BanCrowdNpc(3502, 8, datas.InstanceIDList1500702, false)
end

function Quest15007:OnSubStart1500703(arg1)
    print("OnSubStart1500703")
    this:CreateQuestNpc(arg1, npcs.Npc6070.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6070.alias, 15007):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1500703Trigger", "Actor/Gadget/Q1500703Trigger", 70900002, 0, points._Q1500703TriggerPoint_.pos, points._Q1500703TriggerPoint_.rot, true, false, 3)
end

function Quest15007:OnSubFinish1500703(arg1)
    print("OnSubFinish1500703")
    this:SafeDestroyQuestNpc(npcs.Npc6070.alias, 3)
end

function Quest15007:OnSubStart1500704(arg1)
    print("OnSubStart1500704")
    this:NpcCreateWithNpcTrigger(npcs.Npc6067.id, 0, 6, 1500704)
    this:BanCrowdNpc(3502, 3, datas.InstanceIDList1500704, true)
end

function Quest15007:OnSubFinish1500704(arg1)
    print("OnSubFinish1500704")
    this:SafeDestroyQuestNpc(npcs.Npc6067.alias, 3)
    this:BanCrowdNpc(3502, 3, datas.InstanceIDList1500704, false)
end

function Quest15007:OnSubStart1500708(arg1)
    print("OnSubStart1500708")
    this:NpcCreateWithNpcTrigger(npcs.Npc6078.id, 0, 6, 1500708)
    this:BanCrowdNpc(3502, 8, datas.InstanceIDList1500708, true)
end

function Quest15007:OnSubFinish1500708(arg1)
    print("OnSubFinish1500708")
    this:SafeDestroyQuestNpc(npcs.Npc6078.alias, 3)
    this:BanCrowdNpc(3502, 8, datas.InstanceIDList1500708, false)
end

function Quest15007:OnSubStart1500705(arg1)
    print("OnSubStart1500705")
    this:NpcCreateWithNpcTrigger(npcs.Npc14230.id, 0, 7, 1500705)
    this:BanCrowdNpc(3502, 3, datas.InstanceIDList1500705, true)
end

function Quest15007:OnSubFinish1500705(arg1)
    print("OnSubFinish1500705")
    this:SafeDestroyQuestNpc(npcs.Npc14230.alias, 3)
    this:BanCrowdNpc(3502, 3, datas.InstanceIDList1500705, false)
end

function Quest15007:OnSubStart1500706(arg1)
    print("OnSubStart1500706")
end

function Quest15007:OnSubFinish1500706(arg1)
    print("OnSubFinish1500706")
end

return Quest15007
