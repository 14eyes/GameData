require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75027 = class("Quest75027", QuestActorProxy)
Quest75027.defaultAlias = "Quest75027"
local clientData
local this
local mainID
local actorAlias

function Quest75027:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502701"] = self.OnSubStart7502701,
        ["7502702"] = self.OnSubStart7502702,
        ["7502703"] = self.OnSubStart7502703
    }
end

function Quest75027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502701"] = self.OnSubFinish7502701,
        ["7502702"] = self.OnSubFinish7502702,
        ["7502703"] = self.OnSubFinish7502703
    }
end

function Quest75027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75027:OnSubStart7502701(arg1)
    print("OnSubStart7502701")
end

function Quest75027:OnSubFinish7502701(arg1)
    print("OnSubFinish7502701")
end

function Quest75027:OnSubStart7502702(arg1)
    print("OnSubStart7502702")
end

function Quest75027:OnSubFinish7502702(arg1)
    print("OnSubFinish7502702")
end

function Quest75027:OnSubStart7502703(arg1)
    print("OnSubStart7502703")
end

function Quest75027:OnSubFinish7502703(arg1)
    print("OnSubFinish7502703")
end

return Quest75027
