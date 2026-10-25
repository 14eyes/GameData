require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76092 = class("Quest76092", QuestActorProxy)
Quest76092.defaultAlias = "Quest76092"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76092:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76092:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7609201"] = self.OnSubStart7609201}
end

function Quest76092:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7609201"] = self.OnSubFinish7609201}
end

function Quest76092:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76092:Start()
    print("Start")
end

function Quest76092:OnDestroy()
    print("OnDestroy")
end

function Quest76092:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76092:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76092:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76092:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76092:OnSubStart7609201(arg1)
    print("OnSubStart7609201")
    this:CreateQuestNpc(arg1, npcs.Npc22197.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22198.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22198.alias, 76092):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76092:OnSubFinish7609201(arg1)
    print("OnSubFinish7609201")
    this:SafeDestroyQuestNpc(npcs.Npc22197.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22198.alias, 3)
end

return Quest76092
