require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71067 = class("Quest71067", QuestActorProxy)
Quest71067.defaultAlias = "Quest71067"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71067:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71067:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7106701"] = self.OnSubStart7106701}
end

function Quest71067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7106701"] = self.OnSubFinish7106701}
end

function Quest71067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71067
