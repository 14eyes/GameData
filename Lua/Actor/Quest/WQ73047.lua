require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73047 = class("Quest73047", QuestActorProxy)
Quest73047.defaultAlias = "Quest73047"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73047:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73047:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7304701"] = self.OnSubStart7304701}
end

function Quest73047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7304701"] = self.OnSubFinish7304701}
end

function Quest73047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73047:Start()
    print("Start")
end

function Quest73047:OnDestroy()
    print("OnDestroy")
end

function Quest73047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73047:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73047:OnSubStart7304701(arg1)
    print("OnSubStart7304701")
    self:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 1)
end

function Quest73047:OnSubFinish7304701(arg1)
    print("OnSubFinish7304701")
end

return Quest73047
