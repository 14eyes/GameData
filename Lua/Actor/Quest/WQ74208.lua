require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74208 = class("Quest74208", QuestActorProxy)
Quest74208.defaultAlias = "Quest74208"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74208:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74208:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7420801"] = self.OnSubStart7420801,
        ["7420802"] = self.OnSubStart7420802,
        ["7420803"] = self.OnSubStart7420803
    }
end

function Quest74208:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7420801"] = self.OnSubFinish7420801,
        ["7420802"] = self.OnSubFinish7420802,
        ["7420803"] = self.OnSubFinish7420803
    }
end

function Quest74208:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74208
