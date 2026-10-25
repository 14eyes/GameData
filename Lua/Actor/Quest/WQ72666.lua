require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72666 = class("Quest72666", QuestActorProxy)
Quest72666.defaultAlias = "Quest72666"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72666:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72666:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7266601"] = self.OnSubStart7266601}
end

function Quest72666:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7266601"] = self.OnSubFinish7266601}
end

function Quest72666:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7266601"] = self.OnSubFailed7266601}
end

return Quest72666
