require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14013 = class("Quest14013", QuestActorProxy)
Quest14013.defaultAlias = "Quest14013"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest14013:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest14013:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1401301"] = self.OnSubStart1401301}
end

function Quest14013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1401301"] = self.OnSubFinish1401301}
end

function Quest14013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14013:Start()
    print("Start")
end

function Quest14013:OnDestroy()
    print("OnDestroy")
end

function Quest14013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14013:OnSubStart1401301(arg1)
    print("OnSubStart1401301")
    this:CreateQuestNpc(arg1, npcs.Npc13578Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13579Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13580Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13697Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13698Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13579Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc13580Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13697Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13698Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13580Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13697Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13698Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14013:OnSubFinish1401301(arg1)
    print("OnSubFinish1401301")
    this:GetQuestNpcActor(npcs.Npc13578Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13579Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13580Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13697Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13698Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13578Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13579Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13580Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13697Data.alias, 1087)
    this:SafeDestroyQuestNpc(npcs.Npc13698Data.alias, 1087)
end

return Quest14013
