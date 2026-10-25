require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70681 = class("Quest70681", QuestActorProxy)
Quest70681.defaultAlias = "Quest70681"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70681:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70681:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7068109"] = self.OnSubStart7068109,
        ["7068110"] = self.OnSubStart7068110,
        ["7068101"] = self.OnSubStart7068101,
        ["7068102"] = self.OnSubStart7068102,
        ["7068103"] = self.OnSubStart7068103,
        ["7068104"] = self.OnSubStart7068104,
        ["7068105"] = self.OnSubStart7068105,
        ["7068106"] = self.OnSubStart7068106,
        ["7068107"] = self.OnSubStart7068107,
        ["7068108"] = self.OnSubStart7068108
    }
end

function Quest70681:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7068109"] = self.OnSubFinish7068109,
        ["7068110"] = self.OnSubFinish7068110,
        ["7068101"] = self.OnSubFinish7068101,
        ["7068102"] = self.OnSubFinish7068102,
        ["7068103"] = self.OnSubFinish7068103,
        ["7068104"] = self.OnSubFinish7068104,
        ["7068105"] = self.OnSubFinish7068105,
        ["7068106"] = self.OnSubFinish7068106,
        ["7068107"] = self.OnSubFinish7068107,
        ["7068108"] = self.OnSubFinish7068108
    }
end

function Quest70681:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70681:Start()
    print("Start")
end

function Quest70681:OnDestroy()
    print("OnDestroy")
end

function Quest70681:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70681:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70681:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70681:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70681:OnSubStart7068109(arg1)
    print("OnSubStart7068109")
    this:SetQuestVarByMainId(0, 1)
    actorUtils.FinishQuestID(false, 7068109)
end

function Quest70681:OnSubFinish7068109(arg1)
    print("OnSubFinish7068109")
end

function Quest70681:OnSubStart7068110(arg1)
    print("OnSubStart7068110")
    actorUtils.FinishQuestID(false, 7068110)
end

function Quest70681:OnSubFinish7068110(arg1)
    print("OnSubFinish7068110")
    if this:GetQuestVar(7068110, 0) == 0 then
        this:SetNavigationByMainId(70681, true)
    end
end

function Quest70681:OnSubStart7068101(arg1)
    print("OnSubStart7068101")
    this:CreateQuestNpc(arg1, npcs.Npc14466.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14466.alias, 70681):DoFreeStyle(4190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7068101Trigger", "Actor/Gadget/Q7068101Trigger", 70900002, 0, points._Q7068101TriggerPoint_.pos, points._Q7068101TriggerPoint_.rot, true, false, 3)
end

function Quest70681:OnSubFinish7068101(arg1)
    print("OnSubFinish7068101")
    this:QuestNarratorTask(datas.NarratorWithId_7068101, nil)
    this:EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
end

function Quest70681:OnSubStart7068102(arg1)
    print("OnSubStart7068102")
    this:GetQuestNpcActor(npcs.Npc14466.alias, 70681):DoFreeStyle(4190, true, nil, true, true, false, true)
    this:CreateSpeechBubbleTask(npcs.Npc14466.id, 706819904, 2, true, 1, 2, true, false)
end

function Quest70681:OnSubFinish7068102(arg1)
    print("OnSubFinish7068102")
    this:ClearSpeechBubbleTask()
end

function Quest70681:OnSubStart7068103(arg1)
    print("OnSubStart7068103")
    this:GetQuestNpcActor(npcs.Npc14466.alias, 70681):DoFreeStyle(4190, true, nil, true, true, false, true)
end

function Quest70681:OnSubFinish7068103(arg1)
    print("OnSubFinish7068103")
    this:SafeDestroyQuestNpc(npcs.Npc14466.alias, 3)
    this:ClearSpeechBubbleTask()
    this:GetQuestNpcActor(npcs.Npc14466.alias, 70681):DoFreeStateTrigger()
end

function Quest70681:OnSubStart7068104(arg1)
    print("OnSubStart7068104")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7068104, 0, 15, 1, npcs.Npc14466.id)
end

function Quest70681:OnSubFinish7068104(arg1)
    print("OnSubFinish7068104")
    this:SafeDestroyQuestNpc(npcs.Npc14466.alias, 3)
end

function Quest70681:OnSubStart7068105(arg1)
    print("OnSubStart7068105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7068105, 0, 18, 1, npcs.Npc14466.id)
end

function Quest70681:OnSubFinish7068105(arg1)
    print("OnSubFinish7068105")
end

function Quest70681:OnSubStart7068106(arg1)
    print("OnSubStart7068106")
    this:CreateQuestNpc(arg1, npcs.Npc14466.id, 0, false, 0)
end

function Quest70681:OnSubFinish7068106(arg1)
    print("OnSubFinish7068106")
    this:SafeDestroyQuestNpc(npcs.Npc14466.alias, 3)
end

function Quest70681:OnSubStart7068107(arg1)
    print("OnSubStart7068107")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7068107, 0, 20, 1, npcs.Npc14466.id)
end

function Quest70681:OnSubFinish7068107(arg1)
    print("OnSubFinish7068107")
    this:SafeDestroyQuestNpc(npcs.Npc14466.alias, 3)
end

function Quest70681:OnSubStart7068108(arg1)
    print("OnSubStart7068108")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7068108, 0, 8, 1, npcs.Npc14466.id)
end

function Quest70681:OnSubFinish7068108(arg1)
    print("OnSubFinish7068108")
    this:SafeDestroyQuestNpc(npcs.Npc14466.alias, 3)
end

return Quest70681
