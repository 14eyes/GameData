require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71090 = class("Quest71090", QuestActorProxy)
Quest71090.defaultAlias = "Quest71090"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71090:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71090:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7109001"] = self.OnSubStart7109001}
end

function Quest71090:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7109001"] = self.OnSubFinish7109001}
end

function Quest71090:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71090
