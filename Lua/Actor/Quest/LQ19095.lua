require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19095 = class("Quest19095", QuestActorProxy)
Quest19095.defaultAlias = "Quest19095"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19095:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19095:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1909501"] = self.OnSubStart1909501,
        ["1909502"] = self.OnSubStart1909502,
        ["1909503"] = self.OnSubStart1909503,
        ["1909504"] = self.OnSubStart1909504
    }
end

function Quest19095:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1909501"] = self.OnSubFinish1909501,
        ["1909502"] = self.OnSubFinish1909502,
        ["1909503"] = self.OnSubFinish1909503,
        ["1909504"] = self.OnSubFinish1909504
    }
end

function Quest19095:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19095:Start()
    print("Start")
end

function Quest19095:OnDestroy()
    print("OnDestroy")
end

function Quest19095:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19095:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19095:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.QinData.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc13353Data.alias, 1004)
    actorMgr:DestroyEntityActor("Q19095Trigger", 1004, false)
    actorMgr:DestroyEntityActor("Q1909503N516Trigger", 3, false)
end

function Quest19095:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19095:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest19095:OnSubStart1909501(arg1)
    print("OnSubStart1909501")
    actorUtils.FinishQuestID(false, 1020302)
    if sceneData.currSceneID == 1004 then
        actorUtils.FinishQuestID(false, 1909501)
    end
end

function Quest19095:OnSubFinish1909501(arg1)
    print("OnSubFinish1909501")
end

function Quest19095:OnSubStart1909502(arg1)
    print("OnSubStart1909502")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909502)
    this:CreateQuestNpc(arg1, npcs.QinData.id, 2)
    this:CreateQuestNpc(arg1, npcs.LisaData.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13353Data.id, 6)
    this:GetQuestNpcActor(npcs.LisaData.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.QinData.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19095:OnSubFinish1909502(arg1)
    print("OnSubFinish1909502")
end

function Quest19095:OnSubStart1909503(arg1)
    print("OnSubStart1909503")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909503)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1909503, 1, 5, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.QinData.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.LisaData.id, 3)
    this:GetQuestNpcActor(npcs.LisaData.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.QinData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19095:OnSubFinish1909503(arg1)
    print("OnSubFinish1909503")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.QinData.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc13353Data.alias, 1004)
    actorUtils.FinishQuestID(false, 1020302)
end

function Quest19095:OnSubStart1909504(arg1)
    print("OnSubStart1909504")
end

function Quest19095:OnSubFinish1909504(arg1)
    print("OnSubFinish1909504")
end

return Quest19095
