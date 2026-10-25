require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70682 = class("Quest70682", QuestActorProxy)
Quest70682.defaultAlias = "Quest70682"
local clientData
local this
local mainID
local actorAlias

function Quest70682:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70682:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068201"] = self.OnSubStart7068201}
end

function Quest70682:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068201"] = self.OnSubFinish7068201}
end

function Quest70682:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70682:OnSubStart7068201(arg1)
    print("OnSubStart7068201")
end

function Quest70682:OnSubFinish7068201(arg1)
    print("OnSubFinish7068201")
end

return Quest70682
