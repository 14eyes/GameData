require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74135 = class("Quest74135", QuestActorProxy)
Quest74135.defaultAlias = "Quest74135"
local clientData
local this
local mainID
local actorAlias
local subIDs
local points

function Quest74135:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    points = clientData.Points
end

function Quest74135:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7413501"] = self.OnSubStart7413501,
        ["7413502"] = self.OnSubStart7413502,
        ["7413503"] = self.OnSubStart7413503,
        ["7413504"] = self.OnSubStart7413504
    }
end

function Quest74135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7413501"] = self.OnSubFinish7413501,
        ["7413502"] = self.OnSubFinish7413502,
        ["7413503"] = self.OnSubFinish7413503,
        ["7413504"] = self.OnSubFinish7413504
    }
end

function Quest74135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74135:Start()
    print("Start")
end

function Quest74135:OnDestroy()
    print("OnDestroy")
end

function Quest74135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74135:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74135:OnSubStart7413501(arg1)
    print("OnSubStart7413501")
end

function Quest74135:OnSubFinish7413501(arg1)
    print("OnSubFinish7413501")
end

function Quest74135:OnSubStart7413502(arg1)
    print("OnSubStart7413502")
    actorMgr:CreateActorWithPos("Q74135Trigger", "Actor/Gadget/Q74135Trigger", 70900002, 0, points.TPos_Q74135Trigger.pos, points.TPos_Q74135Trigger.rot, true, false, 1080)
end

function Quest74135:OnSubFinish7413502(arg1)
    print("OnSubFinish7413502")
end

function Quest74135:OnSubStart7413503(arg1)
    print("OnSubStart7413503")
    actorMgr:CreateActorWithPos("Q74135Trigger", "Actor/Gadget/Q74135Trigger", 70900002, 0, points.TPos_Q74135Trigger.pos, points.TPos_Q74135Trigger.rot, true, false, 1080)
end

function Quest74135:OnSubFinish7413503(arg1)
    print("OnSubFinish7413503")
end

function Quest74135:OnSubStart7413504(arg1)
    print("OnSubStart7413504")
end

function Quest74135:OnSubFinish7413504(arg1)
    print("OnSubFinish7413504")
end

return Quest74135
