require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71085 = class("Quest71085", QuestActorProxy)
Quest71085.defaultAlias = "Quest71085"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71085:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71085:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7108501"] = self.OnSubStart7108501}
end

function Quest71085:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7108501"] = self.OnSubFinish7108501}
end

function Quest71085:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71085
