require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74219 = class("Quest74219", QuestActorProxy)
Quest74219.defaultAlias = "Quest74219"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74219:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74219:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7421901"] = self.OnSubStart7421901,
        ["7421902"] = self.OnSubStart7421902,
        ["7421903"] = self.OnSubStart7421903,
        ["7421904"] = self.OnSubStart7421904,
        ["7421905"] = self.OnSubStart7421905,
        ["7421906"] = self.OnSubStart7421906,
        ["7421907"] = self.OnSubStart7421907
    }
end

function Quest74219:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7421901"] = self.OnSubFinish7421901,
        ["7421902"] = self.OnSubFinish7421902,
        ["7421903"] = self.OnSubFinish7421903,
        ["7421904"] = self.OnSubFinish7421904,
        ["7421905"] = self.OnSubFinish7421905,
        ["7421906"] = self.OnSubFinish7421906,
        ["7421907"] = self.OnSubFinish7421907
    }
end

function Quest74219:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74219:Start()
    print("Start")
end

function Quest74219:OnDestroy()
    print("OnDestroy")
end

function Quest74219:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74219:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74219:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74219:OnSubStart7421901(arg1)
    print("OnSubStart7421901")
    actorMgr:CreateActorWithPos("Q7421901Trigger", "Actor/Gadget/Q7421901Trigger", 70900002, 0, {x = 1210.006, y = 289.32, z = 4397.089}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74219:OnSubFinish7421901(arg1)
    print("OnSubFinish7421901")
end

function Quest74219:OnSubStart7421902(arg1)
    print("OnSubStart7421902")
    actorMgr:CreateActorWithPos("Q7421902Trigger", "Actor/Gadget/Q7421902Trigger", 70900002, 0, {x = 1176.332, y = 287.89, z = 4393.86}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74219:OnSubFinish7421902(arg1)
    print("OnSubFinish7421902")
end

function Quest74219:OnSubStart7421903(arg1)
    print("OnSubStart7421903")
    actorMgr:CreateActorWithPos("Q7421903Trigger", "Actor/Gadget/Q7421903Trigger", 70900002, 0, {x = 1198.026, y = 291.143, z = 4384.226}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74219:OnSubFinish7421903(arg1)
    print("OnSubFinish7421903")
end

function Quest74219:OnSubStart7421904(arg1)
    print("OnSubStart7421904")
    actorMgr:CreateActorWithPos("Q7421904Trigger", "Actor/Gadget/Q7421904Trigger", 70900002, 0, {x = 1212.75, y = 297.309, z = 4347.026}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74219:OnSubFinish7421904(arg1)
    print("OnSubFinish7421904")
end

function Quest74219:OnSubStart7421905(arg1)
    print("OnSubStart7421905")
    actorMgr:CreateActorWithPos("Q7421905Trigger", "Actor/Gadget/Q7421905Trigger", 70900002, 0, {x = 1192.739, y = 296.836, z = 4325.898}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74219:OnSubFinish7421905(arg1)
    print("OnSubFinish7421905")
end

function Quest74219:OnSubStart7421906(arg1)
    print("OnSubStart7421906")
end

function Quest74219:OnSubFinish7421906(arg1)
    print("OnSubFinish7421906")
    actorMgr:CreateActorWithPos("Q7421906Trigger", "Actor/Gadget/Q7421906Trigger", 70900002, 0, {x = 1131.501, y = 280.118, z = 4355.799}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74219:OnSubStart7421907(arg1)
    print("OnSubStart7421907")
end

function Quest74219:OnSubFinish7421907(arg1)
    print("OnSubFinish7421907")
end

return Quest74219
