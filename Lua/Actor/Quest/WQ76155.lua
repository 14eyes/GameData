require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76155 = class("Quest76155", QuestActorProxy)
Quest76155.defaultAlias = "Quest76155"
local clientData
local this
local mainID
local actorAlias
local points

function Quest76155:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest76155:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7615501"] = self.OnSubStart7615501,
        ["7615502"] = self.OnSubStart7615502,
        ["7615503"] = self.OnSubStart7615503,
        ["7615504"] = self.OnSubStart7615504,
        ["7615505"] = self.OnSubStart7615505,
        ["7615506"] = self.OnSubStart7615506,
        ["7615507"] = self.OnSubStart7615507,
        ["7615508"] = self.OnSubStart7615508
    }
end

function Quest76155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7615501"] = self.OnSubFinish7615501,
        ["7615502"] = self.OnSubFinish7615502,
        ["7615503"] = self.OnSubFinish7615503,
        ["7615504"] = self.OnSubFinish7615504,
        ["7615505"] = self.OnSubFinish7615505,
        ["7615506"] = self.OnSubFinish7615506,
        ["7615507"] = self.OnSubFinish7615507,
        ["7615508"] = self.OnSubFinish7615508
    }
end

function Quest76155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7615501"] = self.OnSubFailed7615501,
        ["7615502"] = self.OnSubFailed7615502,
        ["7615503"] = self.OnSubFailed7615503,
        ["7615505"] = self.OnSubFailed7615505,
        ["7615506"] = self.OnSubFailed7615506,
        ["7615507"] = self.OnSubFailed7615507,
        ["7615508"] = self.OnSubFailed7615508
    }
end

function Quest76155:Start()
    print("Start")
end

function Quest76155:OnDestroy()
    print("OnDestroy")
end

function Quest76155:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76155:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76155:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76155:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7615501Trigger")
    this:ActorDestroy("Q7615502Trigger")
    this:ActorDestroy("Q7615503Trigger")
    this:ActorDestroy("Q7615505Trigger")
    this:ActorDestroy("Q7615506Trigger")
    this:ActorDestroy("Q7615507Trigger")
    this:ActorDestroy("Q7615508Trigger")
end

function Quest76155:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76155:OnSubStart7615501(arg1)
    print("OnSubStart7615501")
    actorMgr:CreateActorWithPos("Q7615501Trigger", "Actor/Gadget/Q7615501Trigger", 70900002, 0, points._Q7615501TriggerPoint_.pos, points._Q7615501TriggerPoint_.rot, true, false, 3)
end

function Quest76155:OnSubFinish7615501(arg1)
    print("OnSubFinish7615501")
end

function Quest76155:OnSubFailed7615501(arg1)
    print("OnSubFailed7615501")
    this:ActorDestroy("Q7615501Trigger")
end

function Quest76155:OnSubStart7615502(arg1)
    print("OnSubStart7615502")
    actorMgr:CreateActorWithPos("Q7615502Trigger", "Actor/Gadget/Q7615502Trigger", 70900002, 0, points._Q7615502TriggerPoint_.pos, points._Q7615502TriggerPoint_.rot, true, false, 3)
end

function Quest76155:OnSubFinish7615502(arg1)
    print("OnSubFinish7615502")
end

function Quest76155:OnSubFailed7615502(arg1)
    print("OnSubFailed7615502")
    this:ActorDestroy("Q7615502Trigger")
end

function Quest76155:OnSubStart7615503(arg1)
    print("OnSubStart7615503")
    actorMgr:CreateActorWithPos("Q7615503Trigger", "Actor/Gadget/Q7615503Trigger", 70900002, 0, points._Q7615503TriggerPoint_.pos, points._Q7615503TriggerPoint_.rot, true, false, 3)
end

function Quest76155:OnSubFinish7615503(arg1)
    print("OnSubFinish7615503")
end

function Quest76155:OnSubFailed7615503(arg1)
    print("OnSubFailed7615503")
    this:ActorDestroy("Q7615503Trigger")
end

function Quest76155:OnSubStart7615504(arg1)
    print("OnSubStart7615504")
end

function Quest76155:OnSubFinish7615504(arg1)
    print("OnSubFinish7615504")
end

function Quest76155:OnSubStart7615505(arg1)
    print("OnSubStart7615505")
    actorMgr:CreateActorWithPos("Q7615505Trigger", "Actor/Gadget/Q7615505Trigger", 70900002, 0, points._Q7615505TriggerPoint_.pos, points._Q7615505TriggerPoint_.rot, true, false, 3)
end

function Quest76155:OnSubFinish7615505(arg1)
    print("OnSubFinish7615505")
end

function Quest76155:OnSubFailed7615505(arg1)
    print("OnSubFailed7615505")
    this:ActorDestroy("Q7615505Trigger")
end

function Quest76155:OnSubStart7615506(arg1)
    print("OnSubStart7615506")
    actorMgr:CreateActorWithPos("Q7615506Trigger", "Actor/Gadget/Q7615506Trigger", 70900002, 0, points._Q7615506TriggerPoint_.pos, points._Q7615506TriggerPoint_.rot, true, false, 3)
end

function Quest76155:OnSubFinish7615506(arg1)
    print("OnSubFinish7615506")
end

function Quest76155:OnSubFailed7615506(arg1)
    print("OnSubFailed7615506")
    this:ActorDestroy("Q7615506Trigger")
end

function Quest76155:OnSubStart7615507(arg1)
    print("OnSubStart7615507")
    actorMgr:CreateActorWithPos("Q7615507Trigger", "Actor/Gadget/Q7615507Trigger", 70900002, 0, points._Q7615507TriggerPoint_.pos, points._Q7615507TriggerPoint_.rot, true, false, 3)
end

function Quest76155:OnSubFinish7615507(arg1)
    print("OnSubFinish7615507")
end

function Quest76155:OnSubFailed7615507(arg1)
    print("OnSubFailed7615507")
    this:ActorDestroy("Q7615507Trigger")
end

function Quest76155:OnSubStart7615508(arg1)
    print("OnSubStart7615508")
    actorMgr:CreateActorWithPos("Q7615508Trigger", "Actor/Gadget/Q7615508Trigger", 70900002, 0, points._Q7615508TriggerPoint_.pos, points._Q7615508TriggerPoint_.rot, true, false, 3)
end

function Quest76155:OnSubFinish7615508(arg1)
    print("OnSubFinish7615508")
end

function Quest76155:OnSubFailed7615508(arg1)
    print("OnSubFailed7615508")
    this:ActorDestroy("Q7615508Trigger")
end

return Quest76155
