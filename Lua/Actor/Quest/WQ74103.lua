require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74103 = class("Quest74103", QuestActorProxy)
Quest74103.defaultAlias = "Quest74103"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74103:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7410301"] = self.OnSubStart7410301,
        ["7410302"] = self.OnSubStart7410302,
        ["7410303"] = self.OnSubStart7410303,
        ["7410304"] = self.OnSubStart7410304
    }
end

function Quest74103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7410301"] = self.OnSubFinish7410301,
        ["7410302"] = self.OnSubFinish7410302,
        ["7410303"] = self.OnSubFinish7410303,
        ["7410304"] = self.OnSubFinish7410304
    }
end

function Quest74103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74103
