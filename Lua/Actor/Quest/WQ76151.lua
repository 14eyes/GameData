require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76151 = class("Quest76151", QuestActorProxy)
Quest76151.defaultAlias = "Quest76151"
local clientData
local this
local mainID
local actorAlias
local points

function Quest76151:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest76151:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7615101"] = self.OnSubStart7615101,
        ["7615102"] = self.OnSubStart7615102,
        ["7615103"] = self.OnSubStart7615103,
        ["7615104"] = self.OnSubStart7615104
    }
end

function Quest76151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7615101"] = self.OnSubFinish7615101,
        ["7615102"] = self.OnSubFinish7615102,
        ["7615103"] = self.OnSubFinish7615103,
        ["7615104"] = self.OnSubFinish7615104
    }
end

function Quest76151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76151:Start()
    print("Start")
end

function Quest76151:OnDestroy()
    print("OnDestroy")
end

function Quest76151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76151:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76151:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7615101Trigger")
    this:ActorDestroy("Q7615102Trigger")
    this:ActorDestroy("Q7615103Trigger")
end

function Quest76151:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76151:OnSubStart7615101(arg1)
    print("OnSubStart7615101")
    actorMgr:CreateActorWithPos("Q7615101Trigger", "Actor/Gadget/Q7615101Trigger", 70900002, 0, points._Q7615101TriggerPoint_.pos, points._Q7615101TriggerPoint_.rot, true, false, 3)
end

function Quest76151:OnSubFinish7615101(arg1)
    print("OnSubFinish7615101")
end

function Quest76151:OnSubStart7615102(arg1)
    print("OnSubStart7615102")
    actorMgr:CreateActorWithPos("Q7615102Trigger", "Actor/Gadget/Q7615102Trigger", 70900002, 0, points._Q7615102TriggerPoint_.pos, points._Q7615102TriggerPoint_.rot, true, false, 3)
end

function Quest76151:OnSubFinish7615102(arg1)
    print("OnSubFinish7615102")
end

function Quest76151:OnSubStart7615103(arg1)
    print("OnSubStart7615103")
    actorMgr:CreateActorWithPos("Q7615103Trigger", "Actor/Gadget/Q7615103Trigger", 70900002, 0, points._Q7615103TriggerPoint_.pos, points._Q7615103TriggerPoint_.rot, true, false, 3)
end

function Quest76151:OnSubFinish7615103(arg1)
    print("OnSubFinish7615103")
end

function Quest76151:OnSubStart7615104(arg1)
    print("OnSubStart7615104")
end

function Quest76151:OnSubFinish7615104(arg1)
    print("OnSubFinish7615104")
end

return Quest76151
