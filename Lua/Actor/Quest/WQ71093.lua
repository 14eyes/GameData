require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71093 = class("Quest71093", QuestActorProxy)
Quest71093.defaultAlias = "Quest71093"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71093:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71093:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7109301"] = self.OnSubStart7109301,
        ["7109302"] = self.OnSubStart7109302,
        ["7109303"] = self.OnSubStart7109303,
        ["7109304"] = self.OnSubStart7109304
    }
end

function Quest71093:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7109301"] = self.OnSubFinish7109301,
        ["7109302"] = self.OnSubFinish7109302,
        ["7109303"] = self.OnSubFinish7109303,
        ["7109304"] = self.OnSubFinish7109304
    }
end

function Quest71093:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71093
