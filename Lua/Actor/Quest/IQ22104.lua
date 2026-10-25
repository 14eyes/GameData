require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22104 = class("Quest22104", QuestActorProxy)
Quest22104.defaultAlias = "Quest22104"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22104:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210401"] = self.OnSubStart2210401,
        ["2210402"] = self.OnSubStart2210402,
        ["2210403"] = self.OnSubStart2210403,
        ["2210404"] = self.OnSubStart2210404
    }
end

function Quest22104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210401"] = self.OnSubFinish2210401,
        ["2210402"] = self.OnSubFinish2210402,
        ["2210403"] = self.OnSubFinish2210403,
        ["2210404"] = self.OnSubFinish2210404
    }
end

function Quest22104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210401"] = self.OnSubFailed2210401,
        ["2210402"] = self.OnSubFailed2210402,
        ["2210403"] = self.OnSubFailed2210403,
        ["2210404"] = self.OnSubFailed2210404
    }
end

function Quest22104:Start()
    print("Start")
end

function Quest22104:OnDestroy()
    print("OnDestroy")
end

function Quest22104:OnSubStart2210401(arg1)
    print("OnSubStart2210401")
end

function Quest22104:OnSubFinish2210401(arg1)
    print("OnSubFinish2210401")
end

function Quest22104:OnSubFailed2210401(arg1)
    print("OnSubFailed2210401")
end

function Quest22104:OnSubStart2210402(arg1)
    print("OnSubStart2210402")
end

function Quest22104:OnSubFinish2210402(arg1)
    print("OnSubFinish2210402")
end

function Quest22104:OnSubFailed2210402(arg1)
    print("OnSubFailed2210402")
end

function Quest22104:OnSubStart2210403(arg1)
    print("OnSubStart2210403")
end

function Quest22104:OnSubFinish2210403(arg1)
    print("OnSubFinish2210403")
end

function Quest22104:OnSubFailed2210403(arg1)
    print("OnSubFailed2210403")
end

function Quest22104:OnSubStart2210404(arg1)
    print("OnSubStart2210404")
end

function Quest22104:OnSubFinish2210404(arg1)
    print("OnSubFinish2210404")
end

function Quest22104:OnSubFailed2210404(arg1)
    print("OnSubFailed2210404")
end

return Quest22104
