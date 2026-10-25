require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75168 = class("Quest75168", QuestActorProxy)
Quest75168.defaultAlias = "Quest75168"
local clientData
local this
local mainID
local actorAlias

function Quest75168:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75168:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7516801"] = self.OnSubStart7516801}
end

function Quest75168:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7516801"] = self.OnSubFinish7516801}
end

function Quest75168:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75168:OnSubStart7516801(arg1)
    print("OnSubStart7516801")
end

function Quest75168:OnSubFinish7516801(arg1)
    print("OnSubFinish7516801")
end

return Quest75168
