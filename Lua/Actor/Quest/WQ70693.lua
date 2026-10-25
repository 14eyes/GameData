require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70693 = class("Quest70693", QuestActorProxy)
Quest70693.defaultAlias = "Quest70693"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70693:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70693:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069301"] = self.OnSubStart7069301}
end

function Quest70693:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069301"] = self.OnSubFinish7069301}
end

function Quest70693:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70693:Start()
    print("Start")
end

function Quest70693:OnDestroy()
    print("OnDestroy")
end

function Quest70693:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70693:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70693:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30895.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 3)
end

function Quest70693:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70693:OnSubStart7069301(arg1)
    print("OnSubStart7069301")
    this:CreateQuestNpc(arg1, npcs.Npc30895.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30895.alias, 70693):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30895.alias, 70693):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Ambor.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Ambor.alias, 70693):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Ambor.alias, 70693):DisableInteeHeadCtrl(true)
end

function Quest70693:OnSubFinish7069301(arg1)
    print("OnSubFinish7069301")
    this:SafeDestroyQuestNpc(npcs.Npc30895.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 3)
end

return Quest70693
