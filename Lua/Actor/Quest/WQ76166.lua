require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76166 = class("Quest76166", QuestActorProxy)
Quest76166.defaultAlias = "Quest76166"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76166:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76166:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7616601"] = self.OnSubStart7616601}
end

function Quest76166:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7616601"] = self.OnSubFinish7616601}
end

function Quest76166:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76166:Start()
    print("Start")
end

function Quest76166:OnDestroy()
    print("OnDestroy")
end

function Quest76166:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76166:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76166:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76166:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76166:OnSubStart7616601(arg1)
    print("OnSubStart7616601")
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7184.alias, 76166):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7183.alias, 76166):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76166):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76166):DoFreeStyle(1180, true, nil, true, true, false, false)
end

function Quest76166:OnSubFinish7616601(arg1)
    print("OnSubFinish7616601")
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22382.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22385.alias, 3)
end

return Quest76166
