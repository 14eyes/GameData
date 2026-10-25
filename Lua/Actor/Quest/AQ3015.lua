require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3015 = class("Quest3015", QuestActorProxy)
Quest3015.defaultAlias = "Quest3015"
local clientData
local mainID
local actorAlias
local subIDs

function Quest3015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest3015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301501"] = self.OnSubStart301501,
        ["301502"] = self.OnSubStart301502,
        ["301503"] = self.OnSubStart301503
    }
end

function Quest3015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301501"] = self.OnSubFinish301501,
        ["301502"] = self.OnSubFinish301502,
        ["301503"] = self.OnSubFinish301503
    }
end

function Quest3015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3015:Start()
    print("Start")
end

function Quest3015:OnDestroy()
    print("OnDestroy")
end

function Quest3015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3015:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3015:OnSubStart301501(arg1)
    print("OnSubStart301501")
    actorMgr:CreateActorWithPos("Q3015Trigger", "Actor/Gadget/Q3015Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").pos, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").rot, true, false, 3)
end

function Quest3015:OnSubFinish301501(arg1)
    print("OnSubFinish301501")
    self:ActorDestroy("Q3015Trigger")
end

function Quest3015:OnSubStart301502(arg1)
    print("OnSubStart301502")
end

function Quest3015:OnSubFinish301502(arg1)
    print("OnSubFinish301502")
end

function Quest3015:OnSubStart301503(arg1)
    print("OnSubStart301503")
end

function Quest3015:OnSubFinish301503(arg1)
    print("OnSubFinish301503")
end

return Quest3015
