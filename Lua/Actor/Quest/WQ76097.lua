require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76097 = class("Quest76097", QuestActorProxy)
Quest76097.defaultAlias = "Quest76097"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76097:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76097:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7609701"] = self.OnSubStart7609701}
end

function Quest76097:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7609701"] = self.OnSubFinish7609701}
end

function Quest76097:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76097:Start()
    print("Start")
end

function Quest76097:OnDestroy()
    print("OnDestroy")
end

function Quest76097:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76097:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76097:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76097:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76097:OnSubStart7609701(arg1)
    print("OnSubStart7609701")
    this:CreateQuestNpc(arg1, npcs.Npc22201.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22200.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22202.id, 0, false, 0)
end

function Quest76097:OnSubFinish7609701(arg1)
    print("OnSubFinish7609701")
end

return Quest76097
