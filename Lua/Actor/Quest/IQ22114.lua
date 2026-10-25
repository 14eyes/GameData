require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22114 = class("Quest22114", QuestActorProxy)
Quest22114.defaultAlias = "Quest22114"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22114:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2211401"] = self.OnSubStart2211401,
        ["2211402"] = self.OnSubStart2211402,
        ["2211403"] = self.OnSubStart2211403,
        ["2211404"] = self.OnSubStart2211404,
        ["2211405"] = self.OnSubStart2211405
    }
end

function Quest22114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2211401"] = self.OnSubFinish2211401,
        ["2211402"] = self.OnSubFinish2211402,
        ["2211403"] = self.OnSubFinish2211403,
        ["2211404"] = self.OnSubFinish2211404,
        ["2211405"] = self.OnSubFinish2211405
    }
end

function Quest22114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2211401"] = self.OnSubFailed2211401,
        ["2211402"] = self.OnSubFailed2211402,
        ["2211403"] = self.OnSubFailed2211403,
        ["2211404"] = self.OnSubFailed2211404,
        ["2211405"] = self.OnSubFailed2211405
    }
end

function Quest22114:Start()
    print("Start")
end

function Quest22114:OnDestroy()
    print("OnDestroy")
end

function Quest22114:OnSubStart2211401(arg1)
    print("OnSubStart2211401")
end

function Quest22114:OnSubFinish2211401(arg1)
    print("OnSubFinish2211401")
end

function Quest22114:OnSubFailed2211401(arg1)
    print("OnSubFailed2211401")
end

function Quest22114:OnSubStart2211402(arg1)
    print("OnSubStart2211402")
end

function Quest22114:OnSubFinish2211402(arg1)
    print("OnSubFinish2211402")
end

function Quest22114:OnSubFailed2211402(arg1)
    print("OnSubFailed2211402")
end

function Quest22114:OnSubStart2211403(arg1)
    print("OnSubStart2211403")
end

function Quest22114:OnSubFinish2211403(arg1)
    print("OnSubFinish2211403")
end

function Quest22114:OnSubFailed2211403(arg1)
    print("OnSubFailed2211403")
end

function Quest22114:OnSubStart2211404(arg1)
    print("OnSubStart2211404")
end

function Quest22114:OnSubFinish2211404(arg1)
    print("OnSubFinish2211404")
end

function Quest22114:OnSubFailed2211404(arg1)
    print("OnSubFailed2211404")
end

function Quest22114:OnSubStart2211405(arg1)
    print("OnSubStart2211405")
end

function Quest22114:OnSubFinish2211405(arg1)
    print("OnSubFinish2211405")
end

function Quest22114:OnSubFailed2211405(arg1)
    print("OnSubFailed2211405")
end

return Quest22114
