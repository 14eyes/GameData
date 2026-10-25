require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7008902Trigger = class("Q7008902Trigger", GadgetActorProxy)
Q7008902Trigger.defaultAlias = "Q7008902Trigger"
local Q70089ClientConfig = require("Quest/Client/Q70089ClientConfig")

local this
local subIDs = Q70089ClientConfig.SubIDs
local points = Q70089ClientConfig.Points

function Q7008902Trigger:OnPostDataPrepare()
    print("Q7008902Trigger - OnPostDataPrepare")
    this = self
end

function Q7008902Trigger:OnPostComponentPrepare()
    print("Q7008902Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70089)
end

function Q7008902Trigger:TriggerIn()
    print("Q7008902Trigger - TriggerIn")
    actorMgr:GetActor("70089"):RequestInteractionForceAlias("Npc1292", nil, true)
    this:DestroySelf()
end

function Q7008902Trigger:PreTriggerIn()
    print("Q7008902Trigger - PreTriggerIn")
end

function Q7008902Trigger:LightUpTriggerIn()
    print("Q7008902Trigger - LightUpTriggerIn")
end

function Q7008902Trigger:TriggerOut()
    print("Q7008902Trigger - TriggerOut")
end

return Q7008902Trigger
