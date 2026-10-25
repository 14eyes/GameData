require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73092 = class("Quest73092", QuestActorProxy)
Quest73092.defaultAlias = "Quest73092"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73092:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73092:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7309201"] = self.OnSubStart7309201, ["7309202"] = self.OnSubStart7309202}
end

function Quest73092:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7309201"] = self.OnSubFinish7309201, ["7309202"] = self.OnSubFinish7309202}
end

function Quest73092:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73092
