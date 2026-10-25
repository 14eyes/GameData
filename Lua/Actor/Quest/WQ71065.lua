require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71065 = class("Quest71065", QuestActorProxy)
Quest71065.defaultAlias = "Quest71065"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71065:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71065:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7106501"] = self.OnSubStart7106501, ["7106502"] = self.OnSubStart7106502}
end

function Quest71065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7106501"] = self.OnSubFinish7106501, ["7106502"] = self.OnSubFinish7106502}
end

function Quest71065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71065
