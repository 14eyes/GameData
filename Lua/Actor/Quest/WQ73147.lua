require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73147 = class("Quest73147", QuestActorProxy)
Quest73147.defaultAlias = "Quest73147"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73147:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73147:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7314701"] = self.OnSubStart7314701, ["7314702"] = self.OnSubStart7314702}
end

function Quest73147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7314701"] = self.OnSubFinish7314701, ["7314702"] = self.OnSubFinish7314702}
end

function Quest73147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73147
