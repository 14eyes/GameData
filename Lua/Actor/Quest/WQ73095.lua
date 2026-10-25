require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73095 = class("Quest73095", QuestActorProxy)
Quest73095.defaultAlias = "Quest73095"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73095:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73095:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7309501"] = self.OnSubStart7309501, ["7309502"] = self.OnSubStart7309502}
end

function Quest73095:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7309501"] = self.OnSubFinish7309501, ["7309502"] = self.OnSubFinish7309502}
end

function Quest73095:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73095
