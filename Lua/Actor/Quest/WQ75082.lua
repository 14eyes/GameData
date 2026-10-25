require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75082 = class("Quest75082", QuestActorProxy)
Quest75082.defaultAlias = "Quest75082"
local clientData
local this
local mainID
local actorAlias

function Quest75082:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75082:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7508201"] = self.OnSubStart7508201}
end

function Quest75082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7508201"] = self.OnSubFinish7508201}
end

function Quest75082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75082:OnSubStart7508201(arg1)
    print("OnSubStart7508201")
end

function Quest75082:OnSubFinish7508201(arg1)
    print("OnSubFinish7508201")
end

return Quest75082
