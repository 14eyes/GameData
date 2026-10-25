require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75095 = class("Quest75095", QuestActorProxy)
Quest75095.defaultAlias = "Quest75095"
local clientData
local this
local mainID
local actorAlias

function Quest75095:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75095:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7509502"] = self.OnSubStart7509502,
        ["7509503"] = self.OnSubStart7509503,
        ["7509501"] = self.OnSubStart7509501
    }
end

function Quest75095:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7509502"] = self.OnSubFinish7509502,
        ["7509503"] = self.OnSubFinish7509503,
        ["7509501"] = self.OnSubFinish7509501
    }
end

function Quest75095:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75095:OnSubStart7509502(arg1)
    print("OnSubStart7509502")
end

function Quest75095:OnSubFinish7509502(arg1)
    print("OnSubFinish7509502")
end

function Quest75095:OnSubStart7509503(arg1)
    print("OnSubStart7509503")
end

function Quest75095:OnSubFinish7509503(arg1)
    print("OnSubFinish7509503")
end

function Quest75095:OnSubStart7509501(arg1)
    print("OnSubStart7509501")
end

function Quest75095:OnSubFinish7509501(arg1)
    print("OnSubFinish7509501")
end

return Quest75095
