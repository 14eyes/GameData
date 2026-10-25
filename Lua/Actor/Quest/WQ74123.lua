require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74123 = class("Quest74123", QuestActorProxy)
Quest74123.defaultAlias = "Quest74123"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74123:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74123:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7412301"] = self.OnSubStart7412301}
end

function Quest74123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7412301"] = self.OnSubFinish7412301}
end

function Quest74123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74123
