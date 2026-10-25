require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75224 = class("Quest75224", QuestActorProxy)
Quest75224.defaultAlias = "Quest75224"
local clientData
local this
local mainID
local actorAlias

function Quest75224:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75224:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7522401"] = self.OnSubStart7522401}
end

function Quest75224:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7522401"] = self.OnSubFinish7522401}
end

function Quest75224:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75224:OnSubStart7522401(arg1)
    print("OnSubStart7522401")
end

function Quest75224:OnSubFinish7522401(arg1)
    print("OnSubFinish7522401")
end

return Quest75224
