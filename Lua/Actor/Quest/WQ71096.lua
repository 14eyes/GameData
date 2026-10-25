require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71096 = class("Quest71096", QuestActorProxy)
Quest71096.defaultAlias = "Quest71096"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71096:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71096:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7109601"] = self.OnSubStart7109601, ["7109602"] = self.OnSubStart7109602}
end

function Quest71096:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7109601"] = self.OnSubFinish7109601, ["7109602"] = self.OnSubFinish7109602}
end

function Quest71096:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71096
