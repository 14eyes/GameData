require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15041 = class("Quest15041", QuestActorProxy)
Quest15041.defaultAlias = "Quest15041"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15041:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504101"] = self.OnSubStart1504101,
        ["1504112"] = self.OnSubStart1504112,
        ["1504102"] = self.OnSubStart1504102,
        ["1504103"] = self.OnSubStart1504103,
        ["1504104"] = self.OnSubStart1504104,
        ["1504105"] = self.OnSubStart1504105,
        ["1504106"] = self.OnSubStart1504106,
        ["1504107"] = self.OnSubStart1504107,
        ["1504108"] = self.OnSubStart1504108,
        ["1504109"] = self.OnSubStart1504109,
        ["1504110"] = self.OnSubStart1504110,
        ["1504111"] = self.OnSubStart1504111,
        ["1504124"] = self.OnSubStart1504124,
        ["1504113"] = self.OnSubStart1504113,
        ["1504114"] = self.OnSubStart1504114,
        ["1504115"] = self.OnSubStart1504115,
        ["1504116"] = self.OnSubStart1504116,
        ["1504117"] = self.OnSubStart1504117,
        ["1504125"] = self.OnSubStart1504125,
        ["1504118"] = self.OnSubStart1504118,
        ["1504119"] = self.OnSubStart1504119,
        ["1504120"] = self.OnSubStart1504120,
        ["1504127"] = self.OnSubStart1504127,
        ["1504126"] = self.OnSubStart1504126,
        ["1504121"] = self.OnSubStart1504121,
        ["1504122"] = self.OnSubStart1504122,
        ["1504123"] = self.OnSubStart1504123
    }
end

function Quest15041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504101"] = self.OnSubFinish1504101,
        ["1504112"] = self.OnSubFinish1504112,
        ["1504102"] = self.OnSubFinish1504102,
        ["1504103"] = self.OnSubFinish1504103,
        ["1504104"] = self.OnSubFinish1504104,
        ["1504105"] = self.OnSubFinish1504105,
        ["1504106"] = self.OnSubFinish1504106,
        ["1504107"] = self.OnSubFinish1504107,
        ["1504108"] = self.OnSubFinish1504108,
        ["1504109"] = self.OnSubFinish1504109,
        ["1504110"] = self.OnSubFinish1504110,
        ["1504111"] = self.OnSubFinish1504111,
        ["1504124"] = self.OnSubFinish1504124,
        ["1504113"] = self.OnSubFinish1504113,
        ["1504114"] = self.OnSubFinish1504114,
        ["1504115"] = self.OnSubFinish1504115,
        ["1504116"] = self.OnSubFinish1504116,
        ["1504117"] = self.OnSubFinish1504117,
        ["1504125"] = self.OnSubFinish1504125,
        ["1504118"] = self.OnSubFinish1504118,
        ["1504119"] = self.OnSubFinish1504119,
        ["1504120"] = self.OnSubFinish1504120,
        ["1504127"] = self.OnSubFinish1504127,
        ["1504126"] = self.OnSubFinish1504126,
        ["1504121"] = self.OnSubFinish1504121,
        ["1504122"] = self.OnSubFinish1504122,
        ["1504123"] = self.OnSubFinish1504123
    }
end

function Quest15041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1504101"] = self.OnSubFailed1504101}
end

function Quest15041:Start()
    print("Start")
end

function Quest15041:OnDestroy()
    print("OnDestroy")
end

function Quest15041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15041:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15041:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1504113Trigger")
    this:ActorDestroy("Q1504105Trigger")
    this:ActorDestroy("Q1504117Trigger")
end

function Quest15041:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 150412701 then
        actorUtils.FinishQuestID(false, 1504127)
    end
end

function Quest15041:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15041:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15041:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15041:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15041:OnSubStart1504101(arg1)
    print("OnSubStart1504101")
    this:NpcCreateWithNpcTrigger(npcs.Npc6552.id, 0, 15, 1504101)
    this:GetQuestNpcActor(npcs.Npc6552.alias, 15041):DoFreeStyle(1, true, nil, true, true, false, false)
end

function Quest15041:OnSubFinish1504101(arg1)
    print("OnSubFinish1504101")
    this:SafeDestroyQuestNpc(npcs.Npc6552.alias, 3)
    this:SetNavigationByMainId(15041, true)
