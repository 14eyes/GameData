require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75223 = class("Quest75223", QuestActorProxy)
Quest75223.defaultAlias = "Quest75223"
local clientData
local this
local mainID
local actorAlias

function Quest75223:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75223:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7522301"] = self.OnSubStart7522301}
end

function Quest75223:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7522301"] = self.OnSubFinish7522301}
end

function Quest75223:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75223:OnSubStart7522301(arg1)
    print("OnSubStart7522301")
end

function Quest75223:OnSubFinish7522301(arg1)
    print("OnSubFinish7522301")
end

return Quest75223
