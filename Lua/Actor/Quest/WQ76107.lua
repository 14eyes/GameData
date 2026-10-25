require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76107 = class("Quest76107", QuestActorProxy)
Quest76107.defaultAlias = "Quest76107"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76107:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76107:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7610701"] = self.OnSubStart7610701}
end

function Quest76107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7610701"] = self.OnSubFinish7610701}
end

function Quest76107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76107:Start()
    print("Start")
end

function Quest76107:OnDestroy()
    print("OnDestroy")
end

function Quest76107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76107:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76107:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76107:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76107:OnSubStart7610701(arg1)
    print("OnSubStart7610701")
    this:CreateQuestNpc(arg1, npcs.Npc22243.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22243.alias, 76107):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22244.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22244.alias, 76107):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest76107:OnSubFinish7610701(arg1)
    print("OnSubFinish7610701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22243.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22244.alias, 3)
end

return Quest76107