end

function Quest15041:OnSubFailed1504101(arg1)
    print("OnSubFailed1504101")
    this:ClearNpcTriggerByQuestId(1504101)
    this:SafeDestroyQuestNpc(npcs.Npc6552.alias, 3)
end

function Quest15041:OnSubStart1504112(arg1)
    print("OnSubStart1504112")
end

function Quest15041:OnSubFinish1504112(arg1)
    print("OnSubFinish1504112")
end

function Quest15041:OnSubStart1504102(arg1)
    print("OnSubStart1504102")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504102, 0, 10, 1, npcs.Npc21846.id)
end

function Quest15041:OnSubFinish1504102(arg1)
    print("OnSubFinish1504102")
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
end

function Quest15041:OnSubStart1504103(arg1)
    print("OnSubStart1504103")
end

function Quest15041:OnSubFinish1504103(arg1)
    print("OnSubFinish1504103")
end

function Quest15041:OnSubStart1504104(arg1)
    print("OnSubStart1504104")
end

function Quest15041:OnSubFinish1504104(arg1)
    print("OnSubFinish1504104")
end

function Quest15041:OnSubStart1504105(arg1)
    print("OnSubStart1504105")
    actorMgr:CreateActorWithPos("Q1504105Trigger", "Actor/Gadget/Q1504105Trigger", 70900002, 0, points._Q1504105TriggerPoint_.pos, points._Q1504105TriggerPoint_.rot, true, false, 3)
end

function Quest15041:OnSubFinish1504105(arg1)
    print("OnSubFinish1504105")
end

function Quest15041:OnSubStart1504106(arg1)
    print("OnSubStart1504106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504106, 0, 10, 1, npcs.Npc21846.id)
end

function Quest15041:OnSubFinish1504106(arg1)
    print("OnSubFinish1504106")
end

function Quest15041:OnSubStart1504107(arg1)
    print("OnSubStart1504107")
    this:CreateQuestNpc(arg1, npcs.Npc21846.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21846.alias, 15041):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest15041:OnSubFinish1504107(arg1)
    print("OnSubFinish1504107")
end

function Quest15041:OnSubStart1504108(arg1)
    print("OnSubStart1504108")
    this:LevelReadySafeCall(function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:NpcCreateWithNpcTriggerAndBlackscreen(1504108, 0, 10, 1, npcs.Npc21846.id)
        end)
    end)
end

function Quest15041:OnSubFinish1504108(arg1)
    print("OnSubFinish1504108")
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
end

function Quest15041:OnSubStart1504109(arg1)
    print("OnSubStart1504109")
end

function Quest15041:OnSubFinish1504109(arg1)
    print("OnSubFinish1504109")
end

function Quest15041:OnSubStart1504110(arg1)
    print("OnSubStart1504110")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504110, 0, 10, 1, npcs.Npc21846.id)
end

function Quest15041:OnSubFinish1504110(arg1)
    print("OnSubFinish1504110")
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
end

function Quest15041:OnSubStart1504111(arg1)
    print("OnSubStart1504111")
end

function Quest15041:OnSubFinish1504111(arg1)
    print("OnSubFinish1504111")
    this:QuestNarratorTask(datas.NarratorWithId_1504102, nil)
end

function Quest15041:OnSubStart1504124(arg1)
    print("OnSubStart1504124")
end

function Quest15041:OnSubFinish1504124(arg1)
    print("OnSubFinish1504124")
end

function Quest15041:OnSubStart1504113(arg1)
    print("OnSubStart1504113")
    actorMgr:CreateActorWithPos("Q1504113Trigger", "Actor/Gadget/Q1504113Trigger", 70900002, 0, points._Q1504113TriggerPoint_.pos, points._Q1504113TriggerPoint_.rot, true, false, 3)
end

function Quest15041:OnSubFinish1504113(arg1)
    print("OnSubFinish1504113")
    this:QuestNarratorTask(datas.NarratorWithId_1504103, nil)
end

function Quest15041:OnSubStart1504114(arg1)
    print("OnSubStart1504114")
end

function Quest15041:OnSubFinish1504114(arg1)
    print("OnSubFinish1504114")
end

