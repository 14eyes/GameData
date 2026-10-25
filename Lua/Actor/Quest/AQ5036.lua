require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5036 = class("Quest5036", QuestActorProxy)
Quest5036.defaultAlias = "Quest5036"
local clientData
local this
local mainID
local actorAlias

function Quest5036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest5036:OnSubStartHandlerBuild()
    self.subStartHandlers = {["503601"] = self.OnSubStart503601}
end

function Quest5036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["503601"] = self.OnSubFinish503601}
end

function Quest5036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5036:OnSubStart503601(arg1)
    print("OnSubStart503601")
end

function Quest5036:OnSubFinish503601(arg1)
    print("OnSubFinish503601")
end

return Quest5036
