require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73094 = class("Quest73094", QuestActorProxy)
Quest73094.defaultAlias = "Quest73094"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73094:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73094:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7309401"] = self.OnSubStart7309401, ["7309402"] = self.OnSubStart7309402}
end

function Quest73094:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7309401"] = self.OnSubFinish7309401, ["7309402"] = self.OnSubFinish7309402}
end

function Quest73094:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73094
