require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77675 = class("Quest77675", QuestActorProxy)
Quest77675.defaultAlias = "Quest77675"
local clientData
local this
local mainID
local actorAlias
local points

function Quest77675:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest77675:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7767501"] = self.OnSubStart7767501}
end

function Quest77675:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7767501"] = self.OnSubFinish7767501}
end

function Quest77675:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77675:Start()
    print("Start")
end

function Quest77675:OnDestroy()
    print("OnDestroy")
end

function Quest77675:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77675:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77675:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77675:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77675Trigger", 77675)
end

function Quest77675:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77675:OnSubStart7767501(arg1)
    print("OnSubStart7767501")
    actorMgr:CreateActorWithPos("Q77675Trigger", "Actor/Gadget/Q77675Trigger", 70900002, 0, points._Q77675TriggerPoint_.pos, points._Q77675TriggerPoint_.rot, true, false, 3, nil, 0, 77675)
end

function Quest77675:OnSubFinish7767501(arg1)
    print("OnSubFinish7767501")
    this:ActorDestroy("Q77675Trigger", 77675)
end

return Quest77675
