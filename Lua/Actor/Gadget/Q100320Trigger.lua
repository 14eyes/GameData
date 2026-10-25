require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100320Trigger = class("Q100320Trigger", GadgetActorProxy)
Q100320Trigger.defaultAlias = "Q100320Trigger"
local Q1003ClientConfig = require("Quest/Client/Q1003ClientConfig")

function Q100320Trigger:OnPostDataPrepare() end

function Q100320Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(47, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100320Trigger:TriggerIn()
    print("IN Q100320Trigger")
    local actor = actorMgr:GetActor(Q1003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100320)
    end

    self:DestroySelf()
end

function Q100320Trigger:TriggerOut() end
return Q100320Trigger
