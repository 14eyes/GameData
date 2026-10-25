require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74180 = class("Quest74180", QuestActorProxy)
Quest74180.defaultAlias = "Quest74180"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74180:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74180:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7418001"] = self.OnSubStart7418001, ["7418002"] = self.OnSubStart7418002}
end

function Quest74180:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7418001"] = self.OnSubFinish7418001, ["7418002"] = self.OnSubFinish7418002}
end

function Quest74180:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74180
