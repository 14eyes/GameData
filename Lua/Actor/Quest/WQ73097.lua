require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73097 = class("Quest73097", QuestActorProxy)
Quest73097.defaultAlias = "Quest73097"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73097:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73097:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7309701"] = self.OnSubStart7309701, ["7309702"] = self.OnSubStart7309702}
end

function Quest73097:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7309701"] = self.OnSubFinish7309701, ["7309702"] = self.OnSubFinish7309702}
end

function Quest73097:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73097
