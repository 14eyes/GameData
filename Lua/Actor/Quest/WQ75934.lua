require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75934 = class("Quest75934", QuestActorProxy)
Quest75934.defaultAlias = "Quest75934"
local clientData
local this
local mainID
local actorAlias

function Quest75934:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75934:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7593401"] = self.OnSubStart7593401}
end

function Quest75934:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7593401"] = self.OnSubFinish7593401}
end

function Quest75934:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75934:OnSubStart7593401(arg1)
    print("OnSubStart7593401")
    actorUtils.FinishQuestID(false, 7593401)
end

function Quest75934:OnSubFinish7593401(arg1)
    print("OnSubFinish7593401")
end

return Quest75934
