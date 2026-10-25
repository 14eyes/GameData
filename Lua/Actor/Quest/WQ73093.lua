require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73093 = class("Quest73093", QuestActorProxy)
Quest73093.defaultAlias = "Quest73093"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73093:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73093:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7309301"] = self.OnSubStart7309301, ["7309302"] = self.OnSubStart7309302}
end

function Quest73093:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7309301"] = self.OnSubFinish7309301, ["7309302"] = self.OnSubFinish7309302}
end

function Quest73093:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73093
