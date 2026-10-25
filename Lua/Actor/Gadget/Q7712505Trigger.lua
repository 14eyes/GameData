require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712505Trigger = class("Q7712505Trigger", GadgetActorProxy)
Q7712505Trigger.defaultAlias = "Q7712505Trigger"
local Q77125ClientConfig = require("Quest/Client/Q77125ClientConfig")

local this
local subIDs = Q77125ClientConfig.SubIDs
local datas = Q77125ClientConfig.Datas
local npcs = Q77125ClientConfig.Npcs
local points = Q77125ClientConfig.Points

function Q7712505Trigger:OnPostDataPrepare()
    print("Q7712505Trigger - OnPostDataPrepare")
    this = self
end

function Q7712505Trigger:OnPostComponentPrepare()
    print("Q7712505Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77125)
end

function Q7712505Trigger:TriggerIn()
    print("Q7712505Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7712505Trigger:PreTriggerIn()
    print("Q7712505Trigger - PreTriggerIn")
end

function Q7712505Trigger:LightUpTriggerIn()
    print("Q7712505Trigger - LightUpTriggerIn")
end

function Q7712505Trigger:TriggerOut()
    print("Q7712505Trigger - TriggerOut")
end

return Q7712505Trigger
