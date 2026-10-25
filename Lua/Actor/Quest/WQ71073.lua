require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71073 = class("Quest71073", QuestActorProxy)
Quest71073.defaultAlias = "Quest71073"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71073:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71073:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7107301"] = self.OnSubStart7107301}
end

function Quest71073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7107301"] = self.OnSubFinish7107301}
end

function Quest71073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71073
