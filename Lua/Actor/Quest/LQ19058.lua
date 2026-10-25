require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19058 = class("Quest19058", QuestActorProxy)
Quest19058.defaultAlias = "Quest19058"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19058:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19058:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1905801"] = self.OnSubStart1905801, ["1905803"] = self.OnSubStart1905803}
end

function Quest19058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1905801"] = self.OnSubFinish1905801, ["1905803"] = self.OnSubFinish1905803}
end

function Quest19058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19058:Start()
    print("Start")
end

function Quest19058:OnDestroy()
    print("OnDestroy")
end

function Quest19058:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19058:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19058:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc13235Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1905801N515Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905803N515Trigger", 3, false)
end

function Quest19058:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest19058:FuncRegister()
    print("FuncRegister")
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KavehData.alias)
    questNpcActor:DoFreeStyle(8061, true, nil, true, true, false, false)
    questNpcActor:DoFreeStyle(8060, true, nil, true, true, false, false)
end

function Quest19058:OnSubStart1905801(arg1)
    print("OnSubStart1905801")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1905801)
    this:NpcCreateWithNpcTrigger(npcs.Coop_KavehData.id, 1905801, 1, 6)
    this:CreateQuestNpc(arg1, npcs.Npc13235Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc13235Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest19058:OnSubFinish1905801(arg1)
    print("OnSubFinish1905801")
end

function Quest19058:OnSubStart1905803(arg1)
    print("OnSubStart1905803")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1905803)
    this:GetQuestNpcActor(npcs.Npc13235Data.alias):DoFreeStyle(1240, true, nil, true, true, true, false)
    this:NpcCreateWithNpcTrigger(npcs.Coop_KavehData.id, 1905803, 1, 8)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KavehData.alias)
    questNpcActor:SitOnChair(8061, true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Normal01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13235Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19058:OnSubFinish1905803(arg1)
    print("OnSubFinish1905803")
    this:GetQuestNpcActor(npcs.Coop_KavehData.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13235Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc13235Data.alias):DisableInteeHeadCtrl(false)
end

return Quest19058
