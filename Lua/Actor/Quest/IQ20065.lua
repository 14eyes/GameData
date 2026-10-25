require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20065 = class("Quest20065", QuestActorProxy)
Quest20065.defaultAlias = "Quest20065"
local clientData
local mainID
local actorAlias
local subIDs

function Quest20065:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest20065:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2006501"] = self.OnSubStart2006501,
        ["2006502"] = self.OnSubStart2006502,
        ["2006503"] = self.OnSubStart2006503
    }
end

function Quest20065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2006501"] = self.OnSubFinish2006501,
        ["2006502"] = self.OnSubFinish2006502,
        ["2006503"] = self.OnSubFinish2006503
    }
end

function Quest20065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2006501"] = self.OnSubFailed2006501,
        ["2006502"] = self.OnSubFailed2006502,
        ["2006503"] = self.OnSubFailed2006503
    }
end

function Quest20065:Start()
    print("Start")
end

function Quest20065:OnDestroy()
    print("OnDestroy")
end

function Quest20065:OnSubStart2006501(arg1)
    print("OnSubStart2006501")
end

function Quest20065:OnSubFinish2006501(arg1)
    print("OnSubFinish2006501")
end

function Quest20065:OnSubFailed2006501(arg1)
    print("OnSubFailed2006501")
end

function Quest20065:OnSubStart2006502(arg1)
    print("OnSubStart2006502")
end

function Quest20065:OnSubFinish2006502(arg1)
    print("OnSubFinish2006502")
end

function Quest20065:OnSubFailed2006502(arg1)
    print("OnSubFailed2006502")
end

function Quest20065:OnSubStart2006503(arg1)
    print("OnSubStart2006503")
end

function Quest20065:OnSubFinish2006503(arg1)
    print("OnSubFinish2006503")
end

function Quest20065:OnSubFailed2006503(arg1)
    print("OnSubFailed2006503")
end

return Quest20065
