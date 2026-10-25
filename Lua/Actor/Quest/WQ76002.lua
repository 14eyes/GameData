require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76002 = class("Quest76002", QuestActorProxy)
Quest76002.defaultAlias = "Quest76002"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76002:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600201"] = self.OnSubStart7600201,
        ["7600202"] = self.OnSubStart7600202,
        ["7600203"] = self.OnSubStart7600203,
        ["7600204"] = self.OnSubStart7600204,
        ["7600205"] = self.OnSubStart7600205,
        ["7600206"] = self.OnSubStart7600206,
        ["7600207"] = self.OnSubStart7600207,
        ["7600208"] = self.OnSubStart7600208
    }
end

function Quest76002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600201"] = self.OnSubFinish7600201,
        ["7600202"] = self.OnSubFinish7600202,
        ["7600203"] = self.OnSubFinish7600203,
        ["7600204"] = self.OnSubFinish7600204,
        ["7600205"] = self.OnSubFinish7600205,
        ["7600206"] = self.OnSubFinish7600206,
        ["7600207"] = self.OnSubFinish7600207,
        ["7600208"] = self.OnSubFinish7600208
    }
end

function Quest76002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76002:Start()
    print("Start")
end

function Quest76002:OnDestroy()
    print("OnDestroy")
end

function Quest76002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76002:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7600201Trigger")
    this:ActorDestroy("Q7600201InteractTrigger")
    this:ActorDestroy("Q7600203Trigger")
    this:ActorDestroy("Q7600205Trigger")
    this:ActorDestroy("Q7600204Trigger")
    this:ActorDestroy("Q7600202Trigger")
end

function Quest76002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest76002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76002:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76002:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76002:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76002:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest76002:OnSubStart7600201(arg1)
    print("OnSubStart7600201")
    this:CreateQuestNpc(arg1, npcs.Npc22019.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22020.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22055.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22056.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22057.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600201Trigger", "Actor/Gadget/Q7600201Trigger", 70900002, 0, points._Q7600201TriggerPoint_.pos, points._Q7600201TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600201InteractTrigger", "Actor/Gadget/Q7600201InteractTrigger", 70900002, 0, points._Q7600201InteractTriggerPoint_.pos, points._Q7600201InteractTriggerPoint_.rot, true, false, 3)
end

function Quest76002:OnSubFinish7600201(arg1)
    print("OnSubFinish7600201")
    this:NpcDestroyImmediately(3, npcs.Npc22019.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22020.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22055.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22056.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22057.alias)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest76002:OnSubStart7600202(arg1)
    print("OnSubStart7600202")
    this:CallDelayByQuest("Q7600202DelayCall", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q7600202Trigger", "Actor/Gadget/Q7600202Trigger", 70900002, 0, points._Q7600202TriggerPoint_.pos, points._Q7600202TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76002:OnSubFinish7600202(arg1)
    print("OnSubFinish7600202")
end

function Quest76002:OnSubStart7600203(arg1)
    print("OnSubStart7600203")
    this:CallDelayByQuest("Q7600203DelayCall", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q7600203Trigger", "Actor/Gadget/Q7600203Trigger", 70900002, 0, points._Q7600203TriggerPoint_.pos, points._Q7600203TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76002:OnSubFinish7600203(arg1)
    print("OnSubFinish7600203")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22019.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22055.alias, 3)
end

function Quest76002:OnSubStart7600204(arg1)
    print("OnSubStart7600204")
    this:CallDelayByQuest("Q7600204DelayCall", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q7600204Trigger", "Actor/Gadget/Q7600204Trigger", 70900002, 0, points._Q7600204TriggerPoint_.pos, points._Q7600204TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76002:OnSubFinish7600204(arg1)
    print("OnSubFinish7600204")
end

function Quest76002:OnSubStart7600205(arg1)
    print("OnSubStart7600205")
    this:CallDelayByQuest("Q7600205DelayCall", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q7600205Trigger", "Actor/Gadget/Q7600205Trigger", 70900002, 0, points._Q7600205TriggerPoint_.pos, points._Q7600205TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76002:OnSubFinish7600205(arg1)
    print("OnSubFinish7600205")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22020.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22056.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22057.alias, 3)
end

function Quest76002:OnSubStart7600206(arg1)
    print("OnSubStart7600206")
end

function Quest76002:OnSubFinish7600206(arg1)
    print("OnSubFinish7600206")
end

function Quest76002:OnSubStart7600207(arg1)
    print("OnSubStart7600207")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7600207, 0, 40, 2, npcs.Paimon.id)
end

function Quest76002:OnSubFinish7600207(arg1)
    print("OnSubFinish7600207")
    globalActor:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:GetQuestNpcActor(npcs.Paimon.alias, 76002):DestroyWithDisappear(false, nil)
end

function Quest76002:OnSubStart7600208(arg1)
    print("OnSubStart7600208")
end

function Quest76002:OnSubFinish7600208(arg1)
    print("OnSubFinish7600208")
    if this:CheckSubQuestState(7600207, 3, false) then
        this:QuestNarratorTask(datas.NarratorWithId_7600204, nil)
    else
        this:QuestNarratorTask(datas.NarratorWithId_7600205, nil)
    end
end

return Quest76002
