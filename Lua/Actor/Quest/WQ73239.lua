require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73239 = class("Quest73239", QuestActorProxy)
Quest73239.defaultAlias = "Quest73239"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73239:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73239:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7323903"] = self.OnSubStart7323903,
        ["7323901"] = self.OnSubStart7323901,
        ["7323902"] = self.OnSubStart7323902
    }
end

function Quest73239:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7323903"] = self.OnSubFinish7323903,
        ["7323901"] = self.OnSubFinish7323901,
        ["7323902"] = self.OnSubFinish7323902
    }
end

function Quest73239:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73239:Start()
    print("Start")
end

function Quest73239:OnDestroy()
    print("OnDestroy")
end

function Quest73239:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73239:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73239:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73239:OnSubStart7323903(arg1)
    print("OnSubStart7323903")
    actorMgr:CreateActorWithPos("Q7323903Trigger", "Actor/Gadget/Q7323903Trigger", 70900002, 0, {x = -231.785, y = 233.63, z = 3608.415}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73239:OnSubFinish7323903(arg1)
    print("OnSubFinish7323903")
end

function Quest73239:OnSubStart7323901(arg1)
    print("OnSubStart7323901")
    actorMgr:CreateActorWithPos("Q73239Trigger", "Actor/Gadget/Q73239Trigger", 70900002, 0, {x = -216.968, y = 210.28, z = 3658.15}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73239:OnSubFinish7323901(arg1)
    print("OnSubFinish7323901")
end

function Quest73239:OnSubStart7323902(arg1)
    print("OnSubStart7323902")
end

function Quest73239:OnSubFinish7323902(arg1)
    print("OnSubFinish7323902")
end

return Quest73239
