require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75167 = class("Quest75167", QuestActorProxy)
Quest75167.defaultAlias = "Quest75167"
local clientData
local this
local mainID
local actorAlias

function Quest75167:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75167:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7516701"] = self.OnSubStart7516701, ["7516702"] = self.OnSubStart7516702}
end

function Quest75167:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7516701"] = self.OnSubFinish7516701, ["7516702"] = self.OnSubFinish7516702}
end

function Quest75167:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75167:OnSubStart7516701(arg1)
    print("OnSubStart7516701")
end

function Quest75167:OnSubFinish7516701(arg1)
    print("OnSubFinish7516701")
end

function Quest75167:OnSubStart7516702(arg1)
    print("OnSubStart7516702")
end

function Quest75167:OnSubFinish7516702(arg1)
    print("OnSubFinish7516702")
end

return Quest75167
