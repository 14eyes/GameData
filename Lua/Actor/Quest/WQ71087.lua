require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71087 = class("Quest71087", QuestActorProxy)
Quest71087.defaultAlias = "Quest71087"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71087:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71087:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7108701"] = self.OnSubStart7108701}
end

function Quest71087:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7108701"] = self.OnSubFinish7108701}
end

function Quest71087:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71087
