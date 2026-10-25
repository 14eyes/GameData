require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76099 = class("Quest76099", QuestActorProxy)
Quest76099.defaultAlias = "Quest76099"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76099:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76099:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7609901"] = self.OnSubStart7609901,
        ["7609920"] = self.OnSubStart7609920,
        ["7609902"] = self.OnSubStart7609902,
        ["7609903"] = self.OnSubStart7609903,
        ["7609925"] = self.OnSubStart7609925,
        ["7609926"] = self.OnSubStart7609926,
        ["7609927"] = self.OnSubStart7609927,
        ["7609904"] = self.OnSubStart7609904,
        ["7609921"] = self.OnSubStart7609921,
        ["7609922"] = self.OnSubStart7609922,
        ["7609907"] = self.OnSubStart7609907,
        ["7609923"] = self.OnSubStart7609923,
        ["7609908"] = self.OnSubStart7609908,
        ["7609905"] = self.OnSubStart7609905,
        ["7609910"] = self.OnSubStart7609910,
        ["7609930"] = self.OnSubStart7609930,
        ["7609915"] = self.OnSubStart7609915,
        ["7609916"] = self.OnSubStart7609916,
        ["7609917"] = self.OnSubStart7609917,
        ["7609911"] = self.OnSubStart7609911,
        ["7609906"] = self.OnSubStart7609906,
        ["7609924"] = self.OnSubStart7609924,
        ["7609912"] = self.OnSubStart7609912,
        ["7609913"] = self.OnSubStart7609913,
        ["7609919"] = self.OnSubStart7609919,
        ["7609909"] = self.OnSubStart7609909,
        ["7609914"] = self.OnSubStart7609914,
        ["7609918"] = self.OnSubStart7609918,
        ["7609928"] = self.OnSubStart7609928,
        ["7609929"] = self.OnSubStart7609929
    }
end

function Quest76099:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7609901"] = self.OnSubFinish7609901,
        ["7609920"] = self.OnSubFinish7609920,
        ["7609902"] = self.OnSubFinish7609902,
        ["7609903"] = self.OnSubFinish7609903,
        ["7609925"] = self.OnSubFinish7609925,
        ["7609926"] = self.OnSubFinish7609926,
        ["7609927"] = self.OnSubFinish7609927,
        ["7609904"] = self.OnSubFinish7609904,
        ["7609921"] = self.OnSubFinish7609921,
        ["7609922"] = self.OnSubFinish7609922,
        ["7609907"] = self.OnSubFinish7609907,
        ["7609923"] = self.OnSubFinish7609923,
        ["7609908"] = self.OnSubFinish7609908,
        ["7609905"] = self.OnSubFinish7609905,
        ["7609910"] = self.OnSubFinish7609910,
        ["7609930"] = self.OnSubFinish7609930,
        ["7609915"] = self.OnSubFinish7609915,
        ["7609916"] = self.OnSubFinish7609916,
        ["7609917"] = self.OnSubFinish7609917,
        ["7609911"] = self.OnSubFinish7609911,
        ["7609906"] = self.OnSubFinish7609906,
        ["7609924"] = self.OnSubFinish7609924,
        ["7609912"] = self.OnSubFinish7609912,
        ["7609913"] = self.OnSubFinish7609913,
        ["7609919"] = self.OnSubFinish7609919,
        ["7609909"] = self.OnSubFinish7609909,
        ["7609914"] = self.OnSubFinish7609914,
        ["7609918"] = self.OnSubFinish7609918,
        ["7609928"] = self.OnSubFinish7609928,
        ["7609929"] = self.OnSubFinish7609929
    }
end

function Quest76099:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7609901"] = self.OnSubFailed7609901,
        ["7609907"] = self.OnSubFailed7609907,
        ["7609928"] = self.OnSubFailed7609928,
        ["7609929"] = self.OnSubFailed7609929
    }
end

function Quest76099:Start()
    print("Start")
end

function Quest76099:OnDestroy()
    print("OnDestroy")
end

function Quest76099:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76099:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76099:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76099:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7609902Trigger")
    this:ActorDestroy("Q7609905Trigger")
    this:ActorDestroy("Q7609915Trigger")
    this:ActorDestroy("Q7609912Trigger")
    this:ActorDestroy("Q7609909Trigger")
    this:ActorDestroy("Q7609901Trigger")
    this:ActorDestroy("Q7609920Trigger")
    this:ActorDestroy("Q7609922Trigger")
    this:ActorDestroy("Q7609924Trigger")
    this:ActorDestroy("Q7609928Trigger")
    this:ActorDestroy("Q7609929Trigger")
end

