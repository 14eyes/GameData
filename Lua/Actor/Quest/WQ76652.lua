require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76652 = class("Quest76652", QuestActorProxy)
Quest76652.defaultAlias = "Quest76652"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76652:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76652:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7665210"] = self.OnSubStart7665210,
        ["7665201"] = self.OnSubStart7665201,
        ["7665202"] = self.OnSubStart7665202,
        ["7665203"] = self.OnSubStart7665203,
        ["7665204"] = self.OnSubStart7665204,
        ["7665205"] = self.OnSubStart7665205,
        ["7665206"] = self.OnSubStart7665206,
        ["7665207"] = self.OnSubStart7665207,
        ["7665208"] = self.OnSubStart7665208,
        ["7665209"] = self.OnSubStart7665209,
        ["7665211"] = self.OnSubStart7665211
    }
end

function Quest76652:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7665210"] = self.OnSubFinish7665210,
        ["7665201"] = self.OnSubFinish7665201,
        ["7665202"] = self.OnSubFinish7665202,
        ["7665203"] = self.OnSubFinish7665203,
        ["7665204"] = self.OnSubFinish7665204,
        ["7665205"] = self.OnSubFinish7665205,
        ["7665206"] = self.OnSubFinish7665206,
        ["7665207"] = self.OnSubFinish7665207,
        ["7665208"] = self.OnSubFinish7665208,
        ["7665209"] = self.OnSubFinish7665209,
        ["7665211"] = self.OnSubFinish7665211
    }
end

function Quest76652:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76652:Start()
    print("Start")
end

function Quest76652:OnDestroy()
    print("OnDestroy")
end

function Quest76652:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76652:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76652:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:DestroyNpcTrigger("Q7665201N1313Trigger")
end

function Quest76652:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7665203Trigger")
    this:ActorDestroy("Q7665209Trigger")
end

function Quest76652:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76652:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76652:OnSubStart7665210(arg1)
    print("OnSubStart7665210")
end

function Quest76652:OnSubFinish7665210(arg1)
    print("OnSubFinish7665210")
end

function Quest76652:OnSubStart7665201(arg1)
    print("OnSubStart7665201")
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 76652):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc1313.id, 0, 10, 7665201)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 76652):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest76652:OnSubFinish7665201(arg1)
    print("OnSubFinish7665201")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

function Quest76652:OnSubStart7665202(arg1)
    print("OnSubStart7665202")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1312.alias, 76652):DoFreeStyle(1340, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1313.alias, 76652):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest76652:OnSubFinish7665202(arg1)
    print("OnSubFinish7665202")
end

function Quest76652:OnSubStart7665203(arg1)
    print("OnSubStart7665203")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 76652):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7665203Trigger", "Actor/Gadget/Q7665203Trigger", 70900002, 0, points._Q7665203TriggerPoint_.pos, points._Q7665203TriggerPoint_.rot, true, false, 3)
end

function Quest76652:OnSubFinish7665203(arg1)
    print("OnSubFinish7665203")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:ActorDestroy("Q7665203Trigger")
    this:TransmitPlayerByQuestId(7665203, 1, nil, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_9665299, nil)
    end, nil)
end

function Quest76652:OnSubStart7665204(arg1)
    print("OnSubStart7665204")
end

function Quest76652:OnSubFinish7665204(arg1)
    print("OnSubFinish7665204")
end

function Quest76652:OnSubStart7665205(arg1)
    print("OnSubStart7665205")
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 76652):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc1313.id, 0, 20, 7665205)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 76652):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76652:OnSubFinish7665205(arg1)
    print("OnSubFinish7665205")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

function Quest76652:OnSubStart7665206(arg1)
    print("OnSubStart7665206")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1313.alias, 76652):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15520.id, 0, false, 0)
    end)
end

function Quest76652:OnSubFinish7665206(arg1)
    print("OnSubFinish7665206")
    this:SafeDestroyQuestNpc(npcs.Npc15520.alias, 3)
end

function Quest76652:OnSubStart7665207(arg1)
    print("OnSubStart7665207")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 76652):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 76652):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76652:OnSubFinish7665207(arg1)
    print("OnSubFinish7665207")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:TransmitPlayerByQuestId(7665207, 2, nil, nil, nil)
end

function Quest76652:OnSubStart7665208(arg1)
    print("OnSubStart7665208")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1312.alias, 76652):DoFreeStyle(1340, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1313.alias, 76652):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest76652:OnSubFinish7665208(arg1)
    print("OnSubFinish7665208")
end

function Quest76652:OnSubStart7665209(arg1)
    print("OnSubStart7665209")
    this:GetQuestNpcActor(npcs.Npc1313.alias, 76652):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7665209Trigger", "Actor/Gadget/Q7665209Trigger", 70900002, 0, points._Q7665209TriggerPoint_.pos, points._Q7665209TriggerPoint_.rot, true, false, 3)
end

function Quest76652:OnSubFinish7665209(arg1)
    print("OnSubFinish7665209")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:ActorDestroy("Q7665209Trigger")
end

function Quest76652:OnSubStart7665211(arg1)
    print("OnSubStart7665211")
    actorUtils.FinishQuestID(false, 7665211)
end

function Quest76652:OnSubFinish7665211(arg1)
    print("OnSubFinish7665211")
end

return Quest76652
