require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71049 = class("Quest71049", QuestActorProxy)
Quest71049.defaultAlias = "Quest71049"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71049:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71049:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7104901"] = self.OnSubStart7104901, ["7104902"] = self.OnSubStart7104902}
end

function Quest71049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7104901"] = self.OnSubFinish7104901, ["7104902"] = self.OnSubFinish7104902}
end

function Quest71049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71049
