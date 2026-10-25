require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70542 = class("Quest70542", QuestActorProxy)
Quest70542.defaultAlias = "Quest70542"
local clientData
local this
local mainID
local actorAlias

function Quest70542:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70542:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7054201"] = self.OnSubStart7054201}
end

function Quest70542:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7054201"] = self.OnSubFinish7054201}
end

function Quest70542:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7054201"] = self.OnSubFailed7054201}
end

function Quest70542:OnSubStart7054201(arg1)
    print("OnSubStart7054201")
end

function Quest70542:OnSubFinish7054201(arg1)
    print("OnSubFinish7054201")
end

function Quest70542:OnSubFailed7054201(arg1)
    print("OnSubFailed7054201")
end

return Quest70542
