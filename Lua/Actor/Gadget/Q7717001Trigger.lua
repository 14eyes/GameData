require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7717001Trigger = class("Q7717001Trigger", GadgetActorProxy)
Q7717001Trigger.defaultAlias = "Q7717001Trigger"
local Q77170ClientConfig = require("Quest/Client/Q77170ClientConfig")

local this
local subIDs = Q77170ClientConfig.SubIDs
local npcs = Q77170ClientConfig.Npcs

function Q7717001Trigger:OnPostDataPrepare()
    print("Q7717001Trigger - OnPostDataPrepare")
    this = self
end

function Q7717001Trigger:OnPostComponentPrepare()
    print("Q7717001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77170)
end

function Q7717001Trigger:TriggerIn()
    print("Q7717001Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7717001Trigger:PreTriggerIn()
    print("Q7717001Trigger - PreTriggerIn")
end

function Q7717001Trigger:LightUpTriggerIn()
    print("Q7717001Trigger - LightUpTriggerIn")
end

function Q7717001Trigger:TriggerOut()
    print("Q7717001Trigger - TriggerOut")
end

return Q7717001Trigger
