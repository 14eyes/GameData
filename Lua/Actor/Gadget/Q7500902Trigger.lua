require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500902Trigger = class("Q7500902Trigger", GadgetActorProxy)
Q7500902Trigger.defaultAlias = "Q7500902Trigger"
local Q75009ClientConfig = require("Quest/Client/Q75009ClientConfig")

local this
local subIDs = Q75009ClientConfig.SubIDs
local npcs = Q75009ClientConfig.Npcs
local points = Q75009ClientConfig.Points

function Q7500902Trigger:OnPostDataPrepare()
    print("Q7500902Trigger - OnPostDataPrepare")
    this = self
end

function Q7500902Trigger:OnPostComponentPrepare()
    print("Q7500902Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(11.291685, 19.141201, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75009)
end

function Q7500902Trigger:TriggerIn()
    print("Q7500902Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7500902Trigger:PreTriggerIn()
    print("Q7500902Trigger - PreTriggerIn")
end

function Q7500902Trigger:LightUpTriggerIn()
    print("Q7500902Trigger - LightUpTriggerIn")
end

function Q7500902Trigger:TriggerOut()
    print("Q7500902Trigger - TriggerOut")
end

return Q7500902Trigger
