require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711504Trigger = class("Q7711504Trigger", GadgetActorProxy)
Q7711504Trigger.defaultAlias = "Q7711504Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711504Trigger:OnPostDataPrepare()
    print("Q7711504Trigger - OnPostDataPrepare")
    this = self
end

function Q7711504Trigger:OnPostComponentPrepare()
    print("Q7711504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711504Trigger:TriggerIn()
    print("Q7711504Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7711504Trigger:PreTriggerIn()
    print("Q7711504Trigger - PreTriggerIn")
end

function Q7711504Trigger:LightUpTriggerIn()
    print("Q7711504Trigger - LightUpTriggerIn")
end

function Q7711504Trigger:TriggerOut()
    print("Q7711504Trigger - TriggerOut")
end

return Q7711504Trigger
