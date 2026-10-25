require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75108 = class("Quest75108", QuestActorProxy)
Quest75108.defaultAlias = "Quest75108"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75108:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75108:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7510801"] = self.OnSubStart7510801,
        ["7510803"] = self.OnSubStart7510803,
        ["7510808"] = self.OnSubStart7510808,
        ["7510804"] = self.OnSubStart7510804,
        ["7510805"] = self.OnSubStart7510805,
        ["7510802"] = self.OnSubStart7510802,
        ["7510806"] = self.OnSubStart7510806,
        ["7510807"] = self.OnSubStart7510807
    }
end

function Quest75108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7510801"] = self.OnSubFinish7510801,
        ["7510803"] = self.OnSubFinish7510803,
        ["7510808"] = self.OnSubFinish7510808,
        ["7510804"] = self.OnSubFinish7510804,
        ["7510805"] = self.OnSubFinish7510805,
        ["7510802"] = self.OnSubFinish7510802,
        ["7510806"] = self.OnSubFinish7510806,
        ["7510807"] = self.OnSubFinish7510807
    }
end

function Quest75108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75108:Start()
    print("Start")
end

function Quest75108:OnDestroy()
    print("OnDestroy")
end

function Quest75108:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75108:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75108:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75108:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75108:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest75108:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest75108:OnSubStart7510801(arg1)
    print("OnSubStart7510801")
    this:CreateQuestNpc(arg1, npcs.Npc21689.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21689.alias, 75108):DoFreeStyle(4, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7510801_trigger", "Actor/Gadget/Q7510801_trigger", 70900002, 0, points._Q7510801_triggerPoint_.pos, points._Q7510801_triggerPoint_.rot, true, false, nil)
    this:DeployStoryByQuest(147510801)
end

function Quest75108:OnSubFinish7510801(arg1)
    print("OnSubFinish7510801")
end

function Quest75108:OnSubStart7510803(arg1)
    print("OnSubStart7510803")
    this:GetQuestNpcActor(npcs.Npc21689.alias, 75108):DoFreeStyle(4, true, nil, true, true, false, false)
    this:DeployStoryByQuest(147510801)
end

function Quest75108:OnSubFinish7510803(arg1)
    print("OnSubFinish7510803")
end

function Quest75108:OnSubStart7510808(arg1)
    print("OnSubStart7510808")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21460.id, 0, 7510808, 30, false)
    this:DeployStoryByQuest(147510801)
end

function Quest75108:OnSubFinish7510808(arg1)
    print("OnSubFinish7510808")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75108:OnSubStart7510804(arg1)
    print("OnSubStart7510804")
    this:GetQuestNpcActor(npcs.Npc21689.alias, 75108):DoFreeStyle(4, true, nil, true, true, false, false)
    this:DeployStoryByQuest(147510801)
end

function Quest75108:OnSubFinish7510804(arg1)
    print("OnSubFinish7510804")
    this:CancelStoryByQuest(147510801)
end

function Quest75108:OnSubStart7510805(arg1)
    print("OnSubStart7510805")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21689.id, 0, 7510805, 30, false)
    this:GetQuestNpcActor(npcs.Npc21689.alias, 75108):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest75108:OnSubFinish7510805(arg1)
    print("OnSubFinish7510805")
    this:SetNavigationByMainId(75108, true)
end

function Quest75108:OnSubStart7510802(arg1)
    print("OnSubStart7510802")
    this:GetQuestNpcActor(npcs.Npc21689.alias, 75108):DoFreeStyle(4, true, nil, true, true, false, false)
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7510802, 0, 50, "Q7510806", 30, npcs.Npc21460.id)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75108):DoFreeStyle(6, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75108):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc21771.id, 0, false, 0)
end

function Quest75108:OnSubFinish7510802(arg1)
    print("OnSubFinish7510802")
    this:SafeDestroyQuestNpc(npcs.Npc21771.alias, 3)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75108):DisableInteeHeadCtrl(false)
end

function Quest75108:OnSubStart7510806(arg1)
    print("OnSubStart7510806")
    this:CreateQuestNpc(arg1, npcs.Npc21689.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21689.alias, 75108):DoFreeStyle(4, true, nil, true, true, false, false)
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7510806, 0, 50, "Q7510806", 30, npcs.Npc21460.id)
end

function Quest75108:OnSubFinish7510806(arg1)
    print("OnSubFinish7510806")
end

function Quest75108:OnSubStart7510807(arg1)
    print("OnSubStart7510807")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21689.id, 0, 7510807, 30, false)
    this:GetQuestNpcActor(npcs.Npc21689.alias, 75108):DoFreeStyle(4, true, nil, true, true, false, false)
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7510807, 0, 50, "Q7510806", 30, npcs.Npc21460.id)
end

function Quest75108:OnSubFinish7510807(arg1)
    print("OnSubFinish7510807")
    this:SafeDestroyQuestNpc(npcs.Npc21689.alias, 3)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q7510806")
end

return Quest75108
