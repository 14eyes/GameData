require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73096 = class("Quest73096", QuestActorProxy)
Quest73096.defaultAlias = "Quest73096"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73096:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73096:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7309601"] = self.OnSubStart7309601, ["7309602"] = self.OnSubStart7309602}
end

function Quest73096:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7309601"] = self.OnSubFinish7309601, ["7309602"] = self.OnSubFinish7309602}
end

function Quest73096:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73096
