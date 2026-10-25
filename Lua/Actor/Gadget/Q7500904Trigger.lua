require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500904Trigger = class("Q7500904Trigger", GadgetActorProxy)
Q7500904Trigger.defaultAlias = "Q7500904Trigger"
local Q75009ClientConfig = require("Quest/Client/Q75009ClientConfig")

local this
local subIDs = Q75009ClientConfig.SubIDs
local npcs = Q75009ClientConfig.Npcs

function Q7500904Trigger:OnPostDataPrepare()
    print("[MainId: 75009][Trigger: Q7500904Trigger] OnPostDataPrepare")
    this = self
end

function Q7500904Trigger:OnPostComponentPrepare()
    print("[MainId: 75009][Trigger: Q7500904Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75009)
end

function Q7500904Trigger:TriggerIn()
    print("[MainId: 75009][Trigger: Q7500904Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7500904Trigger:PreTriggerIn()
    print("[MainId: 75009][Trigger: Q7500904Trigger] PreTriggerIn")
end

function Q7500904Trigger:LightUpTriggerIn()
    print("[MainId: 75009][Trigger: Q7500904Trigger] LightUpTriggerIn")
end

function Q7500904Trigger:TriggerOut()
    print("[MainId: 75009][Trigger: Q7500904Trigger] TriggerOut")
end

return Q7500904Trigger
