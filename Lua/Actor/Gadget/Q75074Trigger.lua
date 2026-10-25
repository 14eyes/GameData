require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75074Trigger = class("Q75074Trigger", GadgetActorProxy)
Q75074Trigger.defaultAlias = "Q75074Trigger"
local Q75074ClientConfig = require("Quest/Client/Q75074ClientConfig")

local this
local subIDs = Q75074ClientConfig.SubIDs
local npcs = Q75074ClientConfig.Npcs

function Q75074Trigger:OnPostDataPrepare()
    print("[MainId: 75074][Trigger: Q75074Trigger] OnPostDataPrepare")
    this = self
end

function Q75074Trigger:OnPostComponentPrepare()
    print("[MainId: 75074][Trigger: Q75074Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75074)
end

function Q75074Trigger:TriggerIn()
    print("[MainId: 75074][Trigger: Q75074Trigger] TriggerIn")
    this:DestroySelf()
end

function Q75074Trigger:PreTriggerIn()
    print("[MainId: 75074][Trigger: Q75074Trigger] PreTriggerIn")
end

function Q75074Trigger:LightUpTriggerIn()
    print("[MainId: 75074][Trigger: Q75074Trigger] LightUpTriggerIn")
end

function Q75074Trigger:TriggerOut()
    print("[MainId: 75074][Trigger: Q75074Trigger] TriggerOut")
end

return Q75074Trigger
