require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40208 = class("Quest40208", QuestActorProxy)
Quest40208.defaultAlias = "Quest40208"
local clientData
local this
local mainID
local actorAlias

function Quest40208:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40208:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4020801"] = self.OnSubStart4020801}
end

function Quest40208:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4020801"] = self.OnSubFinish4020801}
end

function Quest40208:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40208:OnSubStart4020801(arg1)
    print("OnSubStart4020801")
end

function Quest40208:OnSubFinish4020801(arg1)
    print("OnSubFinish4020801")
end

return Quest40208
