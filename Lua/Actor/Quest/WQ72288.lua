require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72288 = class("Quest72288", QuestActorProxy)
Quest72288.defaultAlias = "Quest72288"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72288:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72288:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7228801"] = self.OnSubStart7228801}
end

function Quest72288:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7228801"] = self.OnSubFinish7228801}
end

function Quest72288:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest72288