function Quest15041:OnSubStart1504115(arg1)
    print("OnSubStart1504115")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504115, 0, 18, 1, npcs.Npc21846.id)
    this:CreateLocalGadget(73005277, "1", points.Q1504115_Gadget73005277_1_Point.pos, points.Q1504115_Gadget73005277_1_Point.rot, 3, nil, nil, false, 0, true)
end

function Quest15041:OnSubFinish1504115(arg1)
    print("OnSubFinish1504115")
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
    this:RemoveLocalGadget(73005277, "1")
end

function Quest15041:OnSubStart1504116(arg1)
    print("OnSubStart1504116")
    this:DeployStoryByQuest(121504101)
end

function Quest15041:OnSubFinish1504116(arg1)
    print("OnSubFinish1504116")
    this:CancelStoryByQuest(121504101)
end

function Quest15041:OnSubStart1504117(arg1)
    print("OnSubStart1504117")
    actorMgr:CreateActorWithPos("Q1504117Trigger", "Actor/Gadget/Q1504117Trigger", 70900002, 0, points._Q1504117TriggerPoint_.pos, points._Q1504117TriggerPoint_.rot, true, false, 3)
end

function Quest15041:OnSubFinish1504117(arg1)
    print("OnSubFinish1504117")
end

function Quest15041:OnSubStart1504125(arg1)
    print("OnSubStart1504125")
    this:NpcCreateWithNpcTrigger(npcs.Npc21865.id, 0, 20, 1504125)
end

function Quest15041:OnSubFinish1504125(arg1)
    print("OnSubFinish1504125")
    this:SafeDestroyQuestNpc(npcs.Npc21865.alias, 3)
end

function Quest15041:OnSubStart1504118(arg1)
    print("OnSubStart1504118")
end

function Quest15041:OnSubFinish1504118(arg1)
    print("OnSubFinish1504118")
end

function Quest15041:OnSubStart1504119(arg1)
    print("OnSubStart1504119")
end

function Quest15041:OnSubFinish1504119(arg1)
    print("OnSubFinish1504119")
    this:QuestNarratorTask(datas.NarratorWithId_1504106, nil)
end

function Quest15041:OnSubStart1504120(arg1)
    print("OnSubStart1504120")
    this:NpcCreateWithNpcTrigger(npcs.Npc21846.id, 0, 10, 1504120)
    this:GetQuestNpcActor(npcs.Npc21846.alias, 15041):DoFreeStyle(1080, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21867.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21867.alias, 15041):DoFreeStyle(8, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6552.id, arg1)
    this:GetQuestNpcActor(npcs.Npc6552.alias, 15041):DoFreeStyle(9, true, nil, true, true, false, false)
end

function Quest15041:OnSubFinish1504120(arg1)
    print("OnSubFinish1504120")
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21867.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6552.alias, 3)
end

function Quest15041:OnSubStart1504127(arg1)
    print("OnSubStart1504127")
end

function Quest15041:OnSubFinish1504127(arg1)
    print("OnSubFinish1504127")
end

function Quest15041:OnSubStart1504126(arg1)
    print("OnSubStart1504126")
end

function Quest15041:OnSubFinish1504126(arg1)
    print("OnSubFinish1504126")
end

function Quest15041:OnSubStart1504121(arg1)
    print("OnSubStart1504121")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6552.id, arg1)
    this:GetQuestNpcActor(npcs.Npc6552.alias, 15041):DoFreeStyle(2, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6552.alias, 15041):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc21948.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21948.alias, 15041):DoFreeStyle(8, true, nil, true, true, false, false)
end

function Quest15041:OnSubFinish1504121(arg1)
    print("OnSubFinish1504121")
    this:SafeDestroyQuestNpc(npcs.Npc6552.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21948.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_1504107, nil)
end

function Quest15041:OnSubStart1504122(arg1)
    print("OnSubStart1504122")
end

function Quest15041:OnSubFinish1504122(arg1)
    print("OnSubFinish1504122")
end

function Quest15041:OnSubStart1504123(arg1)
    print("OnSubStart1504123")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(1504123, 0, 10, 1, npcs.Npc21846.id)
    end)
end

function Quest15041:OnSubFinish1504123(arg1)
    print("OnSubFinish1504123")
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
    this:SetNavigationByMainId(15043, true)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HolidayMemoryBookPage", 2)
    end)
end

return Quest15041
