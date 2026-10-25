require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79039 = class("Quest79039", QuestActorProxy)
Quest79039.defaultAlias = "Quest79039"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79039:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest79039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest79039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest79039
