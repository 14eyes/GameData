require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5018 = class("Quest5018", QuestActorProxy)
Quest5018.defaultAlias = "Quest5018"
local clientData
local this
local mainID
local actorAlias

function Quest5018:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest5018:OnSubStartHandlerBuild()
    self.subStartHandlers = {["501801"] = self.OnSubStart501801, ["501802"] = self.OnSubStart501802}
end

function Quest5018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["501801"] = self.OnSubFinish501801, ["501802"] = self.OnSubFinish501802}
end

function Quest5018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5018:OnSubStart501801(arg1)
    print("OnSubStart501801")
end

function Quest5018:OnSubFinish501801(arg1)
    print("OnSubFinish501801")
end

function Quest5018:OnSubStart501802(arg1)
    print("OnSubStart501802")
end

function Quest5018:OnSubFinish501802(arg1)
    print("OnSubFinish501802")
end

return Quest5018
