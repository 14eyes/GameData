require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75028 = class("Quest75028", QuestActorProxy)
Quest75028.defaultAlias = "Quest75028"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75028:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502801"] = self.OnSubStart7502801,
        ["7502807"] = self.OnSubStart7502807,
        ["7502802"] = self.OnSubStart7502802,
        ["7502803"] = self.OnSubStart7502803,
        ["7502804"] = self.OnSubStart7502804,
        ["7502805"] = self.OnSubStart7502805,
        ["7502806"] = self.OnSubStart7502806
    }
end

function Quest75028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502801"] = self.OnSubFinish7502801,
        ["7502807"] = self.OnSubFinish7502807,
        ["7502802"] = self.OnSubFinish7502802,
        ["7502803"] = self.OnSubFinish7502803,
        ["7502804"] = self.OnSubFinish7502804,
        ["7502805"] = self.OnSubFinish7502805,
        ["7502806"] = self.OnSubFinish7502806
    }
end

function Quest75028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75028:Start()
    print("Start")
end

function Quest75028:OnDestroy()
    print("OnDestroy")
end

function Quest75028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75028:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21499.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21564.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21565.alias, 3)
    this:DestroyNpcTrigger("Q7502804N21460Trigger")
    this:DestroyNpcTrigger("Q7502806N21499Trigger")
    this:DestroyNpcTrigger("Q7502807N21564Trigger")
end

function Quest75028:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75028:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75028:OnSubStart7502801(arg1)
    print("OnSubStart7502801")
    this:CreateQuestNpc(arg1, npcs.Npc21499.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21499.alias, 75028):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75028:OnSubFinish7502801(arg1)
    print("OnSubFinish7502801")
end

function Quest75028:OnSubStart7502807(arg1)
    print("OnSubStart7502807")
    this:GetQuestNpcActor(npcs.Npc21499.alias, 75028):DoFreeStyle(3, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc21564.id, 0, 30, 7502807)
    this:CreateQuestNpc(arg1, npcs.Npc21565.id, 0, false, 0)
end

function Quest75028:OnSubFinish7502807(arg1)
    print("OnSubFinish7502807")
    this:SafeDestroyQuestNpc(npcs.Npc21564.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21565.alias, 3)
    this:SetNavigationByMainId(0, true)
end

function Quest75028:OnSubStart7502802(arg1)
    print("OnSubStart7502802")
    this:GetQuestNpcActor(npcs.Npc21499.alias, 75028):DoFreeStyle(3, true, nil, true, true, false, true)
end

function Quest75028:OnSubFinish7502802(arg1)
    print("OnSubFinish7502802")
end

function Quest75028:OnSubStart7502803(arg1)
    print("OnSubStart7502803")
    this:GetQuestNpcActor(npcs.Npc21499.alias, 75028):DoFreeStyle(3, true, nil, true, true, false, true)
    this:DeployStoryByQuest(147502803)
end

function Quest75028:OnSubFinish7502803(arg1)
    print("OnSubFinish7502803")
    this:CancelStoryByQuest(147502803)
end

function Quest75028:OnSubStart7502804(arg1)
    print("OnSubStart7502804")
    this:GetQuestNpcActor(npcs.Npc21499.alias, 75028):DoFreeStyle(3, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21460.id, 0, 7502804, 30, false)
end

function Quest75028:OnSubFinish7502804(arg1)
    print("OnSubFinish7502804")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75028:OnSubStart7502805(arg1)
    print("OnSubStart7502805")
    this:GetQuestNpcActor(npcs.Npc21499.alias, 75028):DoFreeStyle(3, true, nil, true, true, false, true)
end

function Quest75028:OnSubFinish7502805(arg1)
    print("OnSubFinish7502805")
end

function Quest75028:OnSubStart7502806(arg1)
    print("OnSubStart7502806")
    this:NpcCreateWithNpcTrigger(npcs.Npc21499.id, 0, 50, 7502806)
    this:GetQuestNpcActor(npcs.Npc21499.alias, 75028):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75028:OnSubFinish7502806(arg1)
    print("OnSubFinish7502806")
    this:SafeDestroyQuestNpc(npcs.Npc21499.alias, 3)
end

return Quest75028
