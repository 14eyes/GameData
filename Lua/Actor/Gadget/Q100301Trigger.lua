require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100301Trigger = class("Q100301Trigger", GadgetActorProxy)
Q100301Trigger.defaultAlias = "Q100301Trigger"
local Q1003ClientConfig = require("Quest/Client/Q1003ClientConfig")

function Q100301Trigger:OnPostDataPrepare() end

function Q100301Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100301Trigger:TriggerIn()
    print("IN Q100301Trigger")
    local actor = actorMgr:GetActor(Q1003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100301)
    end

    self:DestroySelf()
end

function Q100301Trigger:TriggerOut() end
return Q100301Trigger
