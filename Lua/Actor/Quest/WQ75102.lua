require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75102 = class("Quest75102", QuestActorProxy)
Quest75102.defaultAlias = "Quest75102"
local clientData
local this
local mainID
local actorAlias

function Quest75102:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75102:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7510201"] = self.OnSubStart7510201}
end

function Quest75102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7510201"] = self.OnSubFinish7510201}
end

function Quest75102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75102:OnSubStart7510201(arg1)
    print("OnSubStart7510201")
end

function Quest75102:OnSubFinish7510201(arg1)
    print("OnSubFinish7510201")
end

return Quest75102
