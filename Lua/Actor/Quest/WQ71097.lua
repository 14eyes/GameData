require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71097 = class("Quest71097", QuestActorProxy)
Quest71097.defaultAlias = "Quest71097"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71097:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71097:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7109701"] = self.OnSubStart7109701, ["7109702"] = self.OnSubStart7109702}
end

function Quest71097:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7109701"] = self.OnSubFinish7109701, ["7109702"] = self.OnSubFinish7109702}
end

function Quest71097:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71097
