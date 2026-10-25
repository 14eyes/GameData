require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22105 = class("Quest22105", QuestActorProxy)
Quest22105.defaultAlias = "Quest22105"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22105:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22105:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210501"] = self.OnSubStart2210501,
        ["2210502"] = self.OnSubStart2210502,
        ["2210503"] = self.OnSubStart2210503,
        ["2210504"] = self.OnSubStart2210504
    }
end

function Quest22105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210501"] = self.OnSubFinish2210501,
        ["2210502"] = self.OnSubFinish2210502,
        ["2210503"] = self.OnSubFinish2210503,
        ["2210504"] = self.OnSubFinish2210504
    }
end

function Quest22105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210501"] = self.OnSubFailed2210501,
        ["2210502"] = self.OnSubFailed2210502,
        ["2210503"] = self.OnSubFailed2210503,
        ["2210504"] = self.OnSubFailed2210504
    }
end

function Quest22105:Start()
    print("Start")
end

function Quest22105:OnDestroy()
    print("OnDestroy")
end

function Quest22105:OnSubStart2210501(arg1)
    print("OnSubStart2210501")
end

function Quest22105:OnSubFinish2210501(arg1)
    print("OnSubFinish2210501")
end

function Quest22105:OnSubFailed2210501(arg1)
    print("OnSubFailed2210501")
end

function Quest22105:OnSubStart2210502(arg1)
    print("OnSubStart2210502")
end

function Quest22105:OnSubFinish2210502(arg1)
    print("OnSubFinish2210502")
end

function Quest22105:OnSubFailed2210502(arg1)
    print("OnSubFailed2210502")
end

function Quest22105:OnSubStart2210503(arg1)
    print("OnSubStart2210503")
end

function Quest22105:OnSubFinish2210503(arg1)
    print("OnSubFinish2210503")
end

function Quest22105:OnSubFailed2210503(arg1)
    print("OnSubFailed2210503")
end

function Quest22105:OnSubStart2210504(arg1)
    print("OnSubStart2210504")
end

function Quest22105:OnSubFinish2210504(arg1)
    print("OnSubFinish2210504")
end

function Quest22105:OnSubFailed2210504(arg1)
    print("OnSubFailed2210504")
end

return Quest22105
