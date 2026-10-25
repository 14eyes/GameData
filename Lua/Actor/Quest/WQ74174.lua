require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74174 = class("Quest74174", QuestActorProxy)
Quest74174.defaultAlias = "Quest74174"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74174:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74174:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7417401"] = self.OnSubStart7417401,
        ["7417402"] = self.OnSubStart7417402,
        ["7417403"] = self.OnSubStart7417403,
        ["7417404"] = self.OnSubStart7417404,
        ["7417405"] = self.OnSubStart7417405,
        ["7417406"] = self.OnSubStart7417406
    }
end

function Quest74174:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7417401"] = self.OnSubFinish7417401,
        ["7417402"] = self.OnSubFinish7417402,
        ["7417403"] = self.OnSubFinish7417403,
        ["7417404"] = self.OnSubFinish7417404,
        ["7417405"] = self.OnSubFinish7417405,
        ["7417406"] = self.OnSubFinish7417406
    }
end

function Quest74174:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74174
