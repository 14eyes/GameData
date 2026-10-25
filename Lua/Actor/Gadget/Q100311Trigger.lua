require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100311Trigger = class("Q100311Trigger", GadgetActorProxy)
Q100311Trigger.defaultAlias = "Q100311Trigger"
local Q1003ClientConfig = require("Quest/Client/Q1003ClientConfig")

function Q100311Trigger:OnPostDataPrepare() end

function Q100311Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100311Trigger:TriggerIn()
    print("IN Q100311Trigger")
    local actor = actorMgr:GetActor(Q1003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100311)
    end

    self:DestroySelf()
end

function Q100311Trigger:TriggerOut() end
return Q100311Trigger
