require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79038 = class("Quest79038", QuestActorProxy)
Quest79038.defaultAlias = "Quest79038"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79038:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7903801"] = self.OnSubStart7903801}
end

function Quest79038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7903801"] = self.OnSubFinish7903801}
end

function Quest79038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest79038
