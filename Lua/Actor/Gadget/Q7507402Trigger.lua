require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507402Trigger = class("Q7507402Trigger", GadgetActorProxy)
Q7507402Trigger.defaultAlias = "Q7507402Trigger"
local Q75074ClientConfig = require("Quest/Client/Q75074ClientConfig")

local this
local subIDs = Q75074ClientConfig.SubIDs
local npcs = Q75074ClientConfig.Npcs

function Q7507402Trigger:OnPostDataPrepare()
    print("[MainId: 75074][Trigger: Q7507402Trigger] OnPostDataPrepare")
    this = self
end

function Q7507402Trigger:OnPostComponentPrepare()
    print("[MainId: 75074][Trigger: Q7507402Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75074)
end

function Q7507402Trigger:TriggerIn()
    print("[MainId: 75074][Trigger: Q7507402Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7507402Trigger:PreTriggerIn()
    print("[MainId: 75074][Trigger: Q7507402Trigger] PreTriggerIn")
end

function Q7507402Trigger:LightUpTriggerIn()
    print("[MainId: 75074][Trigger: Q7507402Trigger] LightUpTriggerIn")
end

function Q7507402Trigger:TriggerOut()
    print("[MainId: 75074][Trigger: Q7507402Trigger] TriggerOut")
end

return Q7507402Trigger
