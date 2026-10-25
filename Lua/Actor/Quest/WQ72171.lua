require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72171 = class("Quest72171", QuestActorProxy)
Quest72171.defaultAlias = "Quest72171"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72171:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72171:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7217101"] = self.OnSubStart7217101,
        ["7217102"] = self.OnSubStart7217102,
        ["7217103"] = self.OnSubStart7217103
    }
end

function Quest72171:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7217101"] = self.OnSubFinish7217101,
        ["7217102"] = self.OnSubFinish7217102,
        ["7217103"] = self.OnSubFinish7217103
    }
end

function Quest72171:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7217101"] = self.OnSubFailed7217101,
        ["7217102"] = self.OnSubFailed7217102,
        ["7217103"] = self.OnSubFailed7217103
    }
end

function Quest72171:Start()
    print("Start")
end

function Quest72171:OnDestroy()
    print("OnDestroy")
end

function Quest72171:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72171:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72171:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72171:OnSubStart7217101(arg1)
    print("OnSubStart7217101")
end

function Quest72171:OnSubFinish7217101(arg1)
    print("OnSubFinish7217101")
end

function Quest72171:OnSubFailed7217101(arg1)
    print("OnSubFailed7217101")
end

function Quest72171:OnSubStart7217102(arg1)
    print("OnSubStart7217102")
end

function Quest72171:OnSubFinish7217102(arg1)
    print("OnSubFinish7217102")
end

function Quest72171:OnSubFailed7217102(arg1)
    print("OnSubFailed7217102")
end

function Quest72171:OnSubStart7217103(arg1)
    print("OnSubStart7217103")
end

function Quest72171:OnSubFinish7217103(arg1)
    print("OnSubFinish7217103")
end

function Quest72171:OnSubFailed7217103(arg1)
    print("OnSubFailed7217103")
end

return Quest72171
