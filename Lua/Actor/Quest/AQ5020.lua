require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5020 = class("Quest5020", QuestActorProxy)
Quest5020.defaultAlias = "Quest5020"
local clientData
local this
local mainID
local actorAlias

function Quest5020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest5020:OnSubStartHandlerBuild()
    self.subStartHandlers = {["502001"] = self.OnSubStart502001}
end

function Quest5020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["502001"] = self.OnSubFinish502001}
end

function Quest5020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5020:OnSubStart502001(arg1)
    print("OnSubStart502001")
end

function Quest5020:OnSubFinish502001(arg1)
    print("OnSubFinish502001")
end

return Quest5020
