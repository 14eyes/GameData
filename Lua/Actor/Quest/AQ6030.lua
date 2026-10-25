require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6030 = class("Quest6030", QuestActorProxy)
Quest6030.defaultAlias = "Quest6030"
local clientData
local this
local mainID
local actorAlias

function Quest6030:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest6030:OnSubStartHandlerBuild()
    self.subStartHandlers = {["603001"] = self.OnSubStart603001, ["603002"] = self.OnSubStart603002}
end

function Quest6030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["603001"] = self.OnSubFinish603001, ["603002"] = self.OnSubFinish603002}
end

function Quest6030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6030:OnSubStart603001(arg1)
    print("OnSubStart603001")
end

function Quest6030:OnSubFinish603001(arg1)
    print("OnSubFinish603001")
end

function Quest6030:OnSubStart603002(arg1)
    print("OnSubStart603002")
end

function Quest6030:OnSubFinish603002(arg1)
    print("OnSubFinish603002")
end

return Quest6030
