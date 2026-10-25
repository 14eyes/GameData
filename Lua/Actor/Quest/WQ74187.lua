require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74187 = class("Quest74187", QuestActorProxy)
Quest74187.defaultAlias = "Quest74187"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74187:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74187:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7418701"] = self.OnSubStart7418701,
        ["7418702"] = self.OnSubStart7418702,
        ["7418705"] = self.OnSubStart7418705,
        ["7418703"] = self.OnSubStart7418703,
        ["7418704"] = self.OnSubStart7418704,
        ["7418706"] = self.OnSubStart7418706,
        ["7418707"] = self.OnSubStart7418707
    }
end

function Quest74187:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7418701"] = self.OnSubFinish7418701,
        ["7418702"] = self.OnSubFinish7418702,
        ["7418705"] = self.OnSubFinish7418705,
        ["7418703"] = self.OnSubFinish7418703,
        ["7418704"] = self.OnSubFinish7418704,
        ["7418706"] = self.OnSubFinish7418706,
        ["7418707"] = self.OnSubFinish7418707
    }
end

function Quest74187:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74187:Start()
    print("Start")
end

function Quest74187:OnDestroy()
    print("OnDestroy")
end

function Quest74187:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74187:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74187:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74187:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74187:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74187:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74187:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ShowQuestLikingBar(74187, npcs.Npc21358Data.id, 40, false, "TRUST_EXP_NAME")
        emition = 40
    elseif arg1 == 101 then
        emition = emition + 20
        self:UpdateQuestLikingBar(emition, false, "TRUST_LEVEL_UP")
    elseif arg1 == 102 then
        emition = emition - 30
        self:UpdateQuestLikingBar(emition, false, "TRUST_LEVEL_DOWN")
    elseif arg1 == 103 then
        if emition <= 0 then
            this:HideQuestLikingBar()
            this:SetQuestVarByMainId(0, 1)
        end
    elseif arg1 == 104 then
        this:HideQuestLikingBar()
        if emition <= 0 then
            this:SetQuestVarByMainId(0, 1)
        end
    elseif arg1 == 105 then
        this:HideQuestLikingBar()
        emition = 0
    end
end

function Quest74187:OnSubStart7418701(arg1)
    print("OnSubStart7418701")
    this:CreateQuestNpc(arg1, npcs.Npc21358Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21358Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21359Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21359Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21427Data.id, 0)
    actorMgr:CreateActorWithPos("Q7418701Trigger", "Actor/Gadget/Q7418701Trigger", 70900002, 0, {x = 1646.071, y = 591.571, z = 4645.766}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74187:OnSubFinish7418701(arg1)
    print("OnSubFinish7418701")
end

function Quest74187:OnSubStart7418702(arg1)
    print("OnSubStart7418702")
    this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21358Data.id, 7418702, 0, 30, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21359Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21427Data.id, 0)
    this:HideQuestLikingBar()
end

function Quest74187:OnSubFinish7418702(arg1)
    print("OnSubFinish7418702")
    this:SafeDestroyQuestNpc(npcs.Npc21338Data.alias, 11)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21358Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21359Data.alias, 11)
end

function Quest74187:OnSubStart7418705(arg1)
    print("OnSubStart7418705")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21427Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21427Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
end

function Quest74187:OnSubFinish7418705(arg1)
    print("OnSubFinish7418705")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74187:OnSubStart7418703(arg1)
    print("OnSubStart7418703")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21427Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21427Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:HideQuestLikingBar()
end

function Quest74187:OnSubFinish7418703(arg1)
    print("OnSubFinish7418703")
end

function Quest74187:OnSubStart7418704(arg1)
    print("OnSubStart7418704")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7418704, function(arg1)
            actorUtils.FinishQuestID(false, 7418704)
        end, nil, nil, false)
    end)
end

function Quest74187:OnSubFinish7418704(arg1)
    print("OnSubFinish7418704")
end

function Quest74187:OnSubStart7418706(arg1)
    print("OnSubStart7418706")
    this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21427Data.id, 7418706, 0, 20, 1)
end

function Quest74187:OnSubFinish7418706(arg1)
    print("OnSubFinish7418706")
    this:SafeDestroyQuestNpc(npcs.Npc21338Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21427Data.alias, 11)
end

function Quest74187:OnSubStart7418707(arg1)
    print("OnSubStart7418707")
end

function Quest74187:OnSubFinish7418707(arg1)
    print("OnSubFinish7418707")
end

return Quest74187
