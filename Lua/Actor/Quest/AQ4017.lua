require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4017 = class("Quest4017", QuestActorProxy)
Quest4017.defaultAlias = "Quest4017"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest4017:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest4017:OnSubStartHandlerBuild()
    self.subStartHandlers = {["401701"] = self.OnSubStart401701}
end

function Quest4017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["401701"] = self.OnSubFinish401701}
end

function Quest4017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest4017
