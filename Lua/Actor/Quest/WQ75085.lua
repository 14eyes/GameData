require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75085 = class("Quest75085", QuestActorProxy)
Quest75085.defaultAlias = "Quest75085"
local clientData
local this
local mainID
local actorAlias

function Quest75085:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75085:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7508501"] = self.OnSubStart7508501}
end

function Quest75085:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7508501"] = self.OnSubFinish7508501}
end

function Quest75085:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75085:OnSubStart7508501(arg1)
    print("OnSubStart7508501")
end

function Quest75085:OnSubFinish7508501(arg1)
    print("OnSubFinish7508501")
end

return Quest75085
