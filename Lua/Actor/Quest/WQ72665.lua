require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72665 = class("Quest72665", QuestActorProxy)
Quest72665.defaultAlias = "Quest72665"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72665:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72665:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7266501"] = self.OnSubStart7266501}
end

function Quest72665:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7266501"] = self.OnSubFinish7266501}
end

function Quest72665:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7266501"] = self.OnSubFailed7266501}
end

return Quest72665
