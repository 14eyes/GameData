require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70027 = class("Quest70027", QuestActorProxy)
Quest70027.defaultAlias = "Quest70027"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7002701"] = self.OnSubStart7002701,
        ["7002702"] = self.OnSubStart7002702,
        ["7002703"] = self.OnSubStart7002703
    }
end

function Quest70027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7002701"] = self.OnSubFinish7002701,
        ["7002702"] = self.OnSubFinish7002702,
        ["7002703"] = self.OnSubFinish7002703
    }
end

function Quest70027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7002701"] = self.OnSubFailed7002701,
        ["7002702"] = self.OnSubFailed7002702,
        ["7002703"] = self.OnSubFailed7002703
    }
end

function Quest70027:Start()
    print("Start")
end

function Quest70027:OnDestroy()
    print("OnDestroy")
end

function Quest70027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70027:OnSubStart7002701(arg1)
    print("OnSubStart7002701")
end

function Quest70027:OnSubFinish7002701(arg1)
    print("OnSubFinish7002701")
end

function Quest70027:OnSubFailed7002701(arg1)
    print("OnSubFailed7002701")
end

function Quest70027:OnSubStart7002702(arg1)
    print("OnSubStart7002702")
end

function Quest70027:OnSubFinish7002702(arg1)
    print("OnSubFinish7002702")
end

function Quest70027:OnSubFailed7002702(arg1)
    print("OnSubFailed7002702")
end

function Quest70027:OnSubStart7002703(arg1)
    print("OnSubStart7002703")
end

function Quest70027:OnSubFinish7002703(arg1)
    print("OnSubFinish7002703")
end

function Quest70027:OnSubFailed7002703(arg1)
    print("OnSubFailed7002703")
end

return Quest70027
