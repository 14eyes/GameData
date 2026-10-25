require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22108 = class("Quest22108", QuestActorProxy)
Quest22108.defaultAlias = "Quest22108"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22108:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22108:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210801"] = self.OnSubStart2210801,
        ["2210802"] = self.OnSubStart2210802,
        ["2210803"] = self.OnSubStart2210803
    }
end

function Quest22108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210801"] = self.OnSubFinish2210801,
        ["2210802"] = self.OnSubFinish2210802,
        ["2210803"] = self.OnSubFinish2210803
    }
end

function Quest22108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210801"] = self.OnSubFailed2210801,
        ["2210802"] = self.OnSubFailed2210802,
        ["2210803"] = self.OnSubFailed2210803
    }
end

function Quest22108:Start()
    print("Start")
end

function Quest22108:OnDestroy()
    print("OnDestroy")
end

function Quest22108:OnSubStart2210801(arg1)
    print("OnSubStart2210801")
end

function Quest22108:OnSubFinish2210801(arg1)
    print("OnSubFinish2210801")
end

function Quest22108:OnSubFailed2210801(arg1)
    print("OnSubFailed2210801")
end

function Quest22108:OnSubStart2210802(arg1)
    print("OnSubStart2210802")
end

function Quest22108:OnSubFinish2210802(arg1)
    print("OnSubFinish2210802")
end

function Quest22108:OnSubFailed2210802(arg1)
    print("OnSubFailed2210802")
end

function Quest22108:OnSubStart2210803(arg1)
    print("OnSubStart2210803")
end

function Quest22108:OnSubFinish2210803(arg1)
    print("OnSubFinish2210803")
end

function Quest22108:OnSubFailed2210803(arg1)
    print("OnSubFailed2210803")
end

return Quest22108
