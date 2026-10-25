require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71068 = class("Quest71068", QuestActorProxy)
Quest71068.defaultAlias = "Quest71068"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71068:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71068:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7106801"] = self.OnSubStart7106801}
end

function Quest71068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7106801"] = self.OnSubFinish7106801}
end

function Quest71068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71068
