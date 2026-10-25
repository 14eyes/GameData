require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10806 = class("Quest10806", QuestActorProxy)
Quest10806.defaultAlias = "Quest10806"
local clientData
local this
local mainID
local actorAlias

function Quest10806:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest10806:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1080601"] = self.OnSubStart1080601}
end

function Quest10806:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1080601"] = self.OnSubFinish1080601}
end

function Quest10806:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10806:OnSubStart1080601(arg1)
    print("OnSubStart1080601")
end

function Quest10806:OnSubFinish1080601(arg1)
    print("OnSubFinish1080601")
end

return Quest10806
