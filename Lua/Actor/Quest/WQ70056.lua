require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70056 = class("Quest70056", QuestActorProxy)
Quest70056.defaultAlias = "Quest70056"
local clientData
local this
local mainID
local actorAlias
local points

function Quest70056:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest70056:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7005601"] = self.OnSubStart7005601,
        ["7005602"] = self.OnSubStart7005602,
        ["7005603"] = self.OnSubStart7005603,
        ["7005604"] = self.OnSubStart7005604,
        ["7005605"] = self.OnSubStart7005605,
        ["7005606"] = self.OnSubStart7005606,
        ["7005607"] = self.OnSubStart7005607,
        ["7005608"] = self.OnSubStart7005608,
        ["7005609"] = self.OnSubStart7005609
    }
end

function Quest70056:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7005601"] = self.OnSubFinish7005601,
        ["7005602"] = self.OnSubFinish7005602,
        ["7005603"] = self.OnSubFinish7005603,
        ["7005604"] = self.OnSubFinish7005604,
        ["7005605"] = self.OnSubFinish7005605,
        ["7005606"] = self.OnSubFinish7005606,
        ["7005607"] = self.OnSubFinish7005607,
        ["7005608"] = self.OnSubFinish7005608,
        ["7005609"] = self.OnSubFinish7005609
    }
end

function Quest70056:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70056:Start()
    print("Start")
end

function Quest70056:OnDestroy()
    print("OnDestroy")
end

function Quest70056:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70056:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70056:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70056:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7005603Trigger")
    this:ActorDestroy("Q7005607Trigger")
    this:ActorDestroy("Q7005609Trigger")
    this:ActorDestroy("Q7005609Trigger_1")
    this:ActorDestroy("Q7005609Trigger_2")
    this:ActorDestroy("Q7005609Trigger_3")
end

function Quest70056:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70056:OnSubStart7005601(arg1)
    print("OnSubStart7005601")
end

function Quest70056:OnSubFinish7005601(arg1)
    print("OnSubFinish7005601")
end

function Quest70056:OnSubStart7005602(arg1)
    print("OnSubStart7005602")
end

function Quest70056:OnSubFinish7005602(arg1)
    print("OnSubFinish7005602")
end

function Quest70056:OnSubStart7005603(arg1)
    print("OnSubStart7005603")
    actorMgr:CreateActorWithPos("Q7005603Trigger", "Actor/Gadget/Q7005603Trigger", 70900002, 0, points._Q7005603TriggerPoint_.pos, points._Q7005603TriggerPoint_.rot, true, false, 3)
end

function Quest70056:OnSubFinish7005603(arg1)
    print("OnSubFinish7005603")
end

function Quest70056:OnSubStart7005604(arg1)
    print("OnSubStart7005604")
end

function Quest70056:OnSubFinish7005604(arg1)
    print("OnSubFinish7005604")
end

function Quest70056:OnSubStart7005605(arg1)
    print("OnSubStart7005605")
end

function Quest70056:OnSubFinish7005605(arg1)
    print("OnSubFinish7005605")
end

function Quest70056:OnSubStart7005606(arg1)
    print("OnSubStart7005606")
end

function Quest70056:OnSubFinish7005606(arg1)
    print("OnSubFinish7005606")
end

function Quest70056:OnSubStart7005607(arg1)
    print("OnSubStart7005607")
    actorMgr:CreateActorWithPos("Q7005607Trigger", "Actor/Gadget/Q7005607Trigger", 70900002, 0, points._Q7005607TriggerPoint_.pos, points._Q7005607TriggerPoint_.rot, true, false, 3)
end

function Quest70056:OnSubFinish7005607(arg1)
    print("OnSubFinish7005607")
end

function Quest70056:OnSubStart7005608(arg1)
    print("OnSubStart7005608")
end

function Quest70056:OnSubFinish7005608(arg1)
    print("OnSubFinish7005608")
end

function Quest70056:OnSubStart7005609(arg1)
    print("OnSubStart7005609")
    actorMgr:CreateActorWithPos("Q7005609Trigger_3", "Actor/Gadget/Q7005609Trigger_3", 70900002, 0, points.Q7005609Trigger_1.pos, points.Q7005609Trigger_1.rot, true, false, 3)
end

function Quest70056:OnSubFinish7005609(arg1)
    print("OnSubFinish7005609")
end

return Quest70056