function Quest76099:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76099:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76099:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest76099:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76099:OnSubStart7609901(arg1)
    print("OnSubStart7609901")
    actorMgr:CreateActorWithPos("Q7609901Trigger", "Actor/Gadget/Q7609901Trigger", 70900002, 0, points._Q7609901TriggerPoint_.pos, points._Q7609901TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609901(arg1)
    print("OnSubFinish7609901")
    this:SetNavigationByMainId(76099, true)
end

function Quest76099:OnSubFailed7609901(arg1)
    print("OnSubFailed7609901")
    this:ActorDestroy("Q7609901Trigger")
end

function Quest76099:OnSubStart7609920(arg1)
    print("OnSubStart7609920")
    actorMgr:CreateActorWithPos("Q7609920Trigger", "Actor/Gadget/Q7609920Trigger", 70900002, 0, points._Q7609920TriggerPoint_.pos, points._Q7609920TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609920(arg1)
    print("OnSubFinish7609920")
    this:SetNavigationByMainId(76099, true)
end

function Quest76099:OnSubStart7609902(arg1)
    print("OnSubStart7609902")
    actorMgr:CreateActorWithPos("Q7609902Trigger", "Actor/Gadget/Q7609902Trigger", 70900002, 0, points._Q7609902TriggerPoint_.pos, points._Q7609902TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609902(arg1)
    print("OnSubFinish7609902")
end

function Quest76099:OnSubStart7609903(arg1)
    print("OnSubStart7609903")
end

function Quest76099:OnSubFinish7609903(arg1)
    print("OnSubFinish7609903")
end

function Quest76099:OnSubStart7609925(arg1)
    print("OnSubStart7609925")
end

function Quest76099:OnSubFinish7609925(arg1)
    print("OnSubFinish7609925")
end

function Quest76099:OnSubStart7609926(arg1)
    print("OnSubStart7609926")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609926, 0, 20, 0.5, npcs.Paimon.id)
end

function Quest76099:OnSubFinish7609926(arg1)
    print("OnSubFinish7609926")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76099:OnSubStart7609927(arg1)
    print("OnSubStart7609927")
end

function Quest76099:OnSubFinish7609927(arg1)
    print("OnSubFinish7609927")
end

function Quest76099:OnSubStart7609904(arg1)
    print("OnSubStart7609904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609904, 0, 30, 0.5, npcs.Npc7181.id)
end

function Quest76099:OnSubFinish7609904(arg1)
    print("OnSubFinish7609904")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
end

function Quest76099:OnSubStart7609921(arg1)
    print("OnSubStart7609921")
    this:DeployStoryByQuest(147609903)
end

function Quest76099:OnSubFinish7609921(arg1)
    print("OnSubFinish7609921")
end

function Quest76099:OnSubStart7609922(arg1)
    print("OnSubStart7609922")
    actorMgr:CreateActorWithPos("Q7609922Trigger", "Actor/Gadget/Q7609922Trigger", 70900002, 0, points._Q7609922TriggerPoint_.pos, points._Q7609922TriggerPoint_.rot, true, false, 3)
    this:DeployStoryByQuest(147609903)
end

function Quest76099:OnSubFinish7609922(arg1)
    print("OnSubFinish7609922")
    this:CancelStoryByQuest(147609903)
end

function Quest76099:OnSubStart7609907(arg1)
    print("OnSubStart7609907")
    this:DeployStoryByQuest(147609900)
end

function Quest76099:OnSubFinish7609907(arg1)
    print("OnSubFinish7609907")
end

function Quest76099:OnSubFailed7609907(arg1)
    print("OnSubFailed7609907")
    this:CancelStoryByQuest(147609900)
end

function Quest76099:OnSubStart7609923(arg1)
    print("OnSubStart7609923")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609923, 0, 15, 0.5, npcs.Npc7181.id)
    this:DeployStoryByQuest(147609900)
end

function Quest76099:OnSubFinish7609923(arg1)
    print("OnSubFinish7609923")
    this:CancelAllStory()
end

function Quest76099:OnSubStart7609908(arg1)
    print("OnSubStart7609908")
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
end

function Quest76099:OnSubFinish7609908(arg1)
    print("OnSubFinish7609908")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
end

function Quest76099:OnSubStart7609905(arg1)
    print("OnSubStart7609905")
    actorMgr:CreateActorWithPos("Q7609905Trigger", "Actor/Gadget/Q7609905Trigger", 70900002, 0, points._Q7609905TriggerPoint_.pos, points._Q7609905TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609905(arg1)
    print("OnSubFinish7609905")
    this:TransmitPlayerByData(arg1, 1, datas.ClientConfigVar, nil, nil, nil)
end

function Quest76099:OnSubStart7609910(arg1)
    print("OnSubStart7609910")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc7181.id, 0, 7609910, 15, true)
end

function Quest76099:OnSubFinish7609910(arg1)
    print("OnSubFinish7609910")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
end

function Quest76099:OnSubStart7609930(arg1)
    print("OnSubStart7609930")
end

function Quest76099:OnSubFinish7609930(arg1)
    print("OnSubFinish7609930")
end

function Quest76099:OnSubStart7609915(arg1)
    print("OnSubStart7609915")
    actorMgr:CreateActorWithPos("Q7609915Trigger", "Actor/Gadget/Q7609915Trigger", 70900002, 0, points._Q7609915TriggerPoint_.pos, points._Q7609915TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609915(arg1)
    print("OnSubFinish7609915")
end

function Quest76099:OnSubStart7609916(arg1)
    print("OnSubStart7609916")
end

function Quest76099:OnSubFinish7609916(arg1)
    print("OnSubFinish7609916")
end

function Quest76099:OnSubStart7609917(arg1)
    print("OnSubStart7609917")
end

function Quest76099:OnSubFinish7609917(arg1)
    print("OnSubFinish7609917")
end

function Quest76099:OnSubStart7609911(arg1)
    print("OnSubStart7609911")
end

function Quest76099:OnSubFinish7609911(arg1)
    print("OnSubFinish7609911")
end

function Quest76099:OnSubStart7609906(arg1)
    print("OnSubStart7609906")
end

function Quest76099:OnSubFinish7609906(arg1)
    print("OnSubFinish7609906")
end

function Quest76099:OnSubStart7609924(arg1)
    print("OnSubStart7609924")
    actorMgr:CreateActorWithPos("Q7609924Trigger", "Actor/Gadget/Q7609924Trigger", 70900002, 0, points._Q7609924TriggerPoint_.pos, points._Q7609924TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609924(arg1)
    print("OnSubFinish7609924")
end

function Quest76099:OnSubStart7609912(arg1)
    print("OnSubStart7609912")
    actorMgr:CreateActorWithPos("Q7609912Trigger", "Actor/Gadget/Q7609912Trigger", 70900002, 0, points._Q7609912TriggerPoint_.pos, points._Q7609912TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609912(arg1)
    print("OnSubFinish7609912")
end

function Quest76099:OnSubStart7609913(arg1)
    print("OnSubStart7609913")
end

function Quest76099:OnSubFinish7609913(arg1)
    print("OnSubFinish7609913")
end

function Quest76099:OnSubStart7609919(arg1)
    print("OnSubStart7609919")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609919, 0, 15, 0.5, npcs.Npc22199.id)
end

function Quest76099:OnSubFinish7609919(arg1)
    print("OnSubFinish7609919")
    this:SafeDestroyQuestNpc(npcs.Npc22199.alias, 3)
end

function Quest76099:OnSubStart7609909(arg1)
    print("OnSubStart7609909")
    actorMgr:CreateActorWithPos("Q7609909Trigger", "Actor/Gadget/Q7609909Trigger", 70900002, 0, points._Q7609909TriggerPoint_.pos, points._Q7609909TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609909(arg1)
    print("OnSubFinish7609909")
    this:TransmitPlayerByData(arg1, 2, datas.ClientConfigVar, nil, nil, nil)
end

function Quest76099:OnSubStart7609914(arg1)
    print("OnSubStart7609914")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc7181.id, 0, 7609914, 15, true)
end

function Quest76099:OnSubFinish7609914(arg1)
    print("OnSubFinish7609914")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7181.alias)
    local questGlobalVar = this:GetQuestGlobalVar(7609301)
    if questGlobalVar == 1 then
        this:SetNavigationByMainId(76100, true)
    elseif questGlobalVar == 0 then
        this:SetNavigationByMainId(76093, true)
    end
end

function Quest76099:OnSubStart7609918(arg1)
    print("OnSubStart7609918")
    this:CreateQuestNpc(arg1, npcs.Npc7610.id, 0, false, 0)
end

function Quest76099:OnSubFinish7609918(arg1)
    print("OnSubFinish7609918")
    this:SafeDestroyQuestNpc(npcs.Npc7610.alias, 3)
end

function Quest76099:OnSubStart7609928(arg1)
    print("OnSubStart7609928")
    actorMgr:CreateActorWithPos("Q7609928Trigger", "Actor/Gadget/Q7609928Trigger", 70900002, 0, points._Q7609928TriggerPoint_.pos, points._Q7609928TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609928(arg1)
    print("OnSubFinish7609928")
end

function Quest76099:OnSubFailed7609928(arg1)
    print("OnSubFailed7609928")
    this:ActorDestroy("Q7609928Trigger")
end

function Quest76099:OnSubStart7609929(arg1)
    print("OnSubStart7609929")
    actorMgr:CreateActorWithPos("Q7609929Trigger", "Actor/Gadget/Q7609929Trigger", 70900002, 0, points._Q7609929TriggerPoint_.pos, points._Q7609929TriggerPoint_.rot, true, false, 3)
end

function Quest76099:OnSubFinish7609929(arg1)
    print("OnSubFinish7609929")
end

function Quest76099:OnSubFailed7609929(arg1)
    print("OnSubFailed7609929")
    this:ActorDestroy("Q7609929Trigger")
end

return Quest76099
