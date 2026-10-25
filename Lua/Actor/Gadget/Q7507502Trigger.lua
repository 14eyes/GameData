require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507502Trigger = class("Q7507502Trigger", GadgetActorProxy)
Q7507502Trigger.defaultAlias = "Q7507502Trigger"
local Q75075ClientConfig = require("Quest/Client/Q75075ClientConfig")

local this
local subIDs = Q75075ClientConfig.SubIDs
local npcs = Q75075ClientConfig.Npcs

function Q7507502Trigger:OnPostDataPrepare()
    print("[MainId: 75075][Trigger: Q7507502Trigger] OnPostDataPrepare")
    this = self
end

function Q7507502Trigger:OnPostComponentPrepare()
    print("[MainId: 75075][Trigger: Q7507502Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75075)
end

function Q7507502Trigger:TriggerIn()
    print("[MainId: 75075][Trigger: Q7507502Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7507502Trigger:PreTriggerIn()
    print("[MainId: 75075][Trigger: Q7507502Trigger] PreTriggerIn")
end

function Q7507502Trigger:LightUpTriggerIn()
    print("[MainId: 75075][Trigger: Q7507502Trigger] LightUpTriggerIn")
end

function Q7507502Trigger:TriggerOut()
    print("[MainId: 75075][Trigger: Q7507502Trigger] TriggerOut")
end

return Q7507502Trigger
