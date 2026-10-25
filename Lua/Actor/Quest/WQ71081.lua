require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71081 = class("Quest71081", QuestActorProxy)
Quest71081.defaultAlias = "Quest71081"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71081:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71081:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7108101"] = self.OnSubStart7108101}
end

function Quest71081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7108101"] = self.OnSubFinish7108101}
end

function Quest71081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71081
