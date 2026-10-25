require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74161 = class("Quest74161", QuestActorProxy)
Quest74161.defaultAlias = "Quest74161"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74161:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74161:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7416101"] = self.OnSubStart7416101}
end

function Quest74161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7416101"] = self.OnSubFinish7416101}
end

function Quest74161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74161
