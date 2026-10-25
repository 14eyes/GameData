require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75038 = class("Quest75038", QuestActorProxy)
Quest75038.defaultAlias = "Quest75038"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75038:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75038:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7503801"] = self.OnSubStart7503801}
end

function Quest75038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7503801"] = self.OnSubFinish7503801}
end

function Quest75038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75038
