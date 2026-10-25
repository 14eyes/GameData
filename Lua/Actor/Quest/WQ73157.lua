require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73157 = class("Quest73157", QuestActorProxy)
Quest73157.defaultAlias = "Quest73157"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73157:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73157:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315701"] = self.OnSubStart7315701, ["7315702"] = self.OnSubStart7315702}
end

function Quest73157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315701"] = self.OnSubFinish7315701, ["7315702"] = self.OnSubFinish7315702}
end

function Quest73157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73157
